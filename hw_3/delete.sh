kubectl delete -f pg_configmap.yml
kubectl delete -f pg_secret.yml
kubectl delete -f pg_service.yml
kubectl delete -f pg_deployment.yml
kubectl delete -f nextcloud.yml

kubectl delete pods --all
kubectl delete services --all
kubectl delete deployments --all
kubectl delete configmaps --all
kubectl delete secrets --all