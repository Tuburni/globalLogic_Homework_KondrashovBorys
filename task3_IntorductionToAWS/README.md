<p align="right"><img src="https://camo.githubusercontent.com/3cc8eb3e3705250f3d4e19adcb36c55563d37cb19e8fc0792a0fc07a4e6e2e91/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f416d617a6f6e5f4157532d4646393930303f7374796c653d666f722d7468652d6261646765266c6f676f3d616d617a6f6e617773266c6f676f436f6c6f723d7768697465" style="max-width: 100%;" data-canonical-src="https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&amp;logo=amazonaws&amp;logoColor=white"> </p>

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
7. Install Apache HTTP Server
8. Install PHP as a module for Apache HTTP Server
9. Download source of LMS Moodle
10. Copy source files into /var/www/ directory or another directory under web-server management
11. Create a directory named “moodledata” out of the web-server directory
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
cd globalLogic_Homework_KondrashovBorys/task3_IntorductionToAWS/
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
