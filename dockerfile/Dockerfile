FROM	lingjiehao/ubuntu:18.04

RUN	apt-get update -qq && apt-get install -yqq --no-install-recommends \
	ack-grep android-tools-fsutils antlr3 asciidoc autoconf automake autopoint \
	bc binutils bison build-essential bzip2 \
	curl \
	debootstrap device-tree-compiler \
	exfat-fuse exfat-utils \
	flex gawk \
	gcc-multilib genext2fs gettext git git g++-multilib gperf \
	help2man \
	java-propose-classpath \
	lib32gcc1 libc6-dev-i386 libcurl4-openssl-dev libelf-dev libelf-dev libglib2.0-dev libjson-perl liblz4-tool libmnl-dev libncurses5-dev libqt5core5a \
	libqt5gui5 libqt5opengl5 libqt5printsupport5 libqt5widgets5 libqt5x11extras5 libsdl1.2debian libssh-dev libssl-dev libtool libtool-bin libxml2-utils \
	libz-dev \
	linux-libc-dev lzip lzop \
	make msmtp \
	openjdk-8-jdk \
	p7zip p7zip-full patch patchelf pkg-config \
	python3 python3-dev python-dev python-networkx \
	qemu-user-static qemu-utils \
	rsync subversion swig texinfo time tree u-boot-tools uglifyjs unzip upx xfonts-utils xmlto xsltproc zip zlib1g zlib1g-dev \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo && \
  chmod +x /usr/bin/repo

ENV	FORCE_UNSAFE_CONFIGURE 1
