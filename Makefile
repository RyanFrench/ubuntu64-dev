push:
	packer push --name=RyanFrench/ubuntu64-dev template.json

validate:
	packer validate template.json
