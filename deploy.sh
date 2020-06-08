npm run build
aws s3 sync dist s3://<s3 bucket name> --delete
