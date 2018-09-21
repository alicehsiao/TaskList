class CreateNewColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :c_date, :string
  end
end
z
