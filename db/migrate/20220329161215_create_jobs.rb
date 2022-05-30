class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.string :bedrijf
      t.string :titel
      t.string :keywords
      t.string :h1
      t.string :subh1
      t.text :content
      t.string :f1
      t.string :f2
      t.string :f3
      t.string :p1
      t.string :p2
      t.string :p3
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :m1
      t.string :m2
      t.string :m3
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :sector
      t.string :functie
      t.integer :postcode
      t.string :stad
      t.string :opleiding
      t.integer :ervaring
      t.string :talen
      t.string :utm
      t.string :link

      t.timestamps
    end
  end
end
