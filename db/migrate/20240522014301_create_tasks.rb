class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.text :task_desc
      t.integer :outline_num

      t.timestamps
    end
  end
end
