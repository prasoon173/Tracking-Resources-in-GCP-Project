#!/bin/bash
for PROJECT in $(gcloud projects list --format="value(projectId)")
do  
    echo "PROJECT:${PROJECT}"
    # echo "Displaying Basic Project Info:"
    # Project_Info= $(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='cloudresourcemanager.googleapis.com/Project' --format=flattened)
    # if [[ $Project_Info ]]; then
    #     echo "${Project_Info}"
    # fi

    echo "Checking for Compute Engine in Active State:"
    GCE= $(gcloud asset search-all-resources --query='state=ACTIVE' --scope=projects/${PROJECT} --asset-types='compute.googleapis.com/Instance' --format='table(name, assetType, location)')
    if [[ $GCE ]]; then
        echo "${GCE}"
    else
        echo "No Compute Engine with Active State Present in the the Project ${PROJECT}"
    fi    


    echo "Checking for Network in the currrent Project ${PROJECT}:"
    NETWORK=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='compute.googleapis.com/Network' --format=flattened)
    if [[ $NETWORK ]]; then
        echo "${NETWORK}"
    else
        echo "No Network Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Firewall Rules in the currrent Project ${PROJECT}:"
    Firewall_Rules=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='compute.googleapis.com/Firewall' --format=flattened)
    if [[ $Firewall_Rules ]]; then
        echo "${Firewall_Rules}"
    else
        echo "No Firewall Rules Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Kubernetes cluster in the currrent Project ${PROJECT}:"
    Kubernetes_Cluster=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='container.googleapis.com/Cluster' --format=flattened)
    if [[ $Kubernetes_Cluster ]]; then
        echo "${Kubernetes_Cluster}"
    else
        echo "No Kubernetes cluster Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Kubernetes Node Pool in the currrent Project ${PROJECT}:"
    Kubernetes_Node_pool=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='container.googleapis.com/NodePool' --format=flattened)
    if [[ $Kubernetes_Node_pool ]]; then
        echo "${Kubernetes_Node_pool}"
    else
        echo "No Kubernetes Node Pool in the the Project ${PROJECT}"
    fi


    echo "Checking for Kubernetes Node  in the currrent Project ${PROJECT}:"
    Kubernetes_Node=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='k8s.io/Node' --format=flattened)
    if [[ $Kubernetes_Node ]]; then
        echo "${Kubernetes_Node}"
    else
        echo "No Kubernetes Node Pool in the the Project ${PROJECT}"
    fi

    echo "Checking for Kubernetes Pod  in the currrent Project ${PROJECT}:"
    Kubernetes_Pod=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='k8s.io/Pod' --format=flattened)
    if [[ $Kubernetes_Pod ]]; then
        echo "${Kubernetes_Pod}"
    else
        echo "No Kubernetes Node Pool in the the Project ${PROJECT}"
    fi

    echo "Checking for Kubernetes Deployment  in the currrent Project ${PROJECT}:"
    Kubernetes_Deployment=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='apps.k8s.io/Deployment' --format=flattened)
    if [[ $Kubernetes_Deployment ]]; then
        echo "${Kubernetes_Deployment}"
    else
        echo "No Kubernetes Node Pool in the the Project ${PROJECT}"
    fi


    echo "Checking for Kubernetes Service  in the currrent Project ${PROJECT}:"
    Kubernetes_Service=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='k8s.io/Service' --format=flattened)
    if [[ $Kubernetes_Service ]]; then
        echo "${Kubernetes_Service}"
    else
        echo "No Kubernetes Node Pool in the the Project ${PROJECT}"
    fi



    echo "Checking for service account in the currrent Project ${PROJECT}:"
    Service_Account=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='iam.googleapis.com/ServiceAccount' --format=flattened)
    if [[ $Service_Account ]]; then
        echo "${Service_Account}"
    else
        echo "No service account Present in the the Project ${PROJECT}"
    fi


    echo "Checking for GCS Bucket in the currrent Project ${PROJECT}:"
    GCS_Bucket=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='storage.googleapis.com/Bucket' --format=flattened)
    if [[ $GCS_Bucket ]]; then
        echo "${GCS_Bucket}"
    else
        echo "No GCS Bucket Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Cloud Function in the currrent Project ${PROJECT}:"
    Cloud_Function=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='cloudfunctions.googleapis.com/CloudFunction' --format=flattened)
    if [[ $Cloud_Function ]]; then
        echo "${Cloud_Function}"
    else
        echo "No Cloud Function Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Billing Account in the currrent Project ${PROJECT}:"
    Billing_Account=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='cloudbilling.googleapis.com/BillingAccount' --format=flattened)
    if [[ $Billing_Account ]]; then
        echo "${Billing_Account}"
    else
        echo "No Billing Account Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Project Billing Info in the currrent Project ${PROJECT}:"
    Billing_Info=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='cloudbilling.googleapis.com/ProjectBillingInfo' --format=flattened)
    if [[ $Billing_Info ]]; then
        echo "${Billing_Info}"
    else
        echo "No Project Billing Info Present in the the Project ${PROJECT}"
    fi


    echo "Checking for Sql Instance in the currrent Project ${PROJECT}:"
    Sql_Instance=$(gcloud asset search-all-resources --scope=projects/${PROJECT} --asset-types='sqladmin.googleapis.com/Instance' --format=flattened)
    if [[ $Sql_Instance ]]; then
        echo "${Sql_Instance}"
    else
        echo "No Sql Instance Present in the the Project ${PROJECT}"
    fi


done
