# ベースイメージとしてNVIDIAのTensorRTコンテナを指定
# TensorRT 8.4.1, CUDA 11.6, cuDNN 8, Ubuntu 20.04
FROM nvcr.io/nvidia/tensorrt:22.06-py3

ENV DEBCONF_NOWARNINGS=yes

ENV NVIDIA_VISIBLE_DEVICES ${NVIDIA_VISIBLE_DEVICES:-all}
ENV NVIDIA_DRIVER_CAPABILITIES ${NVIDIA_DRIVER_CAPABILITIES:+$NVIDIA_DRIVER_CAPABILITIES,}graphics

# Dockerfile内での対話形式のプロンプトを無効化
ENV DEBIAN_FRONTEND=noninteractive
# aptを日本のミラーに設定  http://www.aise.ics.saitama-u.ac.jp/~gotoh/HowToInstallUbuntu1804OnWSL.html
RUN sed -i.bak -e "s/http:\/\/archive\.ubuntu\.com/http:\/\/jp\.archive\.ubuntu\.com/g" /etc/apt/sources.list

# タイムゾーンを設定
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

# コンテナにプロキシの環境変数を追加する
ENV https_proxy "http://wwwproxy.kanazawa-it.ac.jp:8080"
ENV http_proxy "http://wwwproxy.kanazawa-it.ac.jp:8080"

RUN apt-get update
# sudo:sudo x11-apps:xeyes用 net-tools:ifconfig用 mesa-utils:glxgears用 gnupg:rosのadd-key用
RUN apt-get install -y sudo gnupg x11-apps iputils-ping net-tools mesa-utils vim-gtk emacs dbus-x11 terminator git

# ROSのインストール
RUN apt-get update
RUN apt-get install -y curl gnupg2 lsb-release
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null
RUN apt-get -y update
RUN apt-get install -y ros-foxy-desktop
RUN echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
RUN apt-get install -y python3-argcomplete python3-pip
RUN apt-get install -y python3-colcon-common-extensions
RUN apt-get install -y ros-foxy-rmw-cyclonedds-cpp
RUN apt-get install -y python3-rosdep
RUN apt-get install -y ros-foxy-pcl* ros-foxy-sensor-msgs ros-foxy-vision-msgs

# Pytorch
RUN pip install numpy scikit-learn==1.0.2 scipy tqdm==4.66.1 pytorch3d
RUN pip install torch==1.12.1+cu116 torchvision==0.13.1+cu116 --extra-index-url https://download.pytorch.org/whl/cu116

# For PointPillars
RUN source /opt/ros/foxy/setup.bash
RUN rosdep init

# Livox MID 360
WORKDIR /root
RUN git clone https://github.com/Livox-SDK/Livox-SDK2
# Build SDK
WORKDIR /root/Livox-SDK2
RUN mkdir build
WORKDIR /root/Livox-SDK2/build
RUN cmake .. && make -j
RUN make install

# aptのキャッシュを削除してイメージの容量削減
RUN rm -rf /var/lib/apt/lists/
