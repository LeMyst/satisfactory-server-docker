FROM cm2network/steamcmd:root

EXPOSE 15777/udp 15000/udp 7777/udp
ENV STEAMAPPID 1690800
ENV STEAMAPP Satisfactory
ENV STEAMAPPDIR "${HOMEDIR}/${STEAMAPP}-dedicated"

RUN apt update && apt upgrade -y
COPY --chown=${USER}:${USER} entry.sh ${HOMEDIR}/entry.sh
USER ${USER}
RUN mkdir ${STEAMAPPDIR}
VOLUME ${STEAMAPPDIR}
WORKDIR ${HOMEDIR}
ENTRYPOINT ["bash"]
CMD ["entry.sh"]
