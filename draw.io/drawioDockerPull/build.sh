# docker build -t drawio-custom:14 .
#!/bin/bash

VERSAO="0.4"
DHUSER="feer1999"

## Download da imagem
docker pull jgraph/drawio:21.7.5

## Cria a imagem
docker build -t ${DHUSER}/drawio:${VERSAO} .


# ## Define a nova imagem como latest
docker tag ${DHUSER}/drawio:${VERSAO} ${DHUSER}/drawio


# #Push das imagens para o Docker Hub
docker login
docker push ${DHUSER}/drawio:${VERSAO}
docker push ${DHUSER}/drawio
