class AddCountryCodeToAddress < ActiveRecord::Migration[5.0]
  def change
    add_column :addresses, :country_code, :string
  end
end
