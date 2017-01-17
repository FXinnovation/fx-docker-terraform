# Terraform
## Description
This container contains terraform, it is based on the official alpine image to be
more lightwieght.
## Usage
```
docker run --rm -it -v $(pwd):/data [image] help
```
For this image to work, you need to run this command form the folder where the terraform files are present. The credentials that might be needed have to be in the same folder and the terraform configuration has to reference it.

[image] wil have to be replaced with the actual image. Since the image isn't published yet, we don't know what the actual value will be.
## Building the image
```
docker build -t [image_name]:[image_tag] .
```
