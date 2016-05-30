class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.boolean :done
      t.datetime :due_for
      t.integer :todo_list_id
      t.text :notes

      t.timestamps null: false
    end
  end
end
