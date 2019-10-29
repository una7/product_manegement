class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.string :place, unique: true
      t.timestamps
    end
  end
end
