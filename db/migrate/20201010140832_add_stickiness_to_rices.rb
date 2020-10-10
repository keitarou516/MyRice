class AddStickinessToRices < ActiveRecord::Migration[5.2]
  def change
    add_column :rice, :stickiness, :integer
  end
end
