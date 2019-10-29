class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.date     :sold_day, null: false          #売れた日
      t.string   :market, null: false            #売上媒体
      t.string   :proceeds, null: false          #売上金額
      t.integer  :shipping_feed, null: false     #負担する送料
      t.integer  :profit, null: false            #利益
      t.date     :sold_period, null: false       #売れるまでの日数 =入荷日 - 売れた日
      t.timestamps
    end
  end
end
