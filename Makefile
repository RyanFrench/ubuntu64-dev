push:
	packer push --name=RyanFrench/ubuntu64-dev template.json

validate:
	packer validate template.json

build:
	packer build --only=vmware-iso template.json

install_modules:
	librarian-puppet install --path puppet/modules
