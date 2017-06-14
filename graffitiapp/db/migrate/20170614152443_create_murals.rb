class CreateMurals < ActiveRecord::Migration[5.0]
  def change
    create_table :murals do |t|
      t.string :address

      t.timestamps
    end
  end
end
