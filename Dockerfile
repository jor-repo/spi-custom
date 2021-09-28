#FROM de conexión para la descarga de imagen oficial
FROM registry.redhat.io/rh-sso-7/sso74-openshift-rhel8:7.4

#usuario a utilizar dentro de la imagen
USER root

#copiar los archivos necesarios
COPY access-user-federation-1.0.0.jar /opt/eap/standalone/deployments


#RUN /opt/eap/bin/jboss-cli.sh --file="/opt/eap/bin/configip.cli"

#creación del usuario admin

#RUN /opt/eap/bin/add-user.sh -u admin -p admin
#RUN /opt/eap/bin/add-user-keycloak.sh -u admin -p admin

#cambiar al usuario de openshift
USER 185