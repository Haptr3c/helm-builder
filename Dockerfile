FROM docker:18

RUN apk add --no-cache python py-pip curl openssl bash && \
    pip install awscli
RUN curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.20.0/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/
RUN curl -LO https://git.io/get_helm.sh && \
    chmod +x get_helm.sh && \
    ./get_helm.sh --version v3.5.1
