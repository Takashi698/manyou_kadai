class AddExpiredToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :expired_at, :datetime, null: false,
    default: -> { "now() + cast( '1 months' as INTERVAL )" }
  end
end
