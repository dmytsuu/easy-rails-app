# frozen_string_literal: true

module Posts
  class PostCreateJob < ApplicationJob
    queue_as :default

    def perform(id)
      Post.find(id).update(title: 'update from the background job')
    end
  end
end
