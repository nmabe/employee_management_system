class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamp :dob
      t.string :email
      t.text :address
      t.string :gender
      t.integer :job_id

      t.timestamps
    end
  end
end
