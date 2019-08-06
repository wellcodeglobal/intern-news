class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :id_comment
      t.string :nama_user
      t.string :email_user
      t.text :isi_comment
      t.string :id_article
      t.timestamps
    end
  end
end
