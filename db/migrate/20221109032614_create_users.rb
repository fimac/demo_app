class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :email

      t.timestamps
    end
    (0..50000).each do |n|
      ActiveRecord::Base.connection.execute("INSERT into users (email, created_at, updated_at) values ('user+#{n}@example.com', now(), now())")
    end
  end
end
