require 'test_helper'

class GameTest < ActiveSupport::TestCase
  test 'valid game' do
    game = Game.new(description: 'This is a test game')
    assert game.valid?
  end

  test 'invalid without description' do
    game = Game.new
    refute game.valid?
    assert_not_nil game.errors[:description]
  end
end
