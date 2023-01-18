# k8s-spark-py

Build spark-py image for Kubernetes

# Customize image

The goal is to remain closest from the standard build documented here:
https://spark.apache.org/docs/latest/running-on-kubernetes.html#docker-images

However, it is possible to customize the build by adding files inside the custom/ directory. This file will be copied to SPARK_HOME just before building the container images. Currenly `avro`, `hbase` and `kafka` java libraries are added.
