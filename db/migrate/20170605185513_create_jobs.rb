class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.date :end_date
      t.references :institution, foreign_key: true

      t.timestamps
    end
  end
end
