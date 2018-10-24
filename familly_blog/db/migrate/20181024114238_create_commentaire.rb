class CreateCommentaire < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.integer :user_id
      t.integer :article_id
      t.text :content
    end
  end
end
