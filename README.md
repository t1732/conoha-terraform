# conoha-terraform-by-spigot

## run
```bash
$ terraform init
```

```bash
$ terraform plan -v 'user_name=[username]' -v 'password=[password]' ....
```
or
```bash
$ export TF_VAR_USER_NAME=[username]
$ export TF_VAR_PASSWORD=[password]
$ export TF_VAR_TENANT_NAME=[tenant_id]
$ export TF_VAR_PUBLIC_KEY=[your-rsa-public-key]
$ export GOOGLE_APPLICATION_CREDENTIALS=[gcp_credential_json_path]
$ terraform plan -var="image_id=[image_id]"
```

### apply
```bash
$ terraform apply
```
### destroy
```bash
$ terraform destroy
```

## Github action local run

### install act
```bash
$ brew install act
```

```env
# .secrets 
USER_NAME=[user_name]
PASSWORD=[password]
TENANT_ID=[tenant_id]
PUBLIC_KEY=[public_key]
IMAGE_ID=[image_id]
GOOGLE_APPLICATION_CREDENTIALS=[gcp_credential_json]
```

### repository_dispatch apply event
```json
// client_payload_apply.json
{
  "action": "apply",
  "client_payload": {
    "image_id": [image_id]
  }
}
```

```bash
$ act -e client_payload_apply.json repository_dispathc
```

### repository_dispatch destroy event
```json
// client_payload_destroy.json
{
  "action": "destroy",
  "client_payload": {
    "image_id": [image_id]
  }
}
```

```
$ act -e client_payload_destroy.json repository_dispathc 
```

### call Github action API
* call apply event
```bash
$ curl -i -X POST --header 'accept: application/vnd.github.v3+json' --header 'authorization: Bearer [token]' --data '{"event_type": "apply", "client_payload": {"image_id": "[image_id]"}}' https://api.github.com/repos/t1732/conoha-terraform-by-spigot/dispatches
```
* call destroy event
```bash
$ curl -i -X POST --header 'accept: application/vnd.github.v3+json' --header 'authorization: Bearer [token]' --data '{"event_type": "destroy", "client_payload": {"image_id": "[image_id]"}}' https://api.github.com/repos/t1732/conoha-terraform-by-spigot/dispatches
```
