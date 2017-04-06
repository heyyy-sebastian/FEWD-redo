class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.float :ip_address
      t.datetime :created_at

      t.timestamps
    end
  end
end
