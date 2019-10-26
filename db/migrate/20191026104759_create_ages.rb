class CreateAges < ActiveRecord::Migration[5.2]
  def change
    create_table :ages do |t|
      t.string :age, unique: true
      t.string :season, unique: true
      t.timestamps
    end
  end
end
