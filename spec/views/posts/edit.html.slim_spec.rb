# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'posts/edit', type: :view do
  let(:post) do
    Post.create!(
      title: 'MyString',
      content: nil,
      slug: 'MyString',
      user: nil
    )
  end

  before(:each) do
    assign(:post, post)
  end

  it 'renders the edit post form' do
    render

    assert_select 'form[action=?][method=?]', post_path(post), 'post' do
      assert_select 'input[name=?]', 'post[title]'

      assert_select 'input[name=?]', 'post[content]'

      assert_select 'input[name=?]', 'post[slug]'

      assert_select 'input[name=?]', 'post[user_id]'
    end
  end
end
