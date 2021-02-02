class AddToPatients < ActiveRecord::Migration[6.0]
  # I am doing some CHANGE in my DB
  def change
    #what change I am doing?
    #add_column :table_name, :column_name, :column_type
    add_column :patients, :age, :string
  end
end
