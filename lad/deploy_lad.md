Edit the config map: 

`awk -i inplace 'NR==146{print "        TRAIN_TIME_SPAN: 9000"}1' openshift/log-anomaly-detector-minishift.yaml`{{execute}}

`awk -i inplace 'NR==147{print "        TRAIN_MAX_ENTRIES: 10000"}1' openshift/log-anomaly-detector-minishift.yaml`{{execute}}

`awk -i inplace 'NR==148{print "        TRAIN_ITERATIONS: 10000"}1' openshift/log-anomaly-detector-minishift.yaml`{{execute}}

`awk -i inplace 'NR==149{print "        INFER_MAX_ENTRIES: 10000"}1' openshift/log-anomaly-detector-minishift.yaml`{{execute}}

Deploy lad, we leave factstore out for now.

`oc process -f ./openshift/log-anomaly-detector-minishift.yaml -p FACT_STORE_URL=${FACTSTORE_ROUTE} -p ES_ENDPOINT="lad-elasticsearch-service.${NAMESPACE}.svc:9200" | oc apply -f - -n ${NAMESPACE}`{{execute}}

Wait for lad to build and deploy: 

`oc logs -f builds/$(oc get builds -l app=log-anomaly-detector | awk 'NR==2{print $1}')`{{execute}}

Check that the deployment is running

`oc get pods -l app=log-anomaly-detector-demo`{{execute}}

Check out the pod logs to see LAD at work. 

`oc logs -f --tail=30 $(oc get pods -l app=log-anomaly-detector-demo | awk 'NR==2{print $1}')`{{execute}}



