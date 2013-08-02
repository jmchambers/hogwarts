class AddCachedStudentCountToHouse < ActiveRecord::Migration
  def up
    add_column :houses, :students_count, :integer, :default => 0
    
    House.reset_column_information
    House.all.each do |house|
      house.update_attribute :students_count, house.students.length
    end
  end
  
  def self.down
    remove_column :houses, :students_count
  end
end
