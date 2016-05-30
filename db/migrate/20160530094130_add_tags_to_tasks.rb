class AddTagsToTasks < ActiveRecord::Migration

  def up
    create_table :tags_tasks, :id => false do |t|
      t.references :tag
      t.references :task
    end
    add_index :tags_tasks, [:tag_id, :task_id]
    add_index :tags_tasks, :task_id
  end

  def down
    drop_table :tags_tasks
  end

end
