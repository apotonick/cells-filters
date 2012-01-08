require 'test_helper.rb'

class FiltersTest < MiniTest::Spec
  class BassistCell < Cell::Base
    attr_reader :later
    include Cell::Filters
    
    before_filter :before
    after_filter :after
    
    def before(state, tone, timing)
      @before = "In #{tone} and #{timing}"
    end
    
    def after(state, tone, timing)
      @later = "After #{tone} and #{timing}"
    end
    
    def play(*)
      render :text => "#{@before}. Doo."
    end
  end
  
  describe "Filters" do
    it "is run properly" do
      cell = BassistCell.new
      assert_equal "In C and 4/4. Doo.", cell.render_state(:play, "C", "4/4")
      assert_equal "After C and 4/4", cell.later
    end
  end
end
