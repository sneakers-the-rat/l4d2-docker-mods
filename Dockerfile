FROM left4devops/l4d2 AS base

WORKDIR /home/louis
USER louis

ARG GAME_ID=222860 \
    INSTALL_DIR="l4d2" \
    DEFAULT_MAP="c14m1_junkyard"

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

ADD entrypoint_mods.sh .
ENTRYPOINT ["./entrypoint_mods.sh"]
