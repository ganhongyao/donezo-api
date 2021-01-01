class AddTagsToTodos < ActiveRecord::Migration[6.0]
  def change
    add_column :todos, :tags_list, :text, array: true
  end
end
