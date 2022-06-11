create-infrastructure:
	gcloud container clusters create atforestry-cluster \
    --region "us-central1" \
    --machine-type "e2-standard-4" --disk-type "pd-standard" --disk-size "500" \
    --num-nodes "3" --node-locations "us-central1-a"
	gcloud artifacts repositories create "atforestry-repo" --repository-format=Docker --location=us-central1
	kubectl apply -f ./yamls

deploy-services:
	kubectl apply -f ./yamls
	
delete-services:
	kubectl delete -f ./yamls

reset-db:
	kubectl exec -it `kubectl get pods -l app=postgres -o wide | grep -v NAME | awk '{print $$1}'` -- psql -U postgres < ./db/schema.sql
	
delete-cluster:
	gcloud container clusters delete atforestry-cluster --region us-central1

auth:
	gcloud container clusters get-credentials atforestry-cluster --region us-central1