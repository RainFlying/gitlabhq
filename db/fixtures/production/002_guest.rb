guest = User.create(
  email: "guest@local.host",
  name: "guest",
  username: 'guest',
  password: "guestpasswd",
  password_confirmation: "guestpasswd"
)

guest.projects_limit = 0
guest.can_create_team = false
guest.can_create_group = false
guest.save!

if guest.valid?
  puts "Guest account created"
end
