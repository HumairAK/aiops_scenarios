#!/usr/bin/env bash
echo """apiVersion: opendatahub.io/v1alpha1
kind: OpenDataHub
metadata:
  name: example-opendatahub
spec:
  argo:
    odh_deploy: true
""" > sample_cr.yaml