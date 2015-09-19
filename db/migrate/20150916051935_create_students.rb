class CreateStudents < ActiveRecord::Migration
  def change
    create_table :Students do |t|
      t.string :s_name
      t.string :f_name
      t.date :DOB
      t.string :religion
      t.string :address
      t.string :father_occupation
      t.string :CNIC
      t.string :phone_no
      t.string :email
      t.string :distric
      t.string :gender

      t.timestamps null: false
    end
  end
end
