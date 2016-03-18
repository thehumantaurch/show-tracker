class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :artistic_director_1
      t.string :artistic_director_2
      t.text :description

      t.timestamps
    end
  end
end
