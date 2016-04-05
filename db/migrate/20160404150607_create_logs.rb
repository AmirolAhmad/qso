class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.date :date_on
      t.date :date_off
      t.time :time_on
      t.time :time_off
      t.string :frequency
      t.string :callsign
      t.string :operator_name
      t.string :mode
      t.integer :his_rst
      t.integer :my_rst
      t.string :power
      t.string :qth
      t.string :state
      t.string :country
      t.text :notes

      t.timestamps null: false
    end
  end
end
