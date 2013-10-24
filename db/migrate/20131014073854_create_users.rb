class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.integer :weeks_commits, default: 0
    	t.integer :current_streak, default: 0
    	t.integer :followers, default: 0
    	t.integer :following, default: 0

      t.timestamps
    end
  end
end
