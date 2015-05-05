class AddHeadToZombie < ActiveRecord::Migration
  def change
    add_column :zombies, :head, :string
  end
end
