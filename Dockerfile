FROM rockylinux/rockylinux:9-minimal AS base

ADD as-root.sh .
RUN ./as-root.sh

WORKDIR /home/louis
USER louis

FROM base AS game

ARG GAME_ID=222860 \
    INSTALL_DIR="l4d2" \
    DEFAULT_MAP="c14m1_junkyard"

EXPOSE 27015/tcp 27015/udp

ADD as-user.sh .
RUN ./as-user.sh

VOLUME ["/addons", "/cfg"]

COPY --chmod=0755 scripts/*.sh /scripts/

ADD install-mod-managers.sh .
RUN ./install-mod-managers.sh

ADD install-base-mods.sh .
RUN ./install-base-mods.sh


ENV DEFAULT_MAP=$DEFAULT_MAP \
    DEFAULT_MODE="coop" \
    PORT=0 \
    HOSTNAME="Left4DevOps" \
    REGION=255 \
    GAME_ID=$GAME_ID \
    INSTALL_DIR=$INSTALL_DIR \
    STEAM_GROUP=0 \
    HOST_CONTENT="" \
    MOTD_CONTENT="Play nice, kill zombies" \
    MOTD=0

ADD entrypoint.sh .
ENTRYPOINT ["./entrypoint.sh"]
