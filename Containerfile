FROM registry.fedoraproject.org/fedora-toolbox:38

LABEL com.github.containers.toolbox="true"

COPY extra-packages /
RUN dnf update -y
RUN dnf install -y $(<extra-packages)
RUN rm /extra-packages
