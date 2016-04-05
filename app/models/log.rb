class Log < ActiveRecord::Base
  belongs_to :user

  default_scope -> { order('logs.created_at DESC') }

  validates :callsign, presence: {message: "can't be blank"}, length: { in: 2..10 }
  validates :his_rst, length: { in: 2..3 }, numericality: true, presence: { message: "can't be blank" }
  validates :my_rst, length: { in: 2..3 }, numericality: true, presence: { message: "can't be blank" }
  validates :power, length: { in: 1..4 }, numericality: true, presence: { message: "can't be blank" }
  validates :frequency, numericality: true, presence: { message: "can't be blank" }, format: { with: /^\d{1,4}(\.\d{0,4})?$/, :multiline => true }
  validates_presence_of :date_on, :date_off, :time_on, :time_off, :operator_name, :mode, :country
end
