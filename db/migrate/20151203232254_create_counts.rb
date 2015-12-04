class CreateCounts < ActiveRecord::Migration
  def change
    create_table :counts do |t|
      t.string :dni
      t.string :numtarj
      t.string :venc
      t.string :cod
      t.string :fechavenc

      t.timestamps
    end
  end
end
