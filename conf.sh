# Spark parameters
# ----------------
# Assuming Scala 2.11

# Spark version
readonly SPARK_VERSION="3.1.3"

# Name for the Spark archive
readonly SPARK_NAME="spark-${SPARK_VERSION}-bin-hadoop3.2"

# Spark install location
readonly SPARK_INSTALL_DIR="${HOME}/fink-k8s-tmp"

export SPARK_HOME="${SPARK_INSTALL_DIR}/${SPARK_NAME}"
export PATH="$SPARK_HOME/bin:$PATH"


# Build parameters
# ----------------
# Repository address
readonly REPO="gitlab-registry.in2p3.fr/astrolabsoftware/fink"
# Tag to apply to the built image, or to identify the image to be pushed
readonly IMAGE_TAG="k8s-$SPARK_VERSION"
# WARNING "spark-py" is hard-coded in spark build script
readonly IMAGE="$REPO/spark-py:$IMAGE_TAG"
