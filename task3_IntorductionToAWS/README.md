<p align="right"><a href="https://aws.amazon.com" rel="nofollow"><img src="https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" data-canonical-src="https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white" style="max-width: 100%;"></a> </p>

# <p align="center"> Intorduction to AWS </p>


## Task: Prepare the environment and install LMS Moodle.


### Task decomposition ( from [Global Logic](https://www.globallogic.com/) by [Maksym Mykytyn](https://github.com/myrkytyn)):
1. Create an AWS account
2. Create EC2 instance 
> *Requirements:*
- AWS EC2  server (2 GiB RAM, 1 vCPU, 10 GiB)
3. Install MySQL Server
> *Requirements:*
- Create a user on the MySQL server for a specific DB (which will be used for LMS Moodle)
- Create a database for LMS Moodle
- Grant permissions on a database for the user
4. Install Apache HTTP Server
5. Install PHP as a module for Apache HTTP Server
6. Download source of LMS Moodle
7. Copy source files into /var/www/ directory or another directory under web-server management
8. Create a directory named “moodledata” out of the web-server directory
> *Acceptance Criteria:*
- [X] URL (or IP) to your working Moodle learning platform

    
### To get started, you'll need ( complete by [Borys Kondrashov](https://github.com/Tuburni)):

1. Install GIT and clone this repository:
>  <sub> _copy and past this comand to terminal_ </sub>
```bash
cd
mkdir KondrashovB
cd KondrashovB
sudo apt-get update -y
sudo apt install git -y
git --version
sudo apt-get update -y
git clone https://github.com/Tuburni/globalLogic_Homework_KondrashovBorys
cd ~/KondrashovB/globalLogic_Homework_KondrashovBorys/task3_IntorductionToAWS/
```

2. Enter your AWS credentials in variables.tf:
>  <sub> _copy and past this comand to terminal_ </sub>
```bash
nano ~/globalLogic_Homework_KondrashovBorys/task3_IntorductionToAWS/modules/variable.tf
```

3. Run bash script `install.sh` to install terraform:
>  <sub> _copy and past this comand to terminal_ </sub>
```bash
bash install.sh
```
4. Run bash script `setup.sh` to setup moodle on aws:
>  <sub> _copy and past this comand to terminal_ </sub>
```bash
bash setup.sh
```


### Useful links:
1. [Creating an AWS account](https://docs.aws.amazon.com/accounts/latest/reference/manage-acct-creating.html)
2. [Create EC2 instance](https://www.guru99.com/creating-amazon-ec2-instance.html)
3. [How To Install MySQL on Ubuntu](https://www.digitalocean.com/community/tutorials/how-to-install-mysql-on-ubuntu-18-04)
4. [LMS Moodle source](https://download.moodle.org/)
5. [Installing Moodle](https://docs.moodle.org/311/en/Installing_Moodle)
