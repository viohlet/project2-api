#index

#show

#create
curl --include --request POST http://localhost:3000/projects \
  --header "Content-Type: application/json" \
  --data '{
    "projects": {
      "title": "Best project ever"
    }
  }'
