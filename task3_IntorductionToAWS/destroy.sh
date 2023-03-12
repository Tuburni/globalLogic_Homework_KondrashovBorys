#!/bin/bash

# ------------------------------------------------------------------------------------------------
#   This script will destroy moodle server
#   To run this scirpt write in terminal "bash destroy.sh"
# ------------------------------------------------------------------------------------------------

echo ---------------------------------------------------------------------------------------------
echo    This script will destroy moodle server
echo ---------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------
#   This will run terraform plan in destroy mode, 
#   showing you the proposed destroy changes without executing them.
terraform plan -destroy
# ------------------------------------------------------------------------------------------------

# ------------------------------------------------------------------------------------------------
#   The terraform destroy command is a convenient way to destroy 
#   all remote objects managed by a particular Terraform configuration.
terraform destroy -auto-approve
# ------------------------------------------------------------------------------------------------

echo ---------------------------------------------------------------------------------------------
echo    Congradulation, moodle server was sucesfully destroy
echo ---------------------------------------------------------------------------------------------