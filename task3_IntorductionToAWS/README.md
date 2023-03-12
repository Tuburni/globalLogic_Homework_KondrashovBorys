# task3_IntorductionToAWS

## Task: Prepare the environment and install LMS Moodle.


Task decomposition:
Create an AWS account.
Create EC2 instance 
Requirements:
AWS EC2  server (2 GiB RAM, 1 vCPU, 10 GiB)
Install MySQL Server
Create a user on the MySQL server for a specific DB (which will be used for LMS Moodle)
Create a database for LMS Moodle
Grant permissions on a database for the user
Install Apache HTTP Server
Install PHP as a module for Apache HTTP Server
Download source of LMS Moodle
Copy source files into /var/www/ directory or another directory under web-server management
Create a directory named “moodledata” out of the web-server directory
Acceptance Criteria:
URL (or IP) to your working Moodle learning platform


stateDiagram-v2
    [*] --> Still
    Still --> [*]

    1. Install GIT and clone this repository --> 2. Enter your AWS credentials in variables.tf
    2. Enter your AWS credentials in variables.tf --> 3. Run bash script `install.sh` to install terraform
    3. Run bash script `install.sh` to install terraform --> Run bash script `setup.sh` to setup moodle on aws
    3. Run bash script `install.sh` to install terraform --> Now you will need to navigate to the public IP address to configure your Moodle
    
    stateDiagram-v2
    [*] --> Still
    Still --> [*]

    Still --> Moving
    Moving --> Still
    Moving --> Crash
    Crash --> [*]
    
## To get started, you'll need:

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
5. Now you will need to navigate to the public IP address to configure your Moodle
The background color should be `#0969DA` for light mode and `#0d1117` for dark mode.
