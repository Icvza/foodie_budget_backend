class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.string :category
      t.string :unit_of_measure 
    end
  end
end
