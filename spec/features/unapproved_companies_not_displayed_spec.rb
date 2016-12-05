require 'rails_helper'

RSpec.describe 'users do not see unapproved companies' do
  it 'sees approved companies, but not unapproved companies' do
    user_logs_in
    3.times { |n| create_approved_company("TestCo#{n}") }
    create_unapproved_company('Unapproved Company')
    visit companies_path

    expect(page).to have_content('TestCo0')
    expect(page).to have_content('TestCo1')
    expect(page).to have_content('TestCo2')
    expect(page).to_not have_content('Unapproved Company')
  end
end