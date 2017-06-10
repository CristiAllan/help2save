class RemoveCountryFromAddress < ActiveRecord::Migration[5.0]
  def change
    remove_column :addresses, :country, :string
  end
end
