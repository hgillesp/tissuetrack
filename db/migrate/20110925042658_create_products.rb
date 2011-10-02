class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, :primary_key => 'id' do |t|
      t.integer :id, :null => false
      t.string  :title, :null => false
      t.text    :description, :null => false
      t.string  :image, :null => false
      t.decimal :price, :null => false
      
      t.timestamps
    end
  end
  
  def down
    drop_table :products
  end
end
