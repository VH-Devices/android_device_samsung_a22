#!/sbin/sh

sleep 5

# Unmount
umount /system_root
umount /vendor
umount /product
umount /odm

# Mount system and vendor once to fix permissions
mount /dev/block/dm-0 /system_root
mount /dev/block/dm-1 /vendor
mount /dev/block/dm-2 /product
mount /dev/block/dm-3 /odm

# Remount as read-write
mount -o remount,rw /system_root
mount -o remount,rw /vendor
mount -o remount,rw /product
mount -o remount,rw /odm

# Unmount
umount /system_root
umount /vendor
umount /product
umount /odm

exit 0