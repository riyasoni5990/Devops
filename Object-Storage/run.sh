echo "$ACCESS_KEY:$SECRET_KEY" > passwd && chmod 600 passwd
s3fs "$S3_BUCKET" "$MNT_POINT" -o passwd_file=passwd -o allow_other -o url=https://s3.us.cloud-object-storage.appdomain.cloud && tail -f /dev/null
