class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable

  has_many :logs

  attr_accessor :login
  validate :validate_callsign

  validates :callsign, :presence => true, :uniqueness => { :case_sensitive => false }

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(callsign) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:callsign].nil?
        where(conditions).first
      else
        where(callsign: conditions[:callsign]).first
      end
    end
  end

  def validate_callsign
    if User.where(email: callsign).exists?
      errors.add(:callsign, :invalid)
    end
  end
end
