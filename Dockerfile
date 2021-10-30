FROM cm2network/steamcmd:root
RUN apt update && apt upgrade -y
ENV STEAMAPPID 1690800
ENV STEAMAPP Satisfactory
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"
COPY --chown=${USER}:${USER} entry.sh ${HOMEDIR}/entry.sh
USER ${USER}
VOLUME ${STEAMAPPDIR}
WORKDIR ${HOMEDIR}
CMD ["bash", "entry.sh"]
EXPOSE 15777/udp 15000/udp 7777/udp
