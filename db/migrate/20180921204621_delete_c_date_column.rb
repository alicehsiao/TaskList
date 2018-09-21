class DeleteCDateColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :c_date
  end
end
