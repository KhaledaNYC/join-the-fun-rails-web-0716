class CreateRide < ActiveRecord::Migration
  def change
    create_table :rides do |t|
      t.references :passenger, index: true
      t.references :taxi, index: true
    end
    add_foreign_key :rides, :passengers
    add_foreign_key :rides, :taxis
  end
end
