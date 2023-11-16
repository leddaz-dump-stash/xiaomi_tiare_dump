#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:21439748:ec86666ece49058334c2f17e9bfcbbd5093e0ba2; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:16667904:794d180e0737309e92e1f582a2b9f543b6ddc5fb EMMC:/dev/block/bootdevice/by-name/recovery ec86666ece49058334c2f17e9bfcbbd5093e0ba2 21439748 794d180e0737309e92e1f582a2b9f543b6ddc5fb:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
