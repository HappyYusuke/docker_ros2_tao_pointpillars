# zipファイル解凍
echo "Unzipping large_files_docker_ReID3D2025.zip ..."
unzip $HOME/large_files_docker_ReID3D2025.zip
echo "unzipped!"

# 移動
echo -e "\nCopying files ..."
cp -r $HOME/docker_ReID3D2025/large_files_docker_ReID3D2025/ReID3D $HOME/docker_ReID3D2025/home
cp -r $HOME/docker_ReID3D2025/large_files_docker_ReID3D2025/ros2_bags $HOME/docker_ReID3D2025/home
echo "Copied!"

# Docker IMAGE を取り込み
echo -e "\nLoading docker image ..."
docker load < $HOME/docker_ReID3D2025/large_files_docker_ReID3D2025/dockerimage_reid3d.tar.gz
echo "Loaded!"

# ターミナル出力
echo -e "\n!!! Docker IMAGE kanazawa/reid3d_ready is ready !!!"
echo "Please run <run-docker-container.sh>"
