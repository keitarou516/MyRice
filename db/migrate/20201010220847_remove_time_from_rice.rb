class RemoveTimeFromRice < ActiveRecord::Migration[5.2]
  def change
    remove_column :rice, :time, :integer
  end
end
