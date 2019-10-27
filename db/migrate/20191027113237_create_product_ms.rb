class CreateProductMs < ActiveRecord::Migration[5.2]
  def change
    create_table :product_ms do |t|
      t.string   :arrival, null: false           #入荷日
      t.string   :successful_bid, null: true     #落札した商品
      t.string   :product_name, null: false      #出品名
      t.integer  :product_price, null: false     #出品価格
      t.string   :stock, null: false             #仕入先
      t.integer  :unit_price, null: false        #単品単価
      t.integer  :shipping_fee, null: false      #負担した送料
      t.integer  :total_price, null: true        #仕入合計 = 単価＋送料
      t.timestamps
    end
  end
end
