# project2-api  -  User Stories Wizard (Back-end)

Live application: https://viohlet.github.io/project2-client/

Front-end repository: https://github.com/viohlet/project2-client

## About

The purpose of this app is to make the web development process easier. Even
though I am old-school and loyal to my pen and paper, I find myself losing my
user stories all the time in the early stages or brainstorming process. With an
app like this one, fellow developers can have all their projects and user
stories in one place. Thanks for visiting my app!

## API end-points

| Verb   | URI Pattern            | Controller#Action     |
| ----   | -----------            | -----------------     |
| POST   | `/sign-up`             | `users#signup`        |
| POST   | `/sign-in`             | `users#signin`        |
| DELETE | `/sign-out/id`         | `users#signout`       |
| PATCH  | `/change-password/id`  | `users#changepw`      |
| GET    | `/projects`            | `projects#index`      |
| POST   | `/projects`            | `projects#create`     |
| PATCH  | `/projects/id`         | `projects#update`     |
| DELETE | `/projects/id`         | `projects#destroy`    |
| GET    | `/user_stories`        | `user_stories#index`  |
| POST   | `/user_stories`        | `user_stories#create` |
| PATCH  | `/user_stories/id`     | `user_stories#update` |
| DELETE | `/user_stories/id`     | `user_stories#destroy`|

All data returned from API actions is formatted as JSON.
