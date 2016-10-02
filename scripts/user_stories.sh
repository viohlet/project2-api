#index

#show

#create
curl --include --request POST http://localhost:3000/user_stories \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "visitor",
      "action": "play",
      "goal": "I do not want to register"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/user_stories/4 \
  --header "Content-Type: application/json" \
  "user_story": {
    "role": "visitor",
    "action": "play",
    "goal": "I do not want to register",
    "project_id" = "5"
    }
  }'
