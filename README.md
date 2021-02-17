# conoha-terraform-by-spigot

## prepare
```
$ terraform plan -v 'user_name=[username]' -v 'password=[password]' ....
```
or
```
$ export TF_VAR_USER_NAME="[username]"
$ export TF_VAR_PASSWORD="[password]"
$ export TF_VAR_TENANT_NAME="[tenant_id]"
$ export TF_VAR_PUBLIC_KEY="[your-rsa-public-key]"
$ terraform plan -var="image_id=[image_id]"
```


## apply
```
$ terraform apply
```
