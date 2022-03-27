FROM hashicorp/terraform AS terraform-bin

FROM boltops/terraspace:ubuntu

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

# Create the user, update folder permissions
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME -s /bin/bash

COPY --from=terraform-bin /bin/terraform /usr/local/bin/terraform
RUN chown $USER_UID:$USER_GID -R /opt/terraspace/ \
    && chmod a+x /usr/local/bin/terraform

USER $USERNAME
