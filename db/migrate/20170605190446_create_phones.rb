class CreatePhones < ActiveRecord::Migration[5.0]
  def change
    create_table :phones do |t|
      t.string :number
      t.integer :phonegable_id
      t.string :phonegable_type

      t.timestamps
    end
  end
end
