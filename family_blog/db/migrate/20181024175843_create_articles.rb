class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.belongs_to :users, index: true
      t.belongs_to :categories, index: true
      t.string :titre
      t.text :content
      t.timestamps
    end
  end
end
