class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.boolean :complete?, :default => false
      t.references :project

      t.timestamps
    end
  end
end
