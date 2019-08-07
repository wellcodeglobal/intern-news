class CreateComment < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :nama_user
      t.string :email_user
      t.text :isi_comment
      t.timestamps
      t.references :articles, foreign_key:true, index:true
    end
  end
end
