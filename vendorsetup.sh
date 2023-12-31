# Clone/Fetch Upstream Device Dependencies
# Device Tree
echo "Cloning sm8150-Common Tree"
git clone https://github.com/mnrniloy/device_oneplus_sm8150-common.git -b 13 device/oneplus/sm8150-common
echo ""

echo "Cloning kernel tree"
git clone https://github.com/mnrniloy/Neptune_kernel_sm8150_oneplus.git -b inline-erofs kernel/oneplus/sm8150
echo ""

echo "Cloning Hardware"
git clone https://github.com/mnrniloy/hardware_oneplus.git -b 13 hardware/oneplus
echo ""

echo "Cloning Vendor blobs"
git clone https://github.com/mnrniloy/vendor_oneplus_guacamole.git -b 14 vendor/oneplus/guacamole
git clone https://github.com/mnrniloy/vendor_oneplus_sm8150-common.git -b 13 vendor/oneplus/sm8150-common
echo ""

# Qcom components
echo "Cloning Qcom components"
git clone https://github.com/yaap/device_qcom_common.git -b fourteen device/qcom/common
git clone https://gitlab.com/yaosp/vendor_qcom_common.git -b fourteen vendor/qcom/common
git clone https://github.com/mnrniloy/device_qcom_qssi.git device/qcom/qssi
git clone https://github.com/mnrniloy/vendor_qcom-opensource_core-utils.git vendor/qcom/opensource/core-utils
echo ""

#  Apps
echo "Cloning Apps"
git clone https://github.com/KProfiles/android_packages_apps_Kprofiles packages/apps/Kprofiles
git clone https://gitlab.com/nrniloy369/vendor_oneplus_apps.git vendor/oneplus/apps
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX packages/apps/ViPER4AndroidFX
echo ""
