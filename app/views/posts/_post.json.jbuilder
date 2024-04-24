# frozen_string_literal: true

json.extract! post, :id, :title, :content, :slug, :user_id, :discarded_at, :created_at, :updated_at
json.url post_url(post, format: :json)
json.content post.content.to_s
