require 'test_helper'

class StringUriTest < ActiveSupport::TestCase
  test "httpize adds http" do
    assert_equal "http://example.com", "example.com".httpize
  end

  test "httpize doesn't readd http" do
    assert_equal "http://example.com", "http://example.com".httpize
    assert_equal "https://example.com", "https://example.com".httpize
  end
end

class StringFiltersTest < ActiveSupport::TestCase
  test "truncate" do
    assert_equal "A short string", "A short string".truncate(:length => 14)
    assert_equal "A longer st...", "A longer string!".truncate(:length => 14)
  end

  test "truncate defaults to a length of 30 characters" do
    str = "A longer string which length exceeds 30 characters"
    assert_equal str[0...27] + '...', str.truncate
  end

  test "truncate with options hash" do
    str = "A longer string which length exceeds 30 characters"
    assert_equal str[0...25] + '[...]', str.truncate(:omission => '[...]')
    assert_equal str[0...7] + '...', str.truncate(:length => 10)
    assert_equal str[0...5] + '[...]', str.truncate(:length => 10, :omission => '[...]')
  end
end