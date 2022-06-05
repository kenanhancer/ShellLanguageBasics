#!/bin/bash

# list Azure KeyVault services.
az keyvault list | jq -r '.[].name' | while read keyVault; do echo "keyVault name is $keyVault"; done

# find a created Azure KeyVault service in KeyVault list.
az keyvault list | jq -r '.[].name' | grep 'KV-TEST'

# list secrets in Azure KeyVault service named KV-TEST
az keyvault secret list --vault-name KV-TEST | jq -r '.[].name'

# find a secret named AzureWebJobsStorage in Azure KeyVault service.
az keyvault secret list --vault-name KV-TEST | jq -r '.[].name' | grep 'AzureWebJobsStorage'