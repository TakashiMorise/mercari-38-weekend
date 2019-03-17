class CreateCredits < ActiveRecord::Migration[5.0]
  def change
    create_table :credits do |t|
      t.string :card_number, null: false
      t.integer :security_code, null: false
      t.integer :good_through_year, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
