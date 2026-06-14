 !/bin/bash
 # verify is the cluster has an OIDC provider associated with it
  ubuntu@ip-10-0-101-88:~$ aws eks describe-cluster --name terraform-cluster --query "cluster.identify.oidc.issuer" --output text
  #Download an IAM policy for the AWS Load Balancer Controller that allows it to make calls to AWS APIs on your behalf.
  curl -O https://raw.githubusercontent.com/kubernetes-sigs/aws-load-balancer-controller/v2.14.1/docs/install/iam_policy.json
  #Create an IAM policy using the policy downloaded in the previous step.
  aws iam create-policy \
    --policy-name AWSLoadBalancerControllerIAMPolicy \
    --policy-document file://iam_policy.json
  #create a role and service account for the AWS Load Balancer Controller to use when making API calls to AWS.
  eksctl create iamserviceaccount \
    --cluster=<cluster-name> \
    --namespace=kube-system \
    --name=aws-load-balancer-controller \
    --attach-policy-arn=arn:aws:iam::<AWS_ACCOUNT_ID>:policy/AWSLoadBalancerControllerIAMPolicy \
    --override-existing-serviceaccounts \
    --region <aws-region-code> \
    --approve
# install the AWS Load Balancer Controller using Helm
 helm repo add eks https://aws.github.io/eks-charts   
# update your local Helm chart repository cache
 helm repo update eks
# Install the AWS Load Balancer Controller 
  helm upgrade -i aws-load-balancer-controller eks/aws-load-balancer-controller \
  -n kube-system \
  --set clusterName=<CLUSTER-NAME> \
  --set region=us-east-1 \
  --set vpcId=<YOUR-ACTUAL-EKS-VPC-ID> \
  --set serviceAccount.create=false \
  --set serviceAccount.name=aws-load-balancer-controller \
  --set controllerConfig.featureGates.NLBGatewayAPI=true \
  --set controllerConfig.featureGates.ALBGatewayAPI=true \
  --version 3.0.0
# verify the installation of the AWS Load Balancer Controller
 kubectl get deployment -n kube-system aws-load-balancer-controller