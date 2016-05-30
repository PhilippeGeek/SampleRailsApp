class AddTagsToTodoLists < ActiveRecord::Migration

  def up
    create_table :tags_todo_lists, :id => false do |t|
      t.references :tag
      t.references :todo_list
    end
    add_index :tags_todo_lists, [:tag_id, :todo_list_id]
    add_index :tags_todo_lists, :todo_list_id
  end

  def down
    drop_table :tags_tasks
  end
end
