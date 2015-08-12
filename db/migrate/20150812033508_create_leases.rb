class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.date :move_in_date
      t.date :move_out_date
      t.references :room, index: true
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
