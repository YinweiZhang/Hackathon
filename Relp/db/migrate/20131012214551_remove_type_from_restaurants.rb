class RemoveTypeFromRestaurants < ActiveRecord::Migration
  def up
    remove_column :restaurants, :type
  end

  def down
    add_column :restaurants, :type, :string
  end
end
