class CreateAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.decimal :monthly_cost
      t.integer :animal_kind
      t.references :person, foreign_key: true

      t.timestamps
    end
  end
end
