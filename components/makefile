clean:
	@rm -rf .terraform

creat: clean

	@terraform init -backend-config=chanti/terraform
	@terraform apply -auto-approve

destroy:
	@terraform init -backend-config=chanti/terraform
	@terraform destroy -auto-approve