class CreateCategory < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.integer :id_category
      t.string :name_category
    end
  end
end
