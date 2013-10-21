class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :username
    	t.integer :weeks_commits
    	t.integer :current_streak

      t.timestamps
    end
  end
end
