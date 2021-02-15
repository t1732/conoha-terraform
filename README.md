# conoha-terraform-by-spigot

## prepare
```
$ terraform plan -v 'user_name=[username]' -v 'password=[password]' ....
```
or
```
$ export TF_VAR_user_name="[username]"
$ export TF_VAR_password="[password]"
$ export TF_VAR_tenant_name="[tenant_id]"
$ export TF_VAR_public_key="[your-rsa-public-key]"
$ export TF_VAR_image_id="[image_id]"
$ terraform plan
```


## apply
```
$ terraform apply
```
