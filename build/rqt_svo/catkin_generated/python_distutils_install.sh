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

echo_and_run cd "/home/huanhuan/SchurVINS-ws/src/SchurVINS/rqt_svo"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/huanhuan/SchurVINS-ws/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/huanhuan/SchurVINS-ws/install/lib/python3/dist-packages:/home/huanhuan/SchurVINS-ws/build/rqt_svo/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/huanhuan/SchurVINS-ws/build/rqt_svo" \
    "/usr/bin/python3" \
    "/home/huanhuan/SchurVINS-ws/src/SchurVINS/rqt_svo/setup.py" \
     \
    build --build-base "/home/huanhuan/SchurVINS-ws/build/rqt_svo" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/huanhuan/SchurVINS-ws/install" --install-scripts="/home/huanhuan/SchurVINS-ws/install/bin"
