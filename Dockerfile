FROM alpine

WORKDIR /pocketbase
RUN apk update
RUN apk add wget
RUN apk add unzip
RUN wget https://github.com/pocketbase/pocketbase/releases/download/v0.7.9/pocketbase_0.7.9_linux_amd64.zip
RUN unzip pocketbase_0.7.9_linux_amd64.zip
RUN rm pocketbase_0.7.9_linux_amd64.zip
CMD [ "/pocketbase/pocketbase", "serve" ]