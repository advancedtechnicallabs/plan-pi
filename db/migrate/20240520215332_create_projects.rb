class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_desc
      t.decimal :project_budget

      t.timestamps
    end
  end
end
