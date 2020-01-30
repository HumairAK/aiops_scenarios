Copy the default Open Data Hub custom resource manifest. Copying this file will allow you to make changes for your environment without disturbing the original file.

`cp deploy/crds/opendatahub_v1alpha1_opendatahub_cr.yaml my_environment_cr.yaml`{{execute}}

Deploy the Open Data Hub using the custom resource manifest for your environment by entering the following command.

`oc apply -f my_environment_cr.yaml`{{execute}}
