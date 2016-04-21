require "spec_helper"

describe Lita::Handlers::Imgflip, lita_handler: true do
  it { is_expected.to route_command("Y U NO BLAH").to(:meme_y_u_no) }
  it { is_expected.to route_command("i don't always fart but when i do, i do it loud").to(:meme_i_dont_always) }
  it { is_expected.to route_command("blah BETTER DRINK MY OWN PISS").to(:meme_better_drink) }
  it { is_expected.to route_command("khanify blah").to(:meme_khanify) }
  it { is_expected.to route_command("blah AINT NOBODY GOT TIME FOR THAT").to(:meme_time_for_that) }
  it { is_expected.to route_command("blah i too like to live dangerously").to(:meme_live_dangerously) }
  it { is_expected.to route_command("blah shut up and take my money!").to(:meme_take_my_money) }
  it { is_expected.to route_command("you know what really grinds my gears? blah").to(:meme_grinds_my_gears) }
  it { is_expected.to route_command("your blah is bad").to(:meme_zoidberg_feel_bad) }

  it "sets the username and password to nil by default" do
    expect(Lita.config.handlers.imgflip.username).to be_nil
    expect(Lita.config.handlers.imgflip.password).to be_nil
  end

end
