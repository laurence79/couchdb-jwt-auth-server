FROM node:8.11.3-jessie

RUN npm -g config set user root

COPY . /usr/local
WORKDIR /usr/local
RUN npm install
RUN npm run-script build

ENTRYPOINT node cli --couchdb ${COUCHJWT_COUCH_URL} --secret ${COUCHJWT_PLAIN_SECRET} --expiresIn ${COUCHJWT_EXPIRES_IN} --bindAddress 0.0.0.0