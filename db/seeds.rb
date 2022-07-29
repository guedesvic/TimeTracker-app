@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Victor", last_name: "G")

puts "1 user was created"

AdminUser.create(email: "admin@admin.com", password: "123456", password_confirmation: "123456", first_name: "Admin", last_name: "G")

puts "1 Admin user was created"

100.times do |post|
  Post.create(date: Date.current, rationale: "#{post} rationale content", user_id: @user.id)\
end

puts "100 posts have been created"