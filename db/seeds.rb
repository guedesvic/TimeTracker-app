@user = User.create(email: "test@test.com", password: "123456", password_confirmation: "123456", first_name: "Victor", last_name: "G")

puts "The first user was created"

100.times do |post|
  Post.create(date: Date.current, rationale: "#{post} rationale content", user_id: @user.id)
end

puts "100 posts have been created"