# Terraform
## Description
This container contains terraform, it is based on the official alpine image to be
more lightwieght.

## Tags
We do publish a latest tag for this image since it is a build image. It allows our CI to always have the latest image with minimal maintenance.

If you want to run a specific version of terraform, please have a look at the other available tags.

Our docker tags will follow the terraform release versions since there is only terraform in the container.

## Usage
```
docker run --rm \
  -v $(pwd):/data \
  fxinnovation/terraform \
  [COMMAND_OPTION]
```

Where [COMMAND_OPTIONS] are the actual commands you want to send to terraform

Since the image's entrypoint is `terraform` you don't need to specify it.

For this image to work, you need to run this command from the folder where the terraform files are present. The credentials that might be needed have to be in the same folder and the terraform configuration has to reference it.

## Comments & Issues
If you have comments or detect an issue, please be adviced we don't check the docker hub comments. You can always contact us through the repository.
