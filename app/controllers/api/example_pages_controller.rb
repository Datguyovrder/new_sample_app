class Api::ExamplePagesController < ApplicationController
 def fortune_action
   f1 = "You will lose everything you own"
   f2 = "You are going to rule the world"
   f3 = "You need to keep hoping for a better life!"
   fortunes = [f1, f2, f3]
   @outcome = fortunes[rand(0..2)]
   render "fortune_view.json.jbuilder"
 end

  def rand_lotto_num_action
    possible_nums = (1..60).to_a
    pick_nums = possible_nums.sample(6)
    @final = pick_nums.join
    render "lotto_view.json.jbuilder"
  end

end
