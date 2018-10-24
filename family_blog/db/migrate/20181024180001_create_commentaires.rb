class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.belongs_to :users, index: true
      t.belongs_to :articles, index: true 
      t.text :content
      t.timestamps
    end
  end
end
