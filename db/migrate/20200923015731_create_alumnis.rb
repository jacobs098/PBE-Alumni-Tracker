class CreateAlumnis < ActiveRecord::Migration[5.0]

  def up
    create_table :alumnis do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.string "password"
      t.string "degree"
      t.string "job_title"
      t.numeric "phone_number"
      t.numeric"graduation_year"
      t.timestamps
    end
  end

    def down
      drop_table :alumnis
    end
end
