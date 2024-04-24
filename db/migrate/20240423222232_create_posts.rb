# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :slug
      t.references :user, null: false, foreign_key: true
      t.datetime :discarded_at

      t.timestamps
    end
    add_index :posts, :slug, unique: true
    add_index :posts, :discarded_at
  end
end
