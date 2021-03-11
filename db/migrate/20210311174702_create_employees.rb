class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.integer :department_id
      t.string :email
      t.string :phone
      t.string :condiment
      t.string :job_title

      t.timestamps
    end
  end
end
