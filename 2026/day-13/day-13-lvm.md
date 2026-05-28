```
  409  dd if=/dev/zero of=/tmp/disk1.img bs=1M count=1024
  410  du -sch /tmp/disk1.img
  411  losetup -fP /tmp/disk1.img
  412  losetup -a
  413  pvs
  414  pvcreate /dev/loop0
  415  pvs
  416  vgcreate vg /dev/loop0
  417  vgs
  418  lvcreate -n vol1 -L 100M vg
  419  lvs
  420  mkfs.xfs /dev/vg/vol1
  421  mount /dev/vg/vol1 /mnt/
  422  df -Th /mnt/
  423  lvextend -L 120M /dev/mapper/vg-vol1
  424  xfs_growfs /dev/mapper/vg-vol1
  425  df -Th /mnt/
  426  lvextend -L +30M /dev/mapper/vg-vol1
  427  xfs_growfs /dev/mapper/vg-vol1
  428  df -Th /mnt/
  429  history | tail -55
  ```
