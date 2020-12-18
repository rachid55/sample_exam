ansible all -m user -a " name=automation " -i /home/automation/plays/inventory 
ansible all -m authorized_key -a " user=automation  state=present  key={{ lookup('file', '/home/automation/.ssh/id_rsa.pub') }} " -i /home/automation/plays/inventory 
