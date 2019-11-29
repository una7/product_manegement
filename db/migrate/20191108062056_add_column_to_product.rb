class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :status, :string
    add_column :products, :comment, :text
  end
end
