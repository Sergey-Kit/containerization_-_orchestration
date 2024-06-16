kubectl delete -f configmap.yml
kubectl delete -f jupyter_secret.yml
kubectl delete -f postgres_secret.yml
kubectl delete -f service.yml
kubectl delete -f postgres_deployment.yml
kubectl delete -f jupyter_deployment.yml

kubectl delete pods --all
kubectl delete services --all
kubectl delete deployments --all
kubectl delete configmaps --all
kubectl delete secrets --all