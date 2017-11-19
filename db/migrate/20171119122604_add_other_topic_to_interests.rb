class AddOtherTopicToInterests < ActiveRecord::Migration[5.0]
  def change
    add_column :interests, :other_topic, :string
  end
end
