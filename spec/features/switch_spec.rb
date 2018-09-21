feature "switching players" do
  scenario "on second attack, p1 receives damage" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Dave: 40HP'
    expect(page).to have_content 'Mittens: 40HP'
  end
  scenario "on second attack, p1 receives damage" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    click_button 'OK'
    expect(page).to have_content 'Dave: 40HP'
    expect(page).to have_content 'Mittens: 30HP'
  end
end
