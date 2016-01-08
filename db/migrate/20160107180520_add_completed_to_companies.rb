class AddCompletedToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :completed, :boolean
  end
end
