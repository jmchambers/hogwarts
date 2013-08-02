class AddDescToHouse < ActiveRecord::Migration
  def change
    add_column :houses, :desc, :string
  end
end
