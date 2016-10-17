class Request < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true

  after_initialize :set_defaults

  def self.search(search)
    where("name ILIKE ? OR email ILIKE ? OR department ILIKE ? OR message ILIKE ? ", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  private

  def set_defaults
    self.actions ||= "Not Done"
  end

end
