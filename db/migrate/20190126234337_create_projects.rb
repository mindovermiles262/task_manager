class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :github_url
      t.date :due_date
      t.boolean :complete?, :default => false

      t.timestamps
    end
  end
end
