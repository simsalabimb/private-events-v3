class AddCreatorIdToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :creator_id, :integer
    add_reference :events, :users, column: :creator_id, foreign_key: true
  end
end
