feature "player's hit points" do
  scenario "shows the players' hit points" do
    sign_in_and_play
    expect(page).to have_content 'Mittens: 50HP'
  end
end
