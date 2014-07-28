class CreateMuziks < ActiveRecord::Migration
  def change
    create_table :muziks do |t|
      t.string :name
      t.string :format
      t.integer :length_min
      t.integer :length_sec
      t.integer :size

      t.timestamps
    end
  end
end
