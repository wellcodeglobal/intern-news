class CreateAdmin < ActiveRecord::Migration[5.2]
  def change
    create_table :admins do |t|
      t.string :id_admin
      t.string :name
      t.string :email
      t.string :password
    end
  end
end
