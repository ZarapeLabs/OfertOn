class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :description
      t.string :slogan
      t.string :logo
      t.string :clave

      t.timestamps null: false
    end
  end
end
