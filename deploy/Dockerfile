FROM ubuntu:xenial

ENV METEORD_DIR /opt/meteord
COPY scripts $METEORD_DIR

ARG NODE_VERSION
ENV NODE_VERSION ${NODE_VERSION:-8.11.2}
ONBUILD ENV NODE_VERSION ${NODE_VERSION:-8.11.2}

RUN bash $METEORD_DIR/lib/install_base.sh
RUN bash $METEORD_DIR/lib/install_dependencies.sh
RUN bash $METEORD_DIR/lib/install_git-crypt.sh
RUN bash $METEORD_DIR/lib/install_node.sh
RUN bash $METEORD_DIR/lib/install_meteor.sh
RUN bash $METEORD_DIR/lib/cleanup.sh
