ls
cd colcon_ws/src/hello/
vim setup.py 
vim hello_node.py
cd ../..
colcon build
cd src/hello/
vim setup.py 
cd ../
la
ls
sudo hello/
ls
ros2 pkg create --build-type ament_python hello
ls
cd hello/
ls
colcon build
cd ../../
colcon build
ls
source /opt/ros/foxy/setup.bash
colcon build
la
sudo rm build/
colcon cleen
colcon clean
sudo rm -r build/
ls
la
sudo rm -r install/
sudo rm -r log/
colcon build
la
cd
sudo rm -r colcon_ws/
mkdir -p colcon_ws/src
cd colcon_ws/
colcon build
cd src/
ros2 pkg create --build-type ament_python --node-name hello_node hello
cd ../
source install/setup.bash
ros2 run hello  hello_node
cd src/hello/hello/
vim hello_node.py 
ros2 run hello  hello_node
colcon build
exit
ros2 run hello  hello_node
cd colcon_ws/
colcon build
ros2 run hello  hello_node
ros2 run hello hello_node
source install/setup.bash
ros2 run hello hello_node
exit
ls
cd colcon_ws/src/
ls
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
exit
cd colcon_ws/src/
git clone -b foxy-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
cd ../
colcon build --symlink-install
exit
ros2 run rviz2 rviz2 -d $(ros2 pkg prefix nav2_bringup)/share/nav2_bringup/rviz/nav2_default_view.rviz
rviz
rviz2
ros2 launch turtlebot3_cartographer cartographer.launch.py use_sim_time:=True
rviz2
ros2 launch nav2_bringup bringup_launch.py use_sim_time:=True map:=/opt/ros/foxy/share/nav2_bringup/maps/turtlebot3_world.yaml
ros2 launch turtlebot3_gazebo empty_world.launch.py
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
ls
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
ls
ros2 launch turtlebot3_gazebo empty_world.launch.py
gazebo
ros2 launch turtlebot3_gazebo empty_world.launch.py
terminator 
exit
ls
ros2 launch nav2_bringup tb3_simulation_launch.py 
ls
colcon_cd nav2_*
mlocate
locate nav2_bringup
sudo apt install mlocate
exit
ls
terminator 
exti
exit
mlocate nav2_bringup
sudo mlocate nav2_bringup
exit
ros2 launch nav2_bringup tb3_simulation_launch.py
gazebo
ros2 launch nav2_bringup tb3_simulation_launch.py
exit
terminator 
exit
ls
cd colcon_ws/src/
ls
git clone git@github.com:porizou/nav2_send_goal_sample.git
git clone https://github.com/porizou/nav2_send_goal_sample.git
ls
cd ../
colcon build/
colcon build
ros2 run nav2_send_goal nav2_send_goal
b
cd
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
exit
ros2 run nav2_send_goal nav2_send_goal
ls
cd colcon_ws/src/nav2_send_goal_sample/src/
ls
vim nav2_send_goal.cpp 
cd ../../../
colcon build
ros2 run nav2_send_goal nav2_send_goal
vim src/nav2_send_goal_sample/src/nav2_send_goal.cpp 
ros2 run nav2_send_goal nav2_send_goal
colcon build
ros2 run nav2_send_goal nav2_send_goal
vim src/nav2_send_goal_sample/src/nav2_send_goal.cpp 
ros2 topic info /plan
ros2 topic info plan
ros2 topic echo plan
ros2 topic info plan
ros2 topic echo plan
ros2 topic list
ros2 topic echo plan
ros2 topic info plan
ros2 topic echo plan
ros2 topic type plan
ros2 topic info plan
ros2 topic list
ros2 topic info scan
ros2 topic info /scan
ros2 topic info /plan
rqt
rqt_graph 
ros2 node info /planner_server
ros2 topic list
ros2 topic echo /odom 
exit
ros2 launch turtlebot3_navigation2 navigation2.launch.py
exit
ros2 launch nav2_bringup tb3_simulation_launch.py
terminator 
exit
sudo apt update
ls
sudo cat /etc/sudoers
exit
ros2 topic echo /odom
rviz2
xeyes
ls
terminator 
exit
vim .bashrc 
ros2 launch turtlebot3_gazebo turtlebot3_house.launch.py
ros2 run teleop_twist_keyboard teleop_twist_keyboard
ls
ros2 launch turtlebot3_navigation2 navigation2.launch.py
ls
cd colcon_ws/src/
ls
ros2 launch turtlebot3_gazebo turtlebot3_world.launch.py
terminator 
exit
ls
terminator 
exit
ls
cd colcon_ws/
ls
colcon build
ls
cd sr
cd src/
ls
cd docker-ros2/
ls
cd ../
ls
rm -rf docker-ros2/
ls
teminator
terminator
ls
cd colcon_ws/ls
cd colcon_ws/
ls
cd src/
ls
cd ../
ls
colcon build
ls
cd src/
ls
cd
ls
terminator
ls
ls /dev/ttyUSB0 
cd colcon_ws/src/
ls
cd Professional_Experiment_2024/
ls
cd DynamixelSDK/
ls
cd dynamixel_sdk
ls
cd src/
ls
cd ../
ls
cd ../
ls
python3 open_manipulator_x.py 
cd ../
ls
cd DynamixelSDK/
ls
cd dynamixel_sdk_custom_interfaces/
ls
cd msg/
ls
cd ../
ls
cd
cd colcon_ws/src/
ls
cd Professional_Experiment_2024/
ls
cd DynamixelSDK/
ls
python3
ls
cd dynamixel_sdk_custom_interfaces/
ls
cd msg/
ls
python3
ls
source .bashrc 
vim .bashrc 
source colcon_ws/install/setup.bash 
ros2 run dynamixel_sdk_examples read_write_trapezoidal_node 
terminator
ls
cd colcon_ws/
ls
cd /opt/ros/
ls
cd ../
ls
cd
ls
python3
nvidia-smi 
nvcc -V
python3
ls
terminator 
ls
cd ReID3D/
ls
cd reidnet/
cd ../
ls
bash run.sh 
cat run.sh 
vim run.sh 
bash run.sh 
cd database/
ls
cd LReID_final/
ls
mkdir bbox_train
cd ../../
ls
bash run.sh 
cat run.sh 
bash run.sh 
ls
bash run.sh 
cd database/
ls
cd LReID_final/
ls
ls
cd database/
ls
cd LReID_final/
ls
rm -r bbox_train/
cd ../
ls
vim create_reid_database.py 
ls
cd ReID3D/
ls
cd database/
ls
cd LReID_final/
ls
cd ../../
ls
bash run.sh 
cd ~/ReID3D/database/LReID_final/bbox_train
ls
cd 
cd ReID3D/
ls
bash run.sh 
terminator 
ls
cd ReID3D/
ls
cd database/
ls
cd LReID_final/
ls
cd ../
ls
cd ../
ls
cat run.sh 
ls
cd database/
ls
cd LReID_final/
ls
cd outputs/
ls
cd ../../
s
ls
cd LReID_final/
ls
cd ../
ls
cd ../
ls
bash run.sh 
pwd
ls
vim run.sh 
bash run.sh 
vim run.sh 
bash run.sh 
ls
cd database/
ls
cd LReID_final/
ls
cd outputs/
ls
cd ../
ls
cd reidnet/
ls
cat train.sh 
bash train.sh 
pip install pandas
bash train.sh 
pip install plyfile
bash train.sh 
../database/LReID_final/outputs/
ls ../database/LReID_final/outputs/
cd ../
cd database/
pwd
bash train.sh 
ls
bash train.sh 
cd LReID_final/
cd outputs/
ls
pwd
ls
cd
cd ReID3D/database/
ls
cd ../
ls
cd reidnet/
ls
bash train.sh 
python3
nvidia-smi 
cd
vim .bashrc 
source .bashrc 
cd ReID3D/reidnet/
ls
bash train.sh 
cd
cd /usr/local/
ls
cd ReID3D/database/
ls
vim create_reid_database.py 
cd ../
ls
cd reidnet/
ls
cat train.sh 
vim train.sh 
cat train.sh 
vim train.sh 
cat train.sh 
vim train.sh 
cat train.sh 
vim train.sh 
ls
cd ReID3D/
ls
bash run.sh 
cd database/
ls
cd LReID_final/
ls
cd bbox_train/
ls
cd
cd ReID3D/
temi
cd
terminator 
ls
wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-ubuntu2004.pin
sudo apt install wget
apt install wget
mkdir /etc/apt/preferences.d/cuda-repository-pin-600
sudo mkdir /etc/apt/preferences.d/cuda-repository-pin-600
ls
bash train.sh 
python3
ls
cd model/
ls
vim network.py 
cd ../
ls
cd model/
ls
vim network.py 
cd
cd ReID3D/
ls
cd reidnet/
ls
cd ../
kls
cd reidnet/
ls
bash train.sh 
vim main.py 
python3
nvidia-smi 
nvcc -V
ls
cd ReID3D/
ls
cd reidnet/
ls
bash train.sh 
python
python3
ls
cat train.sh 
ls
terminator 
ls
cd ReID3D/
ls
cd reidnet/
ls
bash train.sh 
ls
cd ReID3D/
ls
cd reidnet/
ls
bash train.sh 
nvidia-smi
echo $NVIDIA_VISIBLE_DEVICES
ls
cd
ls
vim train.sh 
bash train.sh 
nvidia-smi 
bash train.sh 
python -c "import torch; print(f'PyTorch version: {torch.__version__}'); print(f'CUDA version built with PyTorch: {torch.version.cuda}')"
python3 -c "import torch; print(f'PyTorch version: {torch.__version__}'); print(f'CUDA version built with PyTorch: {torch.version.cuda}')"
ls
vim tmp.py
python3 tmp.py 
ls
cd ReID3D/
ls
cd reidnet/
ls
cat train.sh 
vim train.sh 
bash train.sh 
vim train.sh 
bash train.sh 
vim train.sh 
bash train.sh 
vim train.sh 
bash train.sh 
vim train.sh 
bash train.sh 
vim train.sh 
terminator 
ls
vim reid3d_predict.py
python3
cd ReID3D/
ls
python3
ls
mv ../reid3d_predict.py .
ls
python3
ls
cd reidnet/
vim reid3d_predict.py 
python3 reid3d_predict.py 
vim reid3d_predict.py 
cd ../
cd database/
ls
vim create_reid_database.py 
cd ReID3D/
ls
cd reidnet/
ls
cd model/
ls
cat __init__.py 
ls
cd ../
ls
cd ../
cat ./reidnet/model/
cat ./reidnet/model/__init__.py 
ls
mv reid3d_predict.py reidnet/
cd reidnet/
ls
cd model/
ls
cd ../../
ls
cd database/
ls
cdL
cd LReID_final/
ls
cd outputs/
ls
cd ../
cd info/
ls
cd ../
ls
cd ../
ls
cd ../
ls
cd reidnet/
ls
cd log/
ls
pwd
cd ../../
ls
cd reine
cd reidnet/
ls
python3 reid3d_predict.py 
ls
cd ../
ls
cd database/
la
ls
cd LReID_final/
ls
cd ../
ls
cd ../
ls
vim run.sh 
bash run.sh 
ls
cd reid
cd reidnet/
ls
cat train.sh 
cd ../
ls
cd database/LReID_final/outputs/
ls
cat test_path.txt 
ls
cd
git clone https://github.com/ncarkaci/binary-to-image.git
ls
cd binary-to-image/
ls
cd input_dir/
ls
cat putty.exe 
65;6003;1cls
cd ../
ls
cd ../
ls
cp ReID3D/database/LReID_final/bbox_test/ binary-to-image/
cp -r ReID3D/database/LReID_final/bbox_test/ binary-to-image/
cdbi
cd binary-to-image/
ls
python binary2image.py bbox_test
python3 binary2image.py bbox_test
ls
cd bbox_test/
ls
cd ../
ls
cat binary2image.py 
vim binary2image.py 
ls
cat .bashrc 
source /opt/ros/foxy/setup.bash 
ros2 run demo_nodes_py listener
cd colcon_ws/src/
ls
cd livox_ros2_driver/
ls
cd livox_ros2_driver/
ls
cd config/
ls
vim livox_lidar_config.json 
cd ../
ls
cd launch/
ls
vim livox_lidar_rviz_launch.py 
cd ../
cd config/
grep -r "192" .
ls
vim livox_lidar_config.json 
cd 
cd colcon_ws/
source install/setup.bash 
ros2 launch livox_ros2_driver livox_lidar_rviz_launch.py 
ls
cd src/
ls
cd livox_ros2_driver/
ls
cd livox_ros2_driver/
ls
cd config/
ls
vim livox_lidar_config.json 
vim livox_hub_config.json 
vim livox_hub.rviz 
cd ../
ls
cd launch/
ls
vim livox_hub_launch.py 
cd ../../
ls
cd ../
rm -rf livox_ros2_driver/
git clone ping: connect: Network is unreachable
git clone https://github.com/Livox-SDK/livox_ros_driver2.git
cd ../
ls
rm -rf build/ install/ log/
colcon build --symlink-install
ls
rm -rf build/ install/ log/
ls
cd src/
ls
cd livox_ros_driver2/
ls
source /opt/ros/foxy/setup.sh 
./build.sh 
./build.sh ROS2
cd ../
ls
cd ../
ls
rm -rf build/ install/ log/
cd src/
ls
cd livox_ros_driver2/
ls
source /opt/ros/foxy/setup.bash 
ls
cd config/
ls
vim MID360_config.json 
cd ../
ls
./build.sh ROS2
ls
cd ../
ls
cd ../
ls
rm -rf build/ install/ log/
./src/livox_ros_driver2/build.sh ROS2
cd src/
ls
cd ../
lks
ls
cd liv
cd src/
ls
cd livox_ros_driver2/
source /opt/ros/foxy/setup.bash 
./build.sh ROS2
cd
git clone https://github.com/Livox-SDK/Livox-SDK2
ls
cd Livox-SDK2/
ls
mkdir build && cd build
ls
cmake .. && make -j
ls
sudo make install
make install
git clone https://github.com/Livox-SDK/Livox-SDK2.git
source /opt/ros/foxy/setup.bash 
ros2 run demo_nodes_cpp talker
ls
cd colcon_ws/
ls
cd src/
ls
git clone https://github.com/Livox-SDK/livox_ros2_driver.git
cd ../
colcon build --symlink-install --packages-select livox_ros2_driver
colcon build --symlink-install
ls
rm -rf build/ install/ log/
cd src/
ls
rm -rf Professional_Experiment_2024/
cd ../
colcon build --symlink-install
source install/setup.bash 
ping 192.168.1.100
ping 192.168.1.115
ros2 topic list
ros2 topic echo /livox/lidar 
terminator 
cd colcon_ws/src/
ls
cd ../
ls
rm -rf build/ install/ log/
cd src/
ls
cd livox_ros_driver2/
ls
./build.sh ROS2
ls
mv -r ../../../Livox-SDK2/ .
mv ../../../Livox-SDK2/ .
ls
cd ../
cd livox_ros_driver2/
./build.sh ROS2
ls
cat build.sh 
source .bashrc 
cd colcon_ws/src/livox_ros_driver2/
ls
cd config/
ls
vim MID360_config.json 
cd ../
cd
vim .bashrc 
source .bashrc 
ping 192.168.1.115
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
terminator 
ls
cd colcon_ws/
ls
cd src/
ls
cd livox_ros_driver2/
ls
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ls
ls
cd ReID3D/
ls
cd 
ls
ping 192.168.1.115
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ls
terminator 
ls
ros2 run demo_nodes_py listener
ping 192.168.1.115
ros2 topic list
ros2 topic echo /livox/lidar 
ls
cd colcon_ws/
ls
cd src/
ls
ros2 pkg create tmp --build-type ament_python 
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py
vim receive_laser_data.py 
ros2 topic info /livox/lidar 
ros2 topic echo /livox/lidar 
ls
cd colcon_ws/src/tmp/
ls
vim setup.py 
cd
cd colcon_ws/
colcon build --symlink-install --packages-select tmp
colcon build --packages-select tmp
colcon build
echo $RMW_IMPLEMENTATION
ros2 run demo_nodes_cpp talker
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ping 192.168.1.115
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
terminator 
ls
cd colcon_ws/
ls
rm build/ install/ log/
rm -rf build/ install/ log/
ls
cd colcon_ws/
ls
colcon build --symlink-install
ls
cd ../
ls
cd ReID3D/
ls
cd tmp/
ls
cd ./
cd ../
ls
rm -r tmp/
cd reidnet/
ls
cd ../
ls
cd
ls
cp ReID3D/ colcon_ws/src/tmp/
cp -r ReID3D/ colcon_ws/src/tmp/
cd ReID3D/
ls
cd reidnet/
ls
cat reid3d_predict.py 
cd
cd colcon_ws/
ls
cd install/
ls
cd ../
ls
cd build/
ls
cd tmp/
ls
cd share/
ls
cd tmp/
ls
cd hook/
ls
cd ../../
ls
cd ../
ls
cd ../
ls
cd
cd colcon_ws/
lc
cd
ls
cd ReID3D/
ls
cd reidnet/
ls
pwd
cd
ros2 run tmp laser_data_loader 
cd ReID3D/
ls
cd reidnet/
ls
cat reid3d_predict.py 
ros2 run tmp laser_data_loader 
ls
vim main.py 
ros2 run tmp laser_data_loader 
ls
vim main.py 
nvidia-smi 
watch nvidia-smi
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ls
cat train.sh 
ros2 run tmp laser_data_loader 
ls
vim main.py 
cd ../util/
ls
vim utils.py 
ros2 run tmp laser_data_loader 
ls
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd livox_ros_driver2/
ls
cd launch_ROS
ls
cd config/
ls
vim MID360_config.json 
python3
ros2 run tmp laser_data_loader 
ls
vim MID360_config.json 
ls
python3
ros2 run tmp laser_data_loader 
cd
ls
cd ReID3D/
ls
cd reidnet/
ls
vim main.py 
python3
ros2 run tmp laser_data_loader 
ros2 run tmp laser_data_loader [
ros2 run tmp laser_data_loader 
cd
ros2 bag record -o 3dlaser_data /livox/lidar
ls
ros2 topic list
ros2 topic echo /livox/lidar 
ls
cd 
cd ReID3D/
ls
cd reidnet/
ls
cd model/
ls
cd network.py 
vim network.py 
ros2 run tmp laser_data_loader 
ls
cd src/
ls
cd tmp/
ls
cd
cd colcon_ws/
colcon build --symlink-install --packages-select tmp
source install/setup.bash 
ls
cd src/
ls
cd tmp/
ls
cd tmo
cd tmp/
ls
vim receive_laser_data.py 
ros2 run tmp laser_data_loader 
ls
vim receive_laser_data.py 
cd
cd ReID3D/
ls
cd reidnet/
ls
python3
ls
cd
cd colcon_ws/
ls
cd src/
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py 
cd
cd ReID3D/
ls
cd reidnet/
ls
vim main.py 
cat train.sh 
ls
rm reid3d_predict.py 
vim main.py 
cd
cd colcon_ws/
ls
cd src/
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py 
pip install ros2-numpy
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
cd
cd ReID3D/
ls
cd reidnet/
ls
cat train.sh 
ros2 run tmp laser_data_loader 
ls
cat main.py 
vim main.py 
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
cat train.sh 
ping 192.168.1.115
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
cd
ls
cd 3dlaser_data/
l
cd
ros2 bag play 3dlaser_data/
cd ReID3D/
ls
cd reidnet/
ls
cat train.sh 
ls
python3 tmp.py 
python3
ros2 run tmp laser_data_loader 
ls
cd ReID3D/
ls
cd reidnet/
ls
vim tmp.py
ls
cd colcon_ws/
colcon build
cd src/
ls
cd livox_ros_driver2/
ls
./build.sh ROS2
cd ../
ls
cd ../
ls
source install/setup.bash 
terminator 
rviz2 
ls
cd
ros2 bag play 3dlaser_data/
ros2 launch livox_ros_driver2 msg_MID360_launch.py 
ros2 run tmp laser_data_loader 
python3 
ros2 run tmp laser_data_loader 
source colcon_ws/install/setup.bash 
ros2 topic echo /livox/lidar
ros2 run tmp laser_data_loader 
ros2 run tmp person_detector_from_laser 
ls
cd colcon_ws/src/
ls
cd tmp/p
cd tmp/
ls
vim setup.py 
cd ../
ros2 run tmp person_detector_from_laser 
cd colcon_ws/src/
ls
git clone https://github.com/Box-Robotics/ros2_numpy.git
cd ../
colcon build --symlink-install
source install/setup.bash 
python3
cd src/
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py 
cd
clear
ros2 bag play 3dlaser_data/
ls
cd ReID3D/
ls
cd reidnet/
ls
cd model/
ls
vim network.py 
cd ../
ls
vim main.py 
cd
ros2 bag play 3dlaser_data/
cd ReID3D/reidnet/
ls
vim main.py 
cd
ros2 bag play 3dlaser_data/
cd ReID3D/reidnet/
ls
cd main.py 
ls
vim main.py 
cd
ros2 bag play 3dlaser_data/
cd ReID3D/
ls
cd re
cd reidnet/
ls
vim main.py 
cd
ros2 bag play 3dlaser_data/
cd colcon_ws/
colcon build --symlink-install --packages-select tmp
source install/setup.bash 
cd
ros2 bag play 3dlaser_data/
cd colcon_ws/src/
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py 
ros2 topic list
ros2 topic echo /person_label 
rviz2 
ros2 topic list
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
cd colcon_ws/src/
ls
cd tmp/
ls
cd tmp/
ls
vim receive_laser_data.py 
ls
vim receive_laser_data1.py 
ls
vim receive_laser_data.py 
vim receive_laser_data1.py 
cd ../
vim setup.py 
cd tmp/
ls
vim receive_laser_data
ls
vim receive_laser_data1.py 
ros2 topic list
ros2 run tmp person_detector_from_laser 
ls
vim receive_laser_data1.py 
cd ../
cd ./
cd ../
ls
cd ../
source install/setup.bash 
ros2 run tmp person_detector_from_laser 
ros2 topic lsit
ros2 topic list
ros2 bag record -o lidar_data_two_person /livox/lidar
ls
ros2 bag play lidar_data_two_person/
rm -r lidar_data_two_person/
ros2 bag play lidar_data_two_person/
ros2 bag record -o lidar_data_two_person /livox/lidar
ros2 bag record -o lidar_data_three_person /livox/lidar
ros2 run tmp person_detector_from_laser 
ls
cd ros2_bags/
ls
ros2 bag lidar_data_three_person/
ros2 bag play lidar_data_three_person/
ros2 bag play lidar_data_two_person/
ls
cd
ls
cd colcon_ws/src/
l;s
ls
cd tmp/
ls
rm -r ReID3D/
ls
cd colcon_ws/
ls
cd src/
ls
cd tmp/
ls
rm -r ReID3D/
rm -rf ReID3D/
ls
cd tmp/
ls
cd ../../
ls
ros2 create pkg follow_me_by_3d_lidar --build-type ament_python
ros2 pkg create follow_me_by_3d_lidar --build-type ament_python
ls
cd follow_me_by_3d_lidar/
ls
cd ../
ls
cp tmp/tmp/receive_laser_data1.py follow_me_by_3d_lidar/follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
cd ../
ls
cd follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
mv receive_laser_data1.py person_detector.py
ls
cd ../
ls
vim setup.py 
cd
cd colcon_ws/
colcon build --symlink-install --packages-seclet follow_me_by_3d_lidar
colcon build --symlink-install --packages-select follow_me_by_3d_lidar
ls
colcon build --symlink-install --packages-select follow_me_by_3d_lidar
source install/setup.bash 
ros2 run follow_me_by_3d_lidar person_detector 
ls
cd src/
ls
cd follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
vim person_detector.py 
cd ../../
ls
rm -r tmp
ls
cd ../
ls
cd ros2_bags/
ros2 bag play lidar_data_three_person/
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd follow_me_by_3d_lidar/
ls
vim setup.py 
cd
cd colcon_ws/
cd ../ros2_bags/
ls
ros2 bag play lidar_data_three_person/
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ping 192.168.1.11g
ping 192.168.1.115
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
rviz2 
ros2 launch livox_ros_driver2 rviz_MID360_launch.py 
ls
mkdir ros2_bags
mv lidar_data_three_person/ lidar_data_two_person/ ros2_bags/
ls
rm -r 3dlaser_data/
ls
rviz2 
ping 192.168.1.115
terminator 
vim .bashrc 
ls
cd do
ls
cd colcon_ws/
ls
cd src/
ls
cd livox_ros_driver2/
./build.sh ROS2
cd ../
ls
cd
ls
cd
terminator 
ls
cd colcon_ws/
ls
cd src/
ls
git clone https://github.com/Livox-SDK/livox_ros_driver2.git
git clone https://github.com/Box-Robotics/ros2_numpy.git
cd livox_ros_driver2/
./build.sh ROS2
cd ~/colcon_ws/
ls
cd src/livox_ros_driver2/
source ~/colcon_ws/install/setup.bash
ls
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd ../
ls
ros2 run follow_me_by_3d_lidar person_detector 
rviz2 
ros2 bag play ~/ros2_bags/lidar_data_three_person
terminator 
cd
ls
ros2 run follow_me_by_3d_lidar person_detector 
ls
cd ReID3D/
ls
cd reidnet/
ls
cd model/
ls
cd ../
ls
cd ../
ls
cd database/
ls
cd LReID_final/
ls
cd outputs/
ls
cd ../
ls
cd ../
ls
cd ../
ls
cd LReID/
ls
cd info/
ls
cd ./
cd ../
ls
cd ../
ls
cd reidnet/
ls
terminator 
nvcc -V
ls
nvidia-smi 
cd colcon_ws/
ls
cd src/
ls
git pul
git clone https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
cd ../
rosdep init
ros2 topic list
source /opt/ros/foxy/setup.bash 
ros2 topic list
vim .bashr
cd
vim .bashrc 
source .bashrc 
nvcc V
nvcc -V
ls
cd colcon_ws/
ls
cd src/
ls
cd ../
rosdep init
cd colcon_ws/
ls
rosdep init
cd
cd do
cd colcon_ws/
rosdep update
sudo rosdep init
cd
cd .ros/
ls
cd ../
ls
cd colcon_ws/
ls
kitproxy 
cd
vim .bashrc 
source .bashrc 
kitproxy 
rosdep update
cd colcon_ws/
rosdep install -i --from-path src --rosdistro foxy -y
rosdep install -i --from-path src/pointpillars_ws --rosdistro foxy -y
cd src/
ls
cd ../
rosdep install -i --from-path src/ros2_tao_pointpillars --rosdistro foxy -y
cd colcon_ws/
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
git bra
rosdep update
cd colcon_ws/
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
cd ../
cd colcon_ws/
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
ls
cd colcon_ws/
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
lsb_release -a
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd ros2_tao_pointpillars/
ls
cd
cd colcon_ws/
ls
cd
mkdir -p pointpillars_ws/src
cd pointpillars_ws/src/
mv ../../colcon_ws/src/ros2_tao_pointpillars/ .
ls
cd ros2_tao_pointpillars/
ls
mv CMakeLists.txt package.xml include/ launch/ src/ ../
ls
cd ../
ls
rm -rf ros2_tao_pointpillars/
ls
cd ../
ls
rosdep install -i --from-path src --rosdistro foxy -y
cd ../
ls
rm -rf pointpillars_ws/
ls
cd colcon_ws/
ls
cd src/
ls
https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
git clone https://github.com/NVIDIA-AI-IOT/ros2_tao_pointpillars.git
cd ../
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
ls
cd colcon_ws/
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
cd colcon_ws/
ls
cd src/
ls
cd ../
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
ls
cd src/
ls
cd ros2_tao_pointpillars/
ls
vim package.xml 
cd ../../
ls
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
ls
cd colcon_ws/
colcon build --packages-select pp_infer
cd src/
ls
cd ros2_tao_pointpillars/
ls
cd include/
ls
cd pp_infer/
ls
vim point_cloud2_iterator.hpp
cd ../
cd
cd colcon_ws/
colcon build --packages-select pp_infer
source install/setup.bash 
ros2 launch pp_infer pp_infer_launch.py 
echo $http_proxy
echo $https_proxy
ros2 launch pp_infer pp_infer_launch.py 
python3
ls
cd colcon_ws/
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
colcon build --packages-select pp_infer
ls
cd src/
ls
cd ros2_tao_pointpillars/
ls
vim package.xml 
cd ../../
ls
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
cd src/
ls
cd ros2_tao_pointpillars/
ls
vim package.xml 
cd ../../
ls
rosdep update
ls
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
colcon build --packages-select pp_infer
cd src/
ls
cd ros2_tao_pointpillars/
ls
vim CMakeLists.txt 
cd
ls
cd vimrc/
ls
la
cd ../
rm -rf vimrc/
git clone https://github.com/HappyYusuke/vimrc.git
cd vimrc/
ls
./vimrc_setup.bash 
ls
cd
ls
cd vimrc/
la
cp .vimrc .
cd
ls
la
vim .vimrc 
sudo apt update
apt update
vim .bashrc 
cd colcon_ws/src/ros2_tao_pointpillars/
ls
cd include/
ls
cd pp_infer/
ls
cd
terminator 
ls
cd src/
ls
cd
git clone https://github.com/ZVISION-lidar/zvision_ugv_data.git
ls
cd zvision_ugv_data/
ls
cd image/
ls
la
cd
ls
rm  -rf zvision_ugv_data/
cd colcon_ws/src/
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
vim pp_infer_launch.py 
cd
ros2 launch pp_infer pp_infer_launch.py 
rviz2 
ros2 topic list
ros2 topic echo /bbox 
rviz2 
cd
cd ros2_bags/
ls
ros2 bag play lidar_data_three_person/
ls
cd colcon_ws/
ls
cd src/
ls
cd ../
rosdep update
rosdep install -i --from-path src --rosdistro foxy -y --ignore-src
cd src/
ls
cd ../
ls
cd src/
ls
cd ../
source install/setup.bash 
ros2 launch pp_infer pp_infer_launch.py
ip a
ifconfig
ls
cd src/
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
vim pp_infer_launch.py 
pwd
vim pp_infer_launch.py 
cd ../
ls
cd include/
ls
cd ../
ls
cd launch/
vim pp_infer_launch.py 
cd
cd colcon_ws/
colcon build --symlink-install --packages-select pp_infer
source install/setup.bash 
os2 launch pp_infer pp_infer_launch.py
ros2 launch pp_infer pp_infer_launch.py
terminator 
cd src/
ls
cd vision_msgs_rviz_plugins/
ls
cd samples/
ls
cd ../
ls
cd src/
ls
cd ../
ls
cd samples/
ls
vim Detection3DArray.py 
cd colcon_ws/
cd src/
ls
git clone RUN apt-get update && apt-get install -y libpcl-dev ros-foxy-vision-msgs-rviz-plugins
git clone -b foxyw https://github.com/NovoG93/vision_msgs_rviz_plugins.git
git clone -b foxy https://github.com/NovoG93/vision_msgs_rviz_plugins.git
cd ../
rosdep update
rosdep install --from src --ignore-src -r -y
colcon build --symlink-install --packages-select vision_msgs_rviz_plugins
source install/setup.bash 
terminator 
sl
ls
ros2 topic list
cd ros2_bags/
ros2 bag play lidar_data_three_person/
cat .bashrc 
cd ros2_bags/
ls
ros2 bag play lidar_data_three_person/
echo $RMW_IMPLEMENTATION
ros2 bag play lidar_data_three_person/
cd ros2_bags/
ros2 bag play lidar_data_three_person/
ros2 run demo_nodes_cpp talker
ros2 launch pp_infer pp_infer_launch.py 
ls
cd colcon_ws/
ls
cd src/
ls
cd follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
vim detection_3d_array_rviz.py
cd ../
ls
cd follow_me_by_3d_lidar/
ls
cd ../
ls
vim setup.py 
cd
cd colcon_ws/
colcon build --symlink-install --packages-select follow_me_by_3d_lidar
source install/setup.ba
source install/setup.bash 
terminator 
ros2 launch pp_infer pp_infer_launch.py 
cd colcon_ws/
colcon build --symlink-install --packages-select pp_infer
source install/setup.bash 
cd]
cd
ros2 launch pp_infer pp_infer_launch.py 
cd ros2_bags/
ls
ros2 bag play lidar_data_three_person/
ls
cd colcon_ws/src/
ls
cd ros2_tao_pointpillars/
ls
cd ../
rm -rf vision_msgs_rviz_plugins/
cd
cd colcon_ws/
ls
rm -rf build/ install/ log/
colcon build --symlink-isntall
colcon build --symlink-install
source install/setup.bash 
ls
cd src/
ls
cd
source colcon_ws/install/setup.bash 
ros2 launch pp_infer pp_infer_launch.py 
cd colcon_ws/src/
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
vim pp_infer_launch.py 
cd
terminator 
ros2 topic list
ls
cd ros2_bags/
ls
ros2 bag play lidar_data_three_person/
ros2 bag info lidar_data_three_person/
ros2 run follow_me_by_3d_lidar detection_3d_array_rviz 
cd 
cd colcon_ws/src/follow_me_by_3d_lidar/follow_me_by_3d_lidar/
ls
vim detection_3d_array_rviz.py 
ros2 topic list
ros2 topic echo /detections/markers 
rviz2 
cd
ls
cd colcon_ws/src/
ls
cd follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
vim detection_3d_array_rviz.py 
ls
cd ../
ls
vim setup.py 
cd
cd colcon_ws/
colcon build --symlink-install --packages-select follow_me_by_3d_lidar
source install/setup.bash 
ros2 run follow_me_by_3d_lidar detection_3d_array_rviz 
ls
cd src/
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
vim pp_infer_launch.py 
ros2 run follow_me_by_3d_lidar detection_3d_array_rviz 
ros2 topic echo /bbox 
ls
vim pp_infer_launch.py 
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd follow_me_by_3d_lidar/
ls
cd follow_me_by_3d_lidar/
ls
vim detection_3d_array_rviz.py 
ros2 topic echo /bbox
ros2 topic echo /bbox | grep class
ros2 topic echo /bbox
ros2 param list
ros2 param get /minimal_publisher nms_iou_thresh
ros2 param set /minimal_publisher nms_iou_thresh 0.75
ros2 param set /minimal_publisher nms_iou_thresh 0.1
ros2 param set /minimal_publisher nms_iou_thresh 1.0
ros2 launch pp_infer pp_infer_launch.py 
ros2 bag info lidar_data_three_person/
ros2 launch pp_infer pp_infer_launch.py 
ls
cd
ls
cd colcon_ws/src/
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
vim pp_infer_launch.py 
ros2 launch pp_infer pp_infer_launch.py 
ls
vim pp_infer_launch.py 
ros2 launch pp_infer pp_infer_launch.py 
vim pp_infer_launch.py 
ros2 launch pp_infer pp_infer_launch.py 
vim pp_infer_launch.py 
ros2 launch pp_infer pp_infer_launch.py 
vim pp_infer_launch.py 
ros2 launch pp_infer pp_infer_launch.py 
ce
cd
cd ros2_bags/
ls
ros2 bag play lidar_data_three_person/
cd ros2_bags/
ros2 bag play lidar_data_three_person/
terminator 
ls
cd
ls
cd colcon_ws/
ls
cd src/
ls
cd follow_me_by_3d_lidar/
ls
git statu
git status
cd
cd colcon_ws/src/
ls
follow_me_by_3d_lidar/
ls
la
cd follow_me_by_3d_lidar/
ls
la
echo "# follow_me_by_3d_lidar" >> README.md
git init
git add README.md
git commit -m "first commit"
git config --global user.email c1005073@planet.kanazawa-it.ac.jp
git config --global user.name Yusuke_Kanazawa
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/HappyYusuke/follow_me_by_3d_lidar.git
git push -u origin main
ls
git push -u origin main[
git push -u origin main
ls
git add .
git commit -m "Add: everything"
git push
ls
cd ../
ls
cd follow_me_by_3d_lidar/
ls
mkdir external_files
ls
cd external_files/
ls
cd ../
ls
cd ../
ls
cd ros2_tao_pointpillars/
ls
cd launch/
ls
cd ../
ls
cd include/
ls
cd pp_infer/
ls
cp point_cloud2_iterator.hpp ../../../follow_me_by_3d_lidar/external_files/
cd ../../
ls
cd ../
ls
cp ros2_tao_pointpillars/launch/pp_infer_launch.py follow_me_by_3d_lidar/external_files/
ls
cd follow_me_by_3d_lidar/
ls
git status
git add .
git commit -m "ros2_tao_pointpillars's files: launch, pcl2's header file"
git push
ls
vim README.md 
git status
git add .
git commit "Update: README.md"
git commit -m "Update: README.md"
git push
cd .git/
ls
vim config 
cd ../
git push
cd
