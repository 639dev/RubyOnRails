class AddEmailAndRottingToZombies < ActiveRecord::Migration[5.0]
  def change
    add_column :zombies, :email, :String
    add_column :zombies, :rotting, :boolean,default: false
  end
end
