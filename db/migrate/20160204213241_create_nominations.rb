class CreateNominations < ActiveRecord::Migration
  def change
    create_table :nominations do |t|
      t.integer :role_id
      t.date :year
      t.string :category
      t.boolean :won?, :default => false

      t.timestamps
    end
  end
end
