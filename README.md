## ECRの作成

```
aws ecr create-repository --repository-name lambda_ruby_sample --image-scanning-configuration scanOnPush=true
```

## GitHub Actions OIDC
https://github.com/aws-actions/configure-aws-credentials

https://dev.classmethod.jp/articles/github-actions-oidc-configure-aws-credentials/

## CodeBuild

### GitHub Actions経由で
https://github.com/aws-actions/aws-codebuild-run-build
