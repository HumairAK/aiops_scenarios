Clone the ODH repository form gitlab. 

`git clone https://gitlab.com/opendatahub/opendatahub-operator.git`{{execute}}

Navigate to the cloned directory

`cd opendatahub-operator`{{execute}}

To login to the OpenShift cluster from the _Terminal_ run:

`oc login -u admin -p admin`{{execute}}

Create your openshift project to work in.

`oc new-project odh`{{execute}}

Add the OpenDataHub custom resource definition to OpenShift by entering the following command.

`oc apply -f deploy/crds/opendatahub_v1alpha1_opendatahub_crd.yaml`{{execute}}

We'll be installing Argo for demo purposes.
To do this add the Workflow custom resource definition to OpenShift by entering the following command.

`oc apply -f deploy/crds/argo-crd.yaml`{{execute}}

Configure role-based access control (RBAC) for the operator by entering the following commands.

`oc apply -f deploy/service_account.yaml`{{execute}}

`oc apply -f deploy/role.yaml`{{execute}}

`oc apply -f deploy/role_binding.yaml`{{execute}}

Deploy the Open Data Hub operator by entering the following command.

`oc apply -f deploy/operator.yaml`{{execute}}