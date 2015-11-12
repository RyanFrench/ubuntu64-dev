push:
	packer push --name=RyanFrench/ubuntu64-dev template.json

validate:
	packer validate template.json

build:
	packer build --only=vmware-iso template.json

update_cookbooks:
	berks vendor ./cookbooks
