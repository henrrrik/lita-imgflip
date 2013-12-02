require "spec_helper"

describe Lita::Handlers::Imgflip, lita_handler: true do
  it { routes_command("Y U NO BLAH").to(:meme_y_u_no) }
  it { routes_command("i don't always fart but when i do, i do it loud").to(:meme_i_dont_always) }
  it { routes_command("blah BETTER DRINK MY OWN PISS").to(:meme_better_drink) }
  it { routes_command("khanify blah").to(:meme_khanify) }

  it "sets the username and password to nil by default" do
    expect(Lita.config.handlers.imgflip.username).to be_nil
    expect(Lita.config.handlers.imgflip.password).to be_nil
  end

end
