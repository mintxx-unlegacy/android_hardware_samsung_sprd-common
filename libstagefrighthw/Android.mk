#
# Copyright (C) 2016 The Android Open Source Project
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)

supported_boards := \
	sc8830 \
	scx15 \
	sc8810 \

ifneq (,$(filter $(supported_boards),$(TARGET_BOARD_PLATFORM)))

ifneq (,$(filter scx15 sc8830,$(TARGET_BOARD_PLATFORM)))
include $(call all-subdir-makefiles,sc8830)
endif

ifneq (,$(filter sc8810,$(TARGET_BOARD_PLATFORM)))
include $(call all-subdir-makefiles,sc8810)
endif

endif
