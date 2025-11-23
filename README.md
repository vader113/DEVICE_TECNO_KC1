# Android device tree for TECNO TECNO KC1 (TECNO-KC1)

```
#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
```
For now we need to patch this MakeFile for vbmeta:
```
cd ~/lineage
cp build/make/core/Makefile build/make/core/Makefile.backup
nano build/make/core/Makefile
```
Find line 3201 (around that area). You'll see:
```
makefile$(eval $(call check-and-set-avb-args,system))
ifdef INSTALLED_VENDORIMAGE_TARGET
$(eval $(call check-and-set-avb-args,vendor))
endif
```
Change it to:
```
makefileifdef INSTALLED_SYSTEMIMAGE_TARGET
$(eval $(call check-and-set-avb-args,system))
endif
ifdef INSTALLED_VENDORIMAGE_TARGET
$(eval $(call check-and-set-avb-args,vendor))
endif
```
