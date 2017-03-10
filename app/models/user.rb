class User < ApplicationRecord
  before_create :set_default_role

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  enum role: [:candidate, :tcf, :tcf_admin, :system_admin]

  def set_default_role
    self.role ||= :candidate
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
end
