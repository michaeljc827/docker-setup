FROM debian:wheezy

#make .sh file executable
COPY docker-entrypoint.sh /usr/local/bin/
RUN ["chmod", "+x", "/usr/local/bin/docker-entrypoint.sh"]

#create data dir and make it a volume
RUN mkdir /data
VOLUME /data

#call the entrypoint shell script
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
#RUN echo "some file content" > /data/x

#allows container to live while doing nothing
CMD exec /bin/sh -c "trap : TERM INT; sleep infinity & wait"