#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/antronyx/catkin_ws/src/nao_robot/nao_apps"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/antronyx/catkin_ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/antronyx/catkin_ws/install/lib/python3/dist-packages:/home/antronyx/catkin_ws/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/antronyx/catkin_ws/build" \
    "/usr/bin/python3" \
    "/home/antronyx/catkin_ws/src/nao_robot/nao_apps/setup.py" \
     \
    build --build-base "/home/antronyx/catkin_ws/build/nao_robot/nao_apps" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/antronyx/catkin_ws/install" --install-scripts="/home/antronyx/catkin_ws/install/bin"
