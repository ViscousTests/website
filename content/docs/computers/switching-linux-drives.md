# Switching Linux Drives

I wanted to switch my linux install to a new larger NVME drive I got.
This was harder than I expected.

I followed https://www.reddit.com/r/archlinux/comments/futij3/comment/fmfnlod/
(using https://wiki.archlinux.org/title/Installation_guide#Partition_the_disks
to do step 1), but ran into a strange problem where when using
`arch-chroot` to configure my new root system from the arch install medium I
could not see any drive UUIDS, making generating my `fstab` file impossible.

I ended up needing to generate the `fstab` (with genfstab) OUTSIDE of the
chroot, then modifying it to specify the right mount points within the chroot.
