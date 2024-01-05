# Use the official ROS noetic base image
FROM ros:noetic-ros-base


# Set the working directory
WORKDIR /ros2_workspace

COPY . .

# Install additional dependencies
RUN apt-get update \
    && apt-get -y --quiet --no-install-recommends install \
    gcc \
    git \
    libxml2-dev \
    libxslt-dev \
    python3 \
    python3-pip \
    python3-catkin-tools  \
    python3-vcstool  \
    python3-osrf-pycommon\
    libglew-dev \
    libopencv-dev \
    libyaml-cpp-dev \
    libblas-dev \
    liblapack-dev libsuitesparse-dev \
    vim \
    && apt-get -y autoremove \
    && apt-get clean autoclean \
    && rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

# Expose the default ROS  communication ports
EXPOSE 11311

# Run a default command, e.g., starting a bash shell
CMD ["bash"]
