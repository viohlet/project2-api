#index
curl --include --request GET http://localhost:3000/user_stories \
  --header "Authorization: Token token=BAhJIiU2NjRlNzJmNzI1NjY3MDhmZTFhYTEyN2FjMDQzZmQ1OAY6BkVG--868f7559dd5e0bf676deda7deaf28e46cbad646d"

#show
curl --include --request GET http://localhost:3000/user_stories/2 \
  --header "Authorization: Token token=BAhJIiU2NjRlNzJmNzI1NjY3MDhmZTFhYTEyN2FjMDQzZmQ1OAY6BkVG--868f7559dd5e0bf676deda7deaf28e46cbad646d"

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
  --header "Authorization: Token token=BAhJIiU2NjRlNzJmNzI1NjY3MDhmZTFhYTEyN2FjMDQzZmQ1OAY6BkVG--868f7559dd5e0bf676deda7deaf28e46cbad646d" \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "admin",
      "action": "access restricted content",
      "goal": "manage site"
    }
  }'

# update
curl --include --request PATCH http://localhost:3000/user_stories/3 \
--header "Authorization: Token token=BAhJIiU2NjRlNzJmNzI1NjY3MDhmZTFhYTEyN2FjMDQzZmQ1OAY6BkVG--868f7559dd5e0bf676deda7deaf28e46cbad646d" \
  --header "Content-Type: application/json" \
  --data '{
    "user_story": {
      "role": "visitor",
      "action": "play",
      "goal": "I do not want to sign-up for this site!"
    }
  }'

  #destroy
  curl --include --request DELETE http://localhost:3000/user_stories/2 \
  --header "Authorization: Token token=BAhJIiU2NjRlNzJmNzI1NjY3MDhmZTFhYTEyN2FjMDQzZmQ1OAY6BkVG--868f7559dd5e0bf676deda7deaf28e46cbad646d" \
    --header "Content-Type: application/json"
