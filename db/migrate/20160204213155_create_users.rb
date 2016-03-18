class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :address
      t.string :race_ethnicity
      t.string :gender_identity
      t.boolean :actor?, :default => false
      t.boolean :director?, :default => false
      t.boolean :stage_manager?, :default => false
      t.boolean :costume_designer?, :default => false
      t.boolean :set_designer?, :default => false
      t.boolean :light_designer?, :default => false
      t.boolean :sound_designer?, :default => false
      t.boolean :dance_choreographer?, :default => false
      t.boolean :fight_choreographer?, :default => false
      t.boolean :producer?, :default => false
      t.boolean :dramaturg?, :default => false
      t.boolean :playwright?, :default => false

      t.timestamps
    end
  end
end
