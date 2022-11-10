set -eux

echo "fs was stripped with fido_rootfs.sh script" >>  $1/root/fido_rootfs


rm -rf $1/lib/modules/*

rm $1/usr/sbin/cryptsetup
rm $1/usr/sbin/dmeventd
rm $1/usr/sbin/dmsetup
rm $1/usr/sbin/integritysetup
rm $1/usr/sbin/veritysetup

rm -rf $1/usr/share/*

# rm -rf $1/usr/lib/*
rm -rf $1/usr/lib/libclang-cpp*
rm -rf $1//usr/lib/libLLVM*
rm -rf $1//usr/lib/libLTO.so*
rm -rf $1//usr/lib/libaio.so*
# rm -rf $1//usr/lib/libdevmapper*
# rm -rf $1//usr/lib/libjson-c*
rm -rf $1//usr/lib/libstdc*

tar xpvfz fdo_client_keys.tar.gz --strip-components=1 -C $1
