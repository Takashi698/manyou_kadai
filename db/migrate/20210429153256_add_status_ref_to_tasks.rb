class AddStatusRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :status, null: false, foreign_key: true, default: 1
  end
end
