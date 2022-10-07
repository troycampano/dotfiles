qemu-img create -f qcow2 UB01.qcow2 50G

qemu-system-x86_64 \
  -accel hvf \
  -cpu host \
  -smp 2 \
  -m 4G \
  -usb \
  -device usb-tablet \
  -vga virtio \
  -display default,show-cursor=on \
  -device virtio-net,netdev=vmnic -netdev user,id=vmnic \
  -audiodev coreaudio,id=coreaudio \
  -device ich9-intel-hda -device hda-output,audiodev=coreaudio \
  -cdrom ubuntu-22.04.1-desktop-amd64.iso \
  -drive file=UB01.qcow2,if=virtio 