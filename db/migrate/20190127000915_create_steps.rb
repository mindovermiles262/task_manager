class CreateSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :steps do |t|
      t.string :name
      t.string :description
      t.boolean :complete?, :default => false
      t.references :task

      t.timestamps
    end
  end
end
