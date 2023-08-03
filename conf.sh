# Spark parameters
# ----------------
# Assuming Scala 2.11

# Spark version
readonly SPARK_VERSION="3.4.1"

# Name for the Spark archive
readonly SPARK_NAME="spark-${SPARK_VERSION}-bin-hadoop3"

# Spark install location
readonly SPARK_INSTALL_DIR="${HOME}/fink-k8s-tmp"

export SPARK_HOME="${SPARK_INSTALL_DIR}/${SPARK_NAME}"
export PATH="$SPARK_HOME/bin:$PATH"


# Build parameters
# ----------------
# Java base image
# TODO test "11-jre-slim" which is not more based on alpine and might work
readonly JAVA_IMAGE_TAG="11-jre"
# Repository address
readonly REPO="gitlab-registry.in2p3.fr/astrolabsoftware/fink"
# Tag to apply to the built image, or to identify the image to be pushed
# FIXME use a git annotated tag to make it safer (current setup is a rolling tag)
readonly IMAGE_TAG="k8s-$SPARK_VERSION"
# WARNING "spark-py" is hard-coded in spark build script
readonly IMAGE="$REPO/spark-py:$IMAGE_TAG"
