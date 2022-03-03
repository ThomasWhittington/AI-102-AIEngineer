@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=7a7bf817-0542-49da-96bc-082c1f8c3269
set azure_storage_account=twhittstorage
set azure_storage_key=rl4NYt+t7Jw7+saqHgiLVuWklXH71NGRJwhe9e+3EIQOTDbt2gQwSiULdZylrDMTDG6jubZ0058VNJF97HKt3g==
‌‌

echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
