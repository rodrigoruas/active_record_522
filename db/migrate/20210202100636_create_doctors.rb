class CreateDoctors < ActiveRecord::Migration[6.0]
  create_table :doctors do |t|
    t.string :first_name
    t.string :last_name
    # created_at
    # updated_at
    t.timestamps
  end
end
