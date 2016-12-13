class Company < ApplicationRecord
  has_many :company_industries
  has_many :industries, through: :company_industries
  has_many :starred_companies
  has_many :users, through: :starred_companies
  has_many :notes
  has_many :locations
  mount_uploader :logo, LogoUploader

  before_validation :set_status

  enum status: [:pending, :approved, :rejected]

  def approved
    self.status = 1
    self.save
  end

  def rejected
    self.status = 2
    self.save
  end

  def self.approved_companies
    Company.where('status = ?', '1')
  end

  def self.pending_companies
    Company.where('status = ?', '0')
  end

  def approved?
    self.status == "approved"
  end

  def approved_locations
    self.locations.where('status = ?', '1')
  end

  # def add_location(params)
  #   self.locations.new(
  #     street_address:   params[:street_address],
  #     street_address_2: params[:street_address_2],
  #     phone:            params[:phone],
  #     primary_contact:  params[:primary_contact],
  #     city:             params[:city],
  #     state:            params[:state],
  #     zip_code:         params[:zip_code]
  #   )
  # end

  def location_info(location = locations.first)
    if location
      [ location.street_address,
        location.street_address_2,
        location.city_state_zip,
        location.phone ].reject(&:blank?)
    end
  end

  private
    def set_status
      self.status ||= 0
    end
end
