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
git clone https://github.com/mnrniloy/vendor_oneplus_guacamole.git vendor/oneplus/guacamole
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
echo ""

#  Firmwares
# URL of the ZIP file
zip_url="https://sourceforge.net/projects/afterlife-projects/files/release/Op7/firmware_oneplus7pro.zip/download"

# Destination directory for extraction
extract_dir="vendor/oneplus/guacamole/"
extract_dir_check="vendor/oneplus/guacamole/radio"

# Check if files already exist in the destination directory
if [ -e "$extract_dir_check/modem.img" ] && [ -e "$extract_dir_check/abl.img" ]; then
    echo "Firmware already exist. No need to download."
else
    # Download the ZIP file
    curl -LJO "$zip_url"

    # Check if the download was successful
    if [ $? -eq 0 ]; then
        echo "Firmware Download successful. Extracting..."
        # Extract the ZIP file
        unzip -q "*.zip" -d "$extract_dir"
        echo "Firmware Extraction complete."
        # Optional: Remove the downloaded ZIP file
        rm *.zip
    else
        echo "Firmware Download failed."
    fi
fi