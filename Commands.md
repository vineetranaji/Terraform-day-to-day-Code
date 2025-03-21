# Terraform Commands
Terraform commands for managing infrastructure.

## Terraform Initialization

### `terraform init`
- Initializes a working directory containing Terraform configuration files.
- Downloads provider plugins, sets up the backend, and configures modules.

### `terraform get`
- Downloads and installs modules used in the configuration.

## Terraform Plan

### `terraform plan`
- Creates an execution plan, showing what actions Terraform will take to apply the configuration.

### `terraform plan -out=<filename>`
- Saves the execution plan to a file for later use.

### `terraform show`
- Displays the current state or a saved plan in human-readable format.

## Terraform Apply

### `terraform apply`
- Applies the changes required to reach the desired state of the configuration.

### `terraform apply <filename>`
- Applies a previously saved plan file.

### `terraform apply -auto-approve`
- Automatically approves the actions proposed by the `plan` step.

## Terraform Destroy

### `terraform destroy`
- Destroys all infrastructure managed by the current Terraform configuration.

### `terraform destroy -auto-approve`
- Destroys the infrastructure without requiring manual approval.

## Terraform State Management

### `terraform state list`
- Lists all resources in the current state file.

### `terraform state show <resource>`
- Displays detailed information about a resource in the state.

### `terraform state rm <resource>`
- Removes a resource from the Terraform state.

### `terraform state mv <old_resource> <new_resource>`
- Moves a resource in the state file to a new name or address.

## Terraform Validation

### `terraform validate`
- Validates the Terraform configuration files for syntax and internal consistency.

### `terraform fmt`
- Automatically formats Terraform configuration files according to standard conventions.

## Terraform Providers and Modules

### `terraform providers`
- Displays the list of providers used in the configuration.

### `terraform providers mirror <directory>`
- Mirrors provider plugins to a local directory.

### `terraform modules`
- Displays the modules used in the current configuration.

## Terraform Debugging

### `terraform console`
- Opens an interactive console for evaluating expressions in the context of the current configuration.

### `terraform debug`
- Enables debugging output for troubleshooting.

## Terraform Version

### `terraform version`
- Displays the current version of Terraform.

### `terraform -help`
- Displays help for Terraform commands and options.

## Terraform Outputs

### `terraform output`
- Retrieves the output values defined in the configuration.

### `terraform output <output_name>`
- Retrieves the value of a specific output.

## Terraform Import

### `terraform import <resource_type>.<resource_name> <id>`
- Imports an existing resource into the Terraform state.

## Terraform Workspace Management

### `terraform workspace list`
- Lists all available workspaces.

### `terraform workspace new <workspace_name>`
- Creates a new workspace.

### `terraform workspace select <workspace_name>`
- Switches to a different workspace.

### `terraform workspace show`
- Displays the current workspace.

## Other Useful Commands

### `terraform graph`
- Generates a visual representation of the resources managed by Terraform.

### `terraform output`
- Retrieves output values from the Terraform configuration.
