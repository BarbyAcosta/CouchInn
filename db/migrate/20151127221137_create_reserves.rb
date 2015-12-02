class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
      t.string :name
      t.string :description
      t.string :imageurl
      t.string :localidad
      t.timestamps
    end
  end
end
