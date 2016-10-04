#index
curl --include --request GET http://localhost:3000/projects \
  --header "Authorization: Token token=BAhJIiU3NDUzZDYyODNkNTg3MDRiNDM0OGZmMGJmMTZmNDRlMgY6BkVG--a463cc771ae138874ba2dfbc1bcc4a2d6e883994"

curl --include --request GET http://localhost:3000/projects \
  --header "Authorization: Token token=BAhJIiU2NmFlYWQ5ZTVhNGVhNWE4OGUzZDYwYzE3YTAzZWVjNwY6BkVG--a57d67331fabfb6c350edd8f580aa8fe855a9c04"

#show
curl --include --request GET http://localhost:3000/projects/1 \
  --header "Authorization: Token token=BAhJIiVhYjg3MjNmMjM2N2U1OTkxMTE0NjI5OTAxMjJjOWM5YwY6BkVG--7ab877bcd7248193a819c9f99b949f7776bdd2d1"

#create
curl --include --request POST http://localhost:3000/projects \
  --header "Authorization: Token token=BAhJIiU2NmFlYWQ5ZTVhNGVhNWE4OGUzZDYwYzE3YTAzZWVjNwY6BkVG--a57d67331fabfb6c350edd8f580aa8fe855a9c04" \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "title": "New one"
    }
  }'

# curl --include --request POST http://localhost:3000/projects \
#   --header "Content-Type: application/json" \
#   --data '{
#     "project": {
#       "title": "Best project ever"
#     }
#   }'

#update
curl --include --request PATCH http://localhost:3000/projects/1 \
  --header "Authorization: Token token=BAhJIiVhYjg3MjNmMjM2N2U1OTkxMTE0NjI5OTAxMjJjOWM5YwY6BkVG--7ab877bcd7248193a819c9f99b949f7776bdd2d1" \
  --header "Content-Type: application/json" \
  --data '{
    "project": {
      "title": "New one 2",
      "user_id": "2"
    }
  }'

  #destroy
curl --include --request DELETE http://localhost:3000/projects/1 \
  --header "Authorization: Token token=BAhJIiVhYjg3MjNmMjM2N2U1OTkxMTE0NjI5OTAxMjJjOWM5YwY6BkVG--7ab877bcd7248193a819c9f99b949f7776bdd2d1" \
  --header "Content-Type: application/json"
