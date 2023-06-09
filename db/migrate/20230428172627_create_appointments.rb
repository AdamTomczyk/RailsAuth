class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.references :pet, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true
      t.text :reason

      t.timestamps
    end
  end
end
