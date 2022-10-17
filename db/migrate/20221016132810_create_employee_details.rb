class CreateEmployeeDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_details do |t|
      t.string :name
      t.string :email
      t.text :address

      t.timestamps
    end
  end
end
