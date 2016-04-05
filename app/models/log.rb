class Log < ActiveRecord::Base
  belongs_to :user

  default_scope -> { order('logs.created_at DESC') }

  validates_presence_of :date_on, :date_off, :time_on, :time_off, :frequency, :callsign, :operator_name, :mode, :his_rst, :my_rst, :power, :country
end
