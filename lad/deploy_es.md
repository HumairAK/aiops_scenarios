We provide a simple openshift template to deploy elastic search: 

`oc process -f ./openshift/aiops_lad_core.elasticsearch.storage.yaml | oc apply -f - -n ${NAMESPACE}`{{execute}}
