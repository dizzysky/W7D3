class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username, null: false, index: {unique: true}
      t.string :password_digest, null: false
      t.string :session_token

      t.timestamps
    end
    add_index :users, :session_token, unique: true
  end
end
