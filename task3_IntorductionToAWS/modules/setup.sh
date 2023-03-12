#!/bin/bash

# ------------------------------------------------------------------------------------------------
#   This script will setup moodle server
#   To run this scirpt write in terminal "bash setup.sh"
# ------------------------------------------------------------------------------------------------

echo ---------------------------------------------------------------------------------------------
echo    This script will setup moodle server
echo ---------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------
#   The terraform init command initializes a working directory containing Terraform
#   configuration files
terraform init
# ------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------
#   The terraform plan command creates an execution plan, 
#   which lets you preview the changes that Terraform plans to make to your infrastructure
terraform plan
# ------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------
#   The terraform apply command executes the actions proposed in a Terraform plan. 
terraform apply -auto-approve
# ------------------------------------------------------------------------------------------------

echo ---------------------------------------------------------------------------------------------
echo    !Noticed that moodle need some time to setup, please, just wait :D!
echo ---------------------------------------------------------------------------------------------