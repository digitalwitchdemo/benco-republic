# name of the pipeline 
name: Terraform deployment to AWS for Benco Republic

# Work on workflow trigger 
on:
  push:
    branches:
      - main
    workflow_dispatch:

  # job section 

  jobs:
    terraform-deployment:
      runs-on: benco-republic

      steps:
        - name: Checkout code
          uses: actions/checkout@v2

        - name: terraform version 
          run: terraform -v