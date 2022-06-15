FactoryGirl.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    email { generate :email }
    password "123456"
    password_confirmation "123456"
    first_name "Victor"
    last_name "G"
  end

  factory :admin_user, class: "AdminUser" do
    email { generate :email }
    password "123456"
    password_confirmation "123456"
    first_name "Admin"
    last_name "User"
  end
end