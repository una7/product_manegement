class AddColumnToAge < ActiveRecord::Migration[5.2]
  def change
    add_column :ages, :url, :text
  end
end
