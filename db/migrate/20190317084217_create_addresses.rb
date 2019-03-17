class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :first_name, null: false
      t.string :second_name, null: false
      t.string :first_name_kana, null: false
      t.string :second_name_kana, null: false
      t.string :post_number, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :house_number, null: false
      t.string :building_name, null: false
      t.string :phone_number, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
