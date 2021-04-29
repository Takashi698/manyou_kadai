class AddExpiredToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :expired_at, :datetime, null: false,
    default: Time.zone.now.next_month
    # add_column :tasks, :expired_at, :datetime, default: -> { 'NOW()' }, null: false,
  end
end
