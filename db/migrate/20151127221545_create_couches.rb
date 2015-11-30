class CreateCouches < ActiveRecord::Migration
  def change
    create_table :couches do |t|
      t.string :name
      t.string :fechaini
      t.string :fechafin

      t.timestamps
    end
  end
end
