#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 12593152 b24d145aaa44b5f344250219b387baff0830510b 10053632 62ec76be053c94b8300c514576e99c65d813dbcf
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:12593152:b24d145aaa44b5f344250219b387baff0830510b; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:10053632:62ec76be053c94b8300c514576e99c65d813dbcf EMMC:/dev/block/bootdevice/by-name/recovery b24d145aaa44b5f344250219b387baff0830510b 12593152 62ec76be053c94b8300c514576e99c65d813dbcf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
