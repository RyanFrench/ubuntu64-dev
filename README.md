# ubuntu64-dev
Packer template for generating an Ubuntu 64 based VM with Ruby/RBENV and NodeJS installed

To use this template, the following variables need to be set in the build in Atlas

```
ATLAS_NAME=centos7-dev
ATLAS_USERNAME=<your username>
```

The Rakefile will also need to be modified to point at your own Atlas username for uploads.
