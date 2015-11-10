json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body, :tags, :created_at, :user_id
  json.url post_url(post, format: :json)
end
