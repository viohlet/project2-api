# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# %w(antony jeff matt jason).each do |name|
#   email = "#{name}@#{name}.com"
#   next if User.exists? email: email
#   User.create!(email: email,
#                password: 'abc123',
#                password_confirmation: nil)
# end

# User.create([
#               { email: 'violeta@violeta.com',
#                 password: 'violeta' }
#             ])

# Project.create([
#                  { title: 'Tic-tac-toe' },
#                  { title: 'Project5' },
#                  { title: 'Capstone' }
#                ])
#
UserStory.create([
                    { role: 'user',
                      action: 'play',
                      goal: 'The point of Tic-tac-toe',
                      project_id: '1' },
                    { role: 'user',
                      action: 'sign-in',
                      goal: 'I want to access the site',
                      project_id: '2' },
                    { role: 'user',
                      action: 'be impressed',
                      goal: 'it is your last huge project',
                      project_id: '3' }
                 ])
