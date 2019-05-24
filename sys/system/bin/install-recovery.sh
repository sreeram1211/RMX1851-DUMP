#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3e653213f4c6b618e4a52c9517f1b9dd544226ce; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:10a5b818ba43914ff0fae9d5fe74d08bfa5cb2ec EMMC:/dev/block/bootdevice/by-name/recovery 3e653213f4c6b618e4a52c9517f1b9dd544226ce 67108864 10a5b818ba43914ff0fae9d5fe74d08bfa5cb2ec:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
