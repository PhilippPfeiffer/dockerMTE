FROM tifayuki/java:7
MAINTAINER Philipp Pfeiffer <mailtopfeiffer@gmail.com>

RUN apt-get update && \
apt-get install -y wget unzip pwgen expect && \
wget download.java.net/glassfish/4.0/release/glassfish-4.0.zip && \
unzip glassfish-4.0.zip -d /opt && \
rm glassfish-4.0.zip && \
apt-get clean && \
rm -rf /var/lib/apt/lists/*

COPY MTE.war /opt/glassfish4/glassfish/domains/domain1/autodeploy/MTE.war
COPY MTE.war /opt/glassfish4/bin/MTE.war

ENV PATH /opt/glassfish4/bin:$PATH

ADD run.sh /run.sh
ADD enable_secure_admin.sh /enable_secure_admin.sh

RUN chmod +x /*.sh

EXPOSE 4848 8080 8181

CMD ["/run.sh"]
