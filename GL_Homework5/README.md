<p align="center">
      <img src="https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/jpg/EC2%20servers.jpg">
</p>

<p align="">
   <img src="https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/jpg/ansible-inventory%20--graph.jpg">
</p>

<p align="">
   <img src="https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/jpg/ansible%20-i%20hosts%20all%20-m%20ping.jpg">
</p>

<p align="center">
   <img src="https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/jpg/ansible-playbook%20playbook.yml.jpg">
</p>

## Distribute

- [roles](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles)
- [ansible.cfg](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/ansible.cfg)
- [hosts](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/hosts)
- [playbook.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/playbook.yml)

## Instruction
 
Here is a detailed guide: 
 
I. Create a [hosts](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/hosts) file with four groups: 

1. First, create a new file called [hosts](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/hosts) in your controller machine. 
2. In this file, define four groups: *group1*, *group2*, *group3*, and *iaas*. The *iaas* group should include children from *group1* and *group2*. For example: 
```
[group1] 
vm1 ansible_host=35.159.32.3 ansible_user=ubuntu ansible_ssh_private_key_file=/home/borys/Desktop/AnsibleHM/ForAnsible.pem
 
[group2] 
vm2 ansible_host=3.123.17.50 ansible_user=ubuntu ansible_ssh_private_key_file=/home/borys/Desktop/AnsibleHM/ForAnsible.pem
 
[group3] 
vm3 ansible_host=3.121.76.242 ansible_user=ubuntu ansible_ssh_private_key_file=/home/borys/Desktop/AnsibleHM/ForAnsible.pem
 
[iaas] 
vm1 ansible_host=35.159.32.3 ansible_user=ubuntu ansible_ssh_private_key_file=/home/borys/Desktop/AnsibleHM/ForAnsible.pem
vm2 ansible_host=3.123.17.50 ansible_user=ubuntu ansible_ssh_private_key_file=/home/borys/Desktop/AnsibleHM/ForAnsible.pem
```
II. Create reusable [roles](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles) for creating a file and fetching a Linux distro name: 

1. In your controller machine, create a new directory called [roles](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles). 
2. Within the [roles](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles) directory, create a new directory called [create_file](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/create_file/tasks). This will be the directory for the role that creates a file. 
3. Within the [create_file](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/create_file/tasks) directory, create the following files and directories: 
 * [tasks](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/create_file/tasks) directory 
 * [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/create_file/tasks/main.yml) file within the [tasks](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/create_file/tasks) directory 
4. In the [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/create_file/tasks/main.yml) file, add the following task to create a file called */etc/iaac* with permissions *0500*: 
```
--- 

- name: create file 
  ansible.builtin.file:
     path: '/etc/iaas'
     mode: '0500'
     state: touch
```
5. In the [roles](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles) directory, create a new directory called [fetch_distro](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro). This will be the directory for the role that fetches the Linux distro name. 
6. Within the [fetch_distro](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro) directory, create the following files and directories: 
 * [tasks](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/tasks) directory 
 * [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/fetch_distro/tasks/main.yml) file within the [tasks](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/tasks) directory 
 * [vars](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/vars) directory 
 * [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/fetch_distro/vars/main.yml) file within the [vars](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/vars) directory 
7. In the [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/fetch_distro/tasks/main.yml) file within the [tasks](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/tasks) directory, add the following task to define a variable called distro with the value of the Linux distro name: 
```
--- 
- name: define variable 
  set_fact: 
    distro: "{{ ansible_distribution }}" 
```
8. In the [main.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/roles/fetch_distro/vars/main.yml) file within the [vars](https://github.com/Tuburni/GL_Homerworks/tree/main/GL_Homework5/roles/fetch_distro/vars) directory, add the following variable to define the distro_version variable with the value of the Linux distro version: 
```
--- 
distro_version: "{{ ansible_distribution_version }}" 
```
III. Create a [playbook](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/playbook.yml) for invoking the roles and printing the registered variables: 

1. In your controller machine, create a new file called [playbook.yml](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/playbook.yml) 
2. In this file, add the following content to specify the roles to be invoked and the hosts on which they will be applied: 

```
--- 
- hosts: iaas 
  roles: 
    - create_file 
 
- hosts: all 
  roles: 
    - fetch_distro 
 
- hosts: all 
  tasks: 
    - name: print registered variables 
      debug: 
        msg: "distro: {{ distro }}, distro_version: {{ distro_version }}, hostname: {{ ansible_hostname }}"
```
3. In your controller machine, create a new file called [ansible.cfg](https://github.com/Tuburni/GL_Homerworks/blob/main/GL_Homework5/ansible.cfg) 
4. In this file, add the following content: 
```
[defaults]
host_key_checking = false
inventory         = ./hosts
```

IV. In your controller machine, in terminal run following comands:
$ ``` ansible-playbook playbook.yml ```
## Developers

- [Borys Kondrashov](https://github.com/Tuburni)

## License
