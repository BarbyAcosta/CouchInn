class CreateCouches < ActiveRecord::Migration
  def change
    create_table :couches do |t|
    	t.string :name
    	t.string :description
    	t.string :imageurl
    	t.string :localidad
    	t.string :capacidad
    	t.integer :user_id
    	t.integer :tipocouch_id

    	t.timestamps
    end
  end
end
