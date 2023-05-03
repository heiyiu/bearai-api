FROM python:3.11-slim

ARG USERNAME=apiuser
ARG USER_UID=1012
ARG USER_GID=1012
ARG HOME_DIR=/home/$USERNAME/app

# Install required dependencies
RUN apt update && \
    apt upgrade -y && \
    apt install -y --no-install-recommends libffi-dev libnacl-dev python3-dev

# Create bot user and switch to bot user
RUN groupadd --gid $USER_GID $USERNAME \
    && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
USER $USERNAME

# Install python req
WORKDIR $HOME_DIR
COPY requirements.txt $HOME_DIR/requirements.txt
RUN python3 -m pip install -r $HOMEDIR/requirements.txt --user --upgrade

COPY ./app $HOME_DIR/app
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "80", "--proxy-headers"]