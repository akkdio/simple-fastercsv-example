class CreateDeals < ActiveRecord::Migration
  def self.up
    create_table :deals do |t|
      t.string :deal_name
      t.decimal :purchase_price, :percision => 8, :scale => 2
      t.decimal :current_price, :percision => 8, :scale => 2
      t.decimal :in_the_hole, :percision => 8, :scale => 2

      t.timestamps
    end
  end

  def self.down
    drop_table :deals
  end
end
