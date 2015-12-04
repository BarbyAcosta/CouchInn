class CreateReserves < ActiveRecord::Migration
  def change
    create_table :reserves do |t|
    	t.string :name
    	t.string :fechaini
    	t.string :fechafin 
    	t.integer :user_id
    	t.boolean :confirmada
     	t.integer :couch_id

     	t.timestamps
    end
  end
end
