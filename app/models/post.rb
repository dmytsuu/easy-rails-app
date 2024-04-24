# frozen_string_literal: true

class Post < ApplicationRecord
  extend FriendlyId
  include Discard::Model
  include PgSearch::Model

  belongs_to :user
  has_rich_text :content

  friendly_id :title, use: :slugged

  pg_search_scope :by_title,
                  against: :title,
                  using: { trigram: { word_similarity: true } }
end
