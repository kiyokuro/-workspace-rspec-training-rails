require 'rails_helper'

RSpec.describe 'Users', type: :system do
  it 'create new user' do
    visit users_path
    click_link 'New User'

    fill_in 'Name', with: '山田太郎'
    fill_in 'Postal code', with: '1230000'
    fill_in 'Address', with: '東京都赤羽橋'
    click_button 'Create User'

    expect(page).to have_content '山田太郎'
    expect(page).to have_content '1230000'
    expect(page).to have_content '東京都赤羽橋'
  end
end
