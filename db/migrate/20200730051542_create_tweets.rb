class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :image
      t.string :text
      t.integer :user_id, null: false, foreign_key: true
      t.timestamps

      
      add_index :tweets, :text, length: 32

    end
  end
end
