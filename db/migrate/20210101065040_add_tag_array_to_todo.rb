class AddTagArrayToTodo < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :tag_array, :text, array: true, default: []
  end
end
