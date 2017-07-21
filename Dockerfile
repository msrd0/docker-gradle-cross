# this is based on debian stretch right now
FROM gradle

USER root
RUN apt-get -y update \
	&& apt-get -y install --no-install-recommends \
		build-essential \
		clang \
		g++-multilib \
		gcc-multilib \
		g++-arm-linux-gnueabihf \
		gcc-arm-linux-gnueabihf \
		lib32gcc-6-dev \
		libc6-dev-x32 \
		mingw-w64 \
		sudo \
	&& echo 'gradle ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/gradle \
	&& rm -rf /var/lib/apt/lists/*

USER gradle
