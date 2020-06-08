npm run build
aws s3 sync dist s3://test.sampleproject.io --delete
aws cloudfront create-invalidation --distribution-id EBD0280B3P2AS --paths "/*"