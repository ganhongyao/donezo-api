class AddUserToTodos < ActiveRecord::Migration[6.0]
  def change
     add_reference :todos, :user
  end
end