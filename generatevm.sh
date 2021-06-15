#!/bin/bash
VBoxManage createvm --name hostname --ostype Redhat_64 --register
VBoxManage createmedium --filename /path/of/vm.vdi --size 75000
VBoxManage storagectl hostname --name SATA --add SATA --controller IntelAhci
VBoxManage storageattach hostname --storagectl SATA --port 0 --device 0 --type hdd --medium /path/of/vm.vdi
VBoxManage storagectl hostname --name hostname --add ide --controller PIIX4
VBoxManage storageattach hostname --storagectl hostname --port 0 --device 0 --type dvddrive --medium /path/of/CentOS-7-x86_64-DVD-2009.iso
VBoxManage modifyvm hostname --memory 1024 --vram 16
VBoxManage modifyvm hostname --memory 1024 --vram 16
VBoxManage modifyvm hostname --ioapic on
VBoxManage modifyvm hostname --cpus 1
VBoxManage modifyvm hostname --audio none
VBoxManage modifyvm hostname --usb off
VBoxManage modifyvm hostname --usbehci off
VBoxManage modifyvm hostname --nic1 bridged --bridgeadapter1 wlan
