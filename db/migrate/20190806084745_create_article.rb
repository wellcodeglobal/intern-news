class CreateArticle < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :id_article
      t.string :title
      t.text :body
      t.integer :id_category
      t.string :id_admin
      t.timestamps
    end
  end
end
