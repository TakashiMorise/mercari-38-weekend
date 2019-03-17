class CreateSnsAuthentications < ActiveRecord::Migration[5.0]
  def change
    create_table :sns_authentications do |t|
      t.integer :uid, null: false
      t.string :provider, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
