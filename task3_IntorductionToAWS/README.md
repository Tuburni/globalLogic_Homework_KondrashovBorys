To get started, you'll need to copy this comands and past them to terminal:
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
You will need to enter your AWS credentials in variables.tf

```
nano ~/globalLogic_Homework_KondrashovBorys/task3_IntorductionToAWS/modules/variable.tf
```

Run bash script **install.sh** to install terraform
Run bash script **setup.sh** to setup moodle on aws
Now you will need to navigate to the public IP address to configure your Moodle
The background color should be `#0969DA` for light mode and `#0d1117` for dark mode.
