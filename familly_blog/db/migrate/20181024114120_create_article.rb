class CreateArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.integer :cat_id
      t.string :titre
      t.text :content
    end
  end
end
