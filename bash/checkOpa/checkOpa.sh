#!/bin/bash

terraform show -json terraformLibrary.tfPlan > tfplan.json
opa exec --decision terraform/analysis/authz --bundle policy/ tfplan.json