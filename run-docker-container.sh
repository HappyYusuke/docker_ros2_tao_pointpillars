#!/bin/bash
xhost +
DOCKER_IMAGE_NAME=nazawa28/ros2_tao_pointpillars:latest
DOCKER_CONTAINER_NAME=ros2_tao_pointpillars:latest

#GPU
if type nvidia-smi > /dev/null 2>&1 ; then
    #NVIDIAのとき
    hardware_acceleration="\
        --env NVIDIA_VISIBLE_DEVICES=all \
        --env NVIDIA_DRIVER_CAPABILITIES=all \
        --gpus all"
elif [ -e "/dev/dri" ]; then
    #Intelのとき
    hardware_acceleration="--device=/dev/dri:/dev/dri"
# elif AMDのとき; then #これを見たUbuntuかつAMD環境ユーザーが条件を記入するシステム
#     #AMDのとき
#     hardware_acceleration="\
#         --device=/dev/dri \
#         --group-add video"
else
    #その他のとき
    hardware_acceleration="\
    	--device=/dev/ttyUSB0:/dev/ttyUSB0 \
    	--device=/dev/video2:/dev/video2"
fi

echo "hardware_acc => $hardware_acceleration"

if [ ! `docker ps -f name=$DOCKER_CONTAINER_NAME -q` ]; then
  docker run --name $DOCKER_CONTAINER_NAME -it --net host -d \
    -v ${PWD}/home:/home/${USER} \
    -v ${PWD}/docker:/docker \
    -v /etc/group:/etc/group:ro \
    -v /etc/passwd:/etc/passwd:ro \
    -v /etc/shadow:/etc/shadow:ro \
    -v /etc/sudoers.d:/etc/sudoers.d:ro \
    -v /etc/sudoers:/etc/sudoers:ro \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v ${HOME}/.Xauthority:/home/$USER/.Xauthority:rw \
    --env QT_X11_NO_MITSHM=1 \
    $hardware_acceleration \
    --privileged \
    --rm $DOCKER_IMAGE_NAME
fi

docker exec -u $(id -u):$(id -g) -w $HOME -e DISPLAY -it $DOCKER_CONTAINER_NAME bash
