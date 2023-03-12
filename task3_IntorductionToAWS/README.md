## task3_IntorductionToAWS





To get started, you'll need:
1. Install GIT and clone this repository:
>  <sub> _copy and past this comand to terminal_ </sub>
```
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

2. Enter your AWS credentials in variables.tf
>  <sub> _copy and past this comand to terminal_ </sub>
```
nano ~/globalLogic_Homework_KondrashovBorys/task3_IntorductionToAWS/modules/variable.tf
```

3. Run bash script `install.sh` to install terraform
>  <sub> _copy and past this comand to terminal_ </sub>
```
bash install.sh
```
5. Run bash script `setup.sh` to setup moodle on aws
>  <sub> _copy and past this comand to terminal_ </sub>
```
bash setup.sh
```
6. Now you will need to navigate to the public IP address to configure your Moodle
The background color should be `#0969DA` for light mode and `#0d1117` for dark mode.
