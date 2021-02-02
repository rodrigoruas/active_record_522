class CreateInterns < ActiveRecord::Migration[6.0]
  create_table :interns do |t|
    t.string :first_name
    t.string :last_name
    t.references :doctor, foreign_key: true
    # created_at
    # updated_at
    t.timestamps
  end
end
