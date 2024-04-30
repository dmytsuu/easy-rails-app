# frozen_string_literal: true

json.extract! mobile_app, :id, :name, :link, :created_at, :updated_at
json.url mobile_app_url(mobile_app, format: :json)
