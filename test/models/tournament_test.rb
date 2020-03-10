require 'test_helper'

class TournamentTest < ActiveSupport::TestCase
  test 'valid tournament' do
    tournament = Tournament.new(description: 'This is a test tournament')
    assert tournament.valid?
  end

  test 'invalid without description' do
    tournament = Tournament.new
    refute tournament.valid?
    assert_not_nil tournament.errors[:description]
  end
end
