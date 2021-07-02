class AddStatusToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :status, :integer
  end
end
