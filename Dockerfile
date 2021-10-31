FROM cm2network/steamcmd:root
LABEL maintainer=LeMyst

EXPOSE 15777/udp 15000/udp 7777/udp
ENV STEAMAPPID 1690800
ENV STEAMAPP Satisfactory
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"

VOLUME ${STEAMAPPDIR}

RUN apt-get update && apt-get upgrade -y && rm -rf /var/lib/apt/lists/*
COPY --chown=${USER}:${USER} entry.sh ${HOMEDIR}/entry.sh
RUN mkdir ${STEAMAPPDIR} && chown ${USER}:${USER} ${STEAMAPPDIR}
USER ${USER}
WORKDIR ${HOMEDIR}
ENTRYPOINT ["bash"]
CMD ["entry.sh"]
