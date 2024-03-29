cmake_minimum_required(VERSION 3.5)

project(sh_sfp_interfaces)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
    set(CMAKE_CXX_STANDARD 14)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(sh_common_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

rosidl_generate_interfaces(sh_sfp_interfaces
    "action/AnalyzeSoundFile.action"
    "action/DownloadAudio.action"
    "action/PlaySoundFile.action"
    "msg/AudioCharacteristics.msg"
    "msg/LabeledAudioCharacteristics.msg"
    "msg/OnsetDetectionAlgorithms.msg"
    "msg/PlaybackUpdate.msg"
    "msg/RhythmDetectionAlgorithms.msg"
    "msg/WindowingAlgorithms.msg"
    "srv/RequestPlaybackCommand.srv"
    DEPENDENCIES builtin_interfaces sh_common_interfaces
)

ament_package()
