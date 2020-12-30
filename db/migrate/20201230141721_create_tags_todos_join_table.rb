class CreateTagsTodosJoinTable < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_todos, id: false do |t|
      t.bigint :tag_id
      t.bigint :todo_id
    end

    add_index :tags_todos, :tag_id
    add_index :tags_todos, :todo_id
  end
end
