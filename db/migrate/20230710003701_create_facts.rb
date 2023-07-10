class CreateFacts < ActiveRecord::Migration[7.0]
  def change
    create_table :facts do |t|
      t.string :animal
      t.string :habitat
      t.string :fact
      t.integer :rank

      t.timestamps
    end
  end
end
