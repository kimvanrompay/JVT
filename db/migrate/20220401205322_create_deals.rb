class CreateDeals < ActiveRecord::Migration[7.0]
  def change
    create_table :deals do |t|
      t.string :name
      t.integer :value
      t.string :month
      t.string :start
      t.string :company
      t.string :job
      t.string :type
      t.integer :fee

      t.timestamps
    end
  end
end
