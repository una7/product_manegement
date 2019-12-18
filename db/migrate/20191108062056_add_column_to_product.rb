class AddColumnToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :status, :string
    add_column :products, :comment, :text
    add_column :products, :user_id, :integer
    add_column :products, :number, :integer
  end
end
