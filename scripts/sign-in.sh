#!/bin/bash

curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "amadeo@amadeo",
      "password": "amadeo"
    }
  }'

  curl --include --request POST http://localhost:3000/sign-in \
    --header "Content-Type: application/json" \
    --data '{
      "credentials": {
        "email": "domingo@domingo",
        "password": "domingo"
      }
    }'
