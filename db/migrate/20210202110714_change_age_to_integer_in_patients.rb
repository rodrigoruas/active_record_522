class ChangeAgeToIntegerInPatients < ActiveRecord::Migration[6.0]
  # I am doing some CHANGE in my DB
  def change
    #what change I am doing?
    #change_column :table_name, :column_name, :column_type
    change_column :patients, :age, :integer
  end
end
