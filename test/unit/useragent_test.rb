require 'test_helper'

class UseragentTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Useragent.new.valid?
  end
end
