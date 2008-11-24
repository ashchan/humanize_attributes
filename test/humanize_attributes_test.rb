require 'test/unit'
require 'rubygems'
require 'active_record'
require File.dirname(__FILE__) + '/../lib/humanize_attributes'

class User < ActiveRecord::Base; end

class HumanizeAttributesTest < Test::Unit::TestCase
  def test_humanize_attributes
    User.humanize_attributes :login => "用户名"
    assert_equal User.human_attribute_name(:login), "用户名"
  end
end
