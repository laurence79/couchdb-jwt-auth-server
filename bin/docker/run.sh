#!/bin/bash

docker run -p 3001:3000 \
 -e COUCHJWT_COUCH_URL=http://localhost:5984 \
 -e COUCHJWT_PLAIN_SECRET=secret \
 -e COUCHJWT_EXPIRES_IN=86400 \
 laurence79/couch-jwt-auth-server:latest
