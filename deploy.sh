docker built -t new-image:latest
docker buildx build --platform linux/amd64 --provenance=false -t new-image:latest .
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 801537446798.dkr.ecr.us-east-1.amazonaws.com
aws ecr create-repository --repository-name demo-test --region us-east-1 --image-scanning-configuration scanOnPush=true --image-tag-mutability MUTABLE
docker tag new-image:latest 801537446798.dkr.ecr.us-east-1.amazonaws.com/demo-test:latest
docker push 801537446798.dkr.ecr.us-east-1.amazonaws.com/demo-test:latest
