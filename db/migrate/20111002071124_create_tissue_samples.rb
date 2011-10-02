class CreateTissueSamples < ActiveRecord::Migration
  def change
    create_table :tissue_samples do |t|
      t.string :description
      t.integer :id
      t.integer :user_id

      t.timestamps
    end
  end
end
