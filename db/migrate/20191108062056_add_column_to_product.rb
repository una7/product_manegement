class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :status, :string
  end
end
