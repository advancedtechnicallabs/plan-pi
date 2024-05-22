class CreateOutlines < ActiveRecord::Migration[7.1]
  def change
    create_table :outlines do |t|
      t.text :outline_desc
      t.date :outline_start
      t.date :outline_end
      t.integer :project_num

      t.timestamps
    end
  end
end
