env:
	cp -n .env.example .env

apply:
	terraform apply

plan:
	terraform plan

destroy:
	terraform destroy
