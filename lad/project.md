To login to the OpenShift cluster from the _Terminal_ run:

`oc login -u developer -p developer`{{execute}}

Create your openshift project to work in.

`oc new-project lad`{{execute}}

# Set up environment

`git clone https://github.com/AICoE/log-anomaly-detector.git`{{execute}}

Navigate to LAD directory

`cd log-anomaly-detector`{{execute}} 

Set environment variables for namespace and factstore route (place holder)

`NAMESPACE=lad && FACTSTORE_ROUTE=https://factstore-path.com`{{execute}}




