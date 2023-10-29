FROM postgres:15.1

# Get an UID and a GUI from the docker-compose.yml file
ARG UID
ARG GID

# Set the UID and the GUI as environment variables
ENV UID=${UID}
ENV GID=${GID}

# Change UID and GID of postgres user
RUN usermod -u ${GID} postgres && groupmod -g ${UID} postgres


