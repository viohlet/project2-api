#index

#show

#create
curl --include --request POST http://localhost:3000/projects \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "title": "Best project ever"
    }
  }'

#update
curl --include --request PATCH http://localhost:3000/projects/4 \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "title": "Worst project ever",
      "user_id": "1"
    }
  }'

  #destroy
curl --include --request DELETE http://localhost:3000/projects/4 \
  --header "Content-Type: application/json"
