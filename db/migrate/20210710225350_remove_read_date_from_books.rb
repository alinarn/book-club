class RemoveReadDateFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :read_date
  end
end
