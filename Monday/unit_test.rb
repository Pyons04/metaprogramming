require "test/unit"
require "./alphanumeric"

  class ToAlphanumericTest < Test::Unit::TestCase 
    def test_strip_non_aplanumeric_chars
        assert_equal "3 the Magic Number", to_alphanumeric("#3, the *Magic Number?*")
    end
  end
