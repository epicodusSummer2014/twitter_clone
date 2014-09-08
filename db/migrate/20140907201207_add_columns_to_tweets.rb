class AddColumnsToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :content, :text
    add_column :tweets, :user_id, :integer
  end
end
