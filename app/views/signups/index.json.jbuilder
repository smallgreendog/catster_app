json.array!(@signups) do |signup|
  json.extract! signup, :id, :email_address
  json.url signup_url(signup, format: :json)
end
