require("minitest/autorun")
require_relative("../songs.rb")
require("minitest/rg")
class SongsTest < MiniTest::Test

def setup
@song1 = Songs.new("RESPECT")
end

def test_song_name
assert_equal("RESPECT", @song1.name)
end





















end
