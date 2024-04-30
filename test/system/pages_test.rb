require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit pages_url
  #
  #   assert_selector "h1", text: "Pages"
  # end
  class PagesTest < ApplicationSystemTestCase
    test "visiting /ask renders the form" do
      visit ask_url
      assert_selector "p", text: "Ask your coach anything"
      end
    end

    test "saying Hello yields a grumpy response from the coach" do
      visit ask_url
      fill_in "question", with: "Hello"
      click_on "Ask"

      assert_text "I don't care, get dressed and go to work!"
    end
end
