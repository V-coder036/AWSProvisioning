# AWSProvisioning
## Provisioning the Service

1. Install Terraform (https://www.terraform.io/downloads.html) on your local machine.
2. Clone this repository
3. Go to the main.tf and add the required fields like access_key, secret_key
4. Replace the elastic ip allocation id and the private key file
5. Run terraform init, terraform plan and terraform apply.

## Running the Healthcheck Script

1. Ensure you have curl installed on your local machine.
2. Open a terminal and navigate to the project directory: `cd Devops-Node`
3. Run the healthcheck script: `./healthcheck.sh`
