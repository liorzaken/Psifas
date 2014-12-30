json.array!(@users) do |user|
  json.extract! user, :id, :userName, :password, :fullName, :manager
  json.url user_url(user, format: :json)
end
