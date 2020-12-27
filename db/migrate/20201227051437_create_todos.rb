class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.date :duedate
      t.text :description
      t.boolean :completed

      t.timestamps
    end
  end
end
