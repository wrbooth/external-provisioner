FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Provisioner"

ARG ARCH

COPY ./bin/csi-provisioner-${ARCH} csi-provisioner
ENTRYPOINT ["/csi-provisioner"]
