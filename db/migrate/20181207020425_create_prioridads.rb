class CreatePrioridads < ActiveRecord::Migration[5.2]
  def change
    create_table :prioridads do |t|
      t.text :descripcion

      t.timestamps
    end
  end
end
