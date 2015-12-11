class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.datetime :f_inicio
      t.datetime :f_fin

      t.timestamps
    end
  end
end
