class CreateSessions < ActiveRecord::Migration
  def change
    create_table :sessions do |t|
      t.string :provider
      t.string :user_id
      t.string :name
      t.string :oauth_token
      t.datetime :oauth_expires_at

      t.timestamps
    end
  end
end
