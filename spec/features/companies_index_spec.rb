require 'rails_helper'

RSpec.feature "User navigates to company directory", type: :feature do
  it "they see all companies" do
    user = create(:user)
    stub_login(user)
    3.times { |n| create_approved_company("TestCo#{n}") }
    companies = Company.all

    visit companies_path
    click_on "Company Directory"

    expect(page).to have_content("Company Name:", count: Company.count)

    expect(page).to have_content(companies.first.name)
    expect(page).to have_content(companies.first.locations.first.street_address)
    expect(page).to have_content(companies.first.locations.first.city_state_zip)
    expect(page).to have_content(companies.first.locations.first.phone)
    expect(page).to have_content(companies.first.website)

    expect(page).to have_content(companies.last.name)
    expect(page).to have_content(companies.last.locations.first.street_address)
    expect(page).to have_content(companies.last.locations.first.city_state_zip)
    expect(page).to have_content(companies.last.locations.first.phone)
    expect(page).to have_content(companies.last.website)
  end
end
