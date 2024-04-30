class Posts::PostCreateJob < ApplicationJob
  queue_as :default

  def perform(id)
    Post.find(id).update(title: 'update from the background job')
  end
end
