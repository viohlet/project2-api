#index
curl --include --request GET http://localhost:3000/user_stories \
  --header "Authorization: Token token=BAhJIiU2NmFlYWQ5ZTVhNGVhNWE4OGUzZDYwYzE3YTAzZWVjNwY6BkVG--a57d67331fabfb6c350edd8f580aa8fe855a9c04"

#show

#create
curl --include --request POST http://localhost:3000/user_stories \
  --header "Authorization: Token token=BAhJIiU2NmFlYWQ5ZTVhNGVhNWE4OGUzZDYwYzE3YTAzZWVjNwY6BkVG--a57d67331fabfb6c350edd8f580aa8fe855a9c04" \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "visitor",
      "action": "play",
      "goal": "I do not want to register"
      "project_id": "9"
    }
  }'

curl --include --request POST http://localhost:3000/user_stories \
  --header "Authorization: Token token=BAhJIiU2NmFlYWQ5ZTVhNGVhNWE4OGUzZDYwYzE3YTAzZWVjNwY6BkVG--a57d67331fabfb6c350edd8f580aa8fe855a9c04" \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "visitor",
      "action": "play",
      "goal": "I do not want to register"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/user_stories/7 \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "visitor",
      "action": "play",
      "goal": "I do not want to register",
      "project_id": "6"
    }
  }'

  #destroy
  curl --include --request DELETE http://localhost:3000/user_stories/6 \
    --header "Content-Type: application/json"
