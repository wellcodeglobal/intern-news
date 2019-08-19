class CreateArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.timestamps
      t.references :users, foreign_key:true, index:true
      t.references :categories, foreign_key:true, index:true
    end
  end
end
