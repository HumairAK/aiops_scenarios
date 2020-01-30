For this setup we've prepared a very simple custom resource that will leverage ODH to deploy Argo. 

`cat ../sample_cr.yaml`{{execute}}

Deploy Argo using the custom resource manifest for your environment by entering the following command.

`oc apply -f ../sample_cr.yaml`{{execute}}

Wait for Argo to spin up, once ready you can visit argo at the following link: 

`echo http://$(oc get route argo-ui-route | awk 'NR==2{print $2}')`{{execute}}
