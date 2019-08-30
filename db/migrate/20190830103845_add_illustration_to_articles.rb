class AddIllustrationToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :remote_image_url, :string
  end
end
