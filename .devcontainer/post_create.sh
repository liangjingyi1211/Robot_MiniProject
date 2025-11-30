#!/bin/bash
set -e

echo ">>> Updating packages..."
apt update

echo ">>> Installing ROS2 tools..."
apt install -y \
    ros-humble-navigation2 \
    ros-humble-nav2-bringup \
    ros-humble-slam-toolbox \
    ros-humble-turtlebot3* \
    python3-colcon-common-extensions \
    git \
    build-essential

echo ">>> Creating ros2 workspace..."
mkdir -p /workspaces/Robot_MiniProject/ros2_ws/src

echo ">>> Environment setup..."
echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc
echo "source /workspaces/Robot_MiniProject/ros2_ws/install/setup.bash" >> /root/.bashrc

chmod +x /root/.bashrc

echo ">>> ROS2 workspace ready."
