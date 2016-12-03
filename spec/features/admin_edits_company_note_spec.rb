require 'rails_helper'

RSpec.feature 'admin edits company note' do
  it 'clicks edit note button on company page and changes information' do
    create_note_with_company_and_user
    admin_logs_in
    
    visit company_path(Company.last)
    expect(page).to have_content('Solid Company')
    expect(page).to have_content('They are solid.')
    
    click_on 'Edit Note'
    fill_in 'note_title', with: 'New Title'
    fill_in 'note_body', with: 'New Body'
    click_on 'Update Note'

    expect(page).to have_content('New Title')
    expect(page).to have_content('New Body')
    expect(page).to_not have_content('Solid Company')
    expect(page).to_not have_content('They are solid.')
  end
end