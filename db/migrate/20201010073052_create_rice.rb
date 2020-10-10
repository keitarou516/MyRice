class CreateRice < ActiveRecord::Migration[5.2]
  def change
    create_table :rice do |t|
      t.text    :name
      t.integer :condition
      t.integer :hard
      t.integer :time
      t.text    :url
      t.timestamps
    end
  end
end
