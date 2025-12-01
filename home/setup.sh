#!/bin/bash

# リポジトリのクローン
mkdir -p ~/colcon_ws/src && cd ~/colcon_ws/src
git clone https://github.com/HappyYusuke/ros2_tao_pointpillars.git
git clone https://github.com/HappyYusuke/harrp.git
git clone https://github.com/Livox-SDK/livox_ros_driver2.git

# 依存関係のパッケージをダウンロード
cd ~/colcon_ws
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src

# ros2_tao_pointpillarsの学習済みモデルをダウンロード
wget --content-disposition 'https://api.ngc.nvidia.com/v2/models/org/nvidia/team/tao/pointpillarnet/deployable_v1.1/files?redirect=true&path=pointpillars_deployable.onnx' -O ~/colcon_ws/src/ros2_tao_pointpillars/include/pointpillars_deployable.onnx

# ビルド
cd src/livox_ros_driver2
./build.sh ROS2
source ~/colcon_ws/install/setup.bash

# ホームディレクトリに戻る
cd ~/
