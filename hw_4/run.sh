kubectl create -f configmap.yml
kubectl create -f jupyter_secret.yml
kubectl create -f postgres_secret.yml
kubectl create -f service.yml
kubectl create -f postgres_deployment.yml
kubectl create -f jupyter_deployment.yml