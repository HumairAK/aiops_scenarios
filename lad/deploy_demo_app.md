Deploy the demo application that will send logs to elastic search:

`oc process -f https://raw.githubusercontent.com/AICoE/anomaly-detection-demo-app/master/openshift/ad_demo.yaml | oc apply -f - -n ${NAMESPACE}`{{execute}}

Wait for the build to finish:
`oc logs -f builds/$(oc get builds -l app=anomaly-detection-demo | awk 'NR==2{print $1}')`{{execute}}

Then visit the demo route: 
`echo http://$(oc get route anomaly-detection-demo | awk 'NR==2{print $2}')`{{execute}}

Note: It may take some time for the build to finish and the app and route to become available. 

Once done and the page loads successfully, place order in the app for at least 2 items.