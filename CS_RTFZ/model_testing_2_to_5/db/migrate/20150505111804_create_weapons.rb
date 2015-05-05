class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.references :zombie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
