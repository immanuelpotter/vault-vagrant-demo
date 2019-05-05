#!/bin/bash
VAULT_TOKEN=$(curl -sS --fail -XPOST --data '{"password":"devopsbr"}' http://192.168.50.152:8200/v1/auth/userpass/login/linuxbox | jq -r ".auth.client_token")
MY_NEW_PASS=$(curl -S -H "X-Vault-Token: $VAULT_TOKEN" http://192.168.50.152:8200/v1/secret/hello)
echo $MY_NEW_PASS
