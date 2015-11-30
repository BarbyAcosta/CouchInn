class CreateTipocouches < ActiveRecord::Migration
  def change
    create_table :tipocouches do |t|
    	t.string :name
    	t.text :description
    
    	t.timestamps

    end
  end
end
