class CreateAuthentications < ActiveRecord::Migration[5.2]
  def change
    create_table :authentications do |t|
      t.string :provider
      t.string :uid
      t.string :token
      t.references :user

      t.timestamps
    end
  end
end
