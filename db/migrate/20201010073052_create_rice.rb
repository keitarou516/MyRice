class CreateRice < ActiveRecord::Migration[5.2]
  def change
    create_table :rice do |t|

      t.timestamps
    end
  end
end
