class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.integer :company_id
      t.integer :production_id
      t.string :title_of_role
      t.boolean :assistant?, :default => false
      t.boolean :understudy?, :default => false
      t.boolean :performed?, :default => false

      t.timestamps
    end
  end
end
