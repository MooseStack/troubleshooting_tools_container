FROM docker.io/fedora:43

RUN dnf -y update && \
    dnf -y install \
        telnet \
        curl \
        bind-utils \
        iproute \
        net-tools \
        traceroute \
        tcpdump \
        lsof \
        vim-minimal \
        less \
        procps-ng \
        bash-completion \
        nmap \
        htop \
        nc \
        wget \
        mtr \
        whois \
        strace \
        iputils \
        rsync && \
    dnf clean all

CMD ["bash", "-c", "sleep infinity"]