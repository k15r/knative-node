FROM kubeless/nodejs@sha256:5c3c21cf29231f25a0d7d2669c6f18c686894bf44e975fcbbbb420c6d045f7e7

USER root
RUN mkdir /kubeless && cp /src/handler.js /kubeless
USER node
