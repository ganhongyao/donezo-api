class RemoveTagArrayFromTodo < ActiveRecord::Migration[6.0]
  def change
    remove_column :todos, :tag_array, :text
  end
end
