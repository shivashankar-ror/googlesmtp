Fabricator(:user) do 
  email { FFaker::Internet.email }
  password "password1"
  password_confirmation "password1"
end