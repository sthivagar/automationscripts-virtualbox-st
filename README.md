# Virtual Box Kickstart Automation Scripts
---
## generatevm.sh

This script creates a new VM on Oracle Virtual Box. 

- Ensure to change the hostname inside this script before execution.
- Ensure to change the following with your desired path.
    - Change --filename /path/of/vm.vdi
    - Change --medium /path/of/vm.vdi
    - Change --medium /path/of/CentOS-7-x86_64-DVD-2009.iso to the actual location of the ISO file.
---
## kickstart.sh

This script will install the OS on the VM that you created using the ISO file you selected.

- Ensure to change the hostname as shown below.
  >  unattended install <example.hostname.local>
- Ensure to replace the hostname with the vmname as shown below.
  > --hostname=<example.hostname.local> 
-- Ensure to change the location of the iso file.
  > --iso=path/of/iso/CentOS-7-x86_64-DVD-2009.iso