json.array!(@activity_posts) do |activity_post|
  json.extract! activity_post, :id, :title, :content
  json.url activity_post_url(activity_post, format: :json)
end
