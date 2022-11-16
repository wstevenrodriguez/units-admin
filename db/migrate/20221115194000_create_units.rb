class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.string :project
      t.string :stage
      t.string :tower
      t.string :number
      t.integer :status

      t.timestamps
    end
  end
end
