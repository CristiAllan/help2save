class CreateVoluntaryJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :voluntary_jobs do |t|
      t.boolean :accepted
      t.references :job, foreign_key: true
      t.references :voluntary, foreign_key: true

      t.timestamps
    end
  end
end
