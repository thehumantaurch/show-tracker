class CreateProductions < ActiveRecord::Migration
  def change
    create_table :productions do |t|
      t.string :title
      t.integer :playwright_id
      t.integer :company_id
      t.date :first_rehearsal
      t.date :opening
      t.date :closing
      t.boolean :staged_reading?, :default => false
      t.boolean :special_engagement?, :default => false

      t.timestamps
    end
  end
end
