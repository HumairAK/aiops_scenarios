To login to the OpenShift cluster from the _Terminal_ run:

``oc login -u developer -p developer``{{execute}}

Create your openshift project to work in.

``oc new-project myproject``{{execute}}

Clone PAD 

``git clone https://github.com/AICoE/prometheus-anomaly-detector.git``{{execute}}

Navigate to the openshift directory where we store our templates. 

``cd prometheus-anomaly-detector/openshift/``{{execute}}

TODO