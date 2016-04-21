# lita-imgflip

[![Build
Status](https://travis-ci.org/henrrrik/lita-imgflip.svg?branch=master)](https://travis-ci.org/henrrrik/lita-imgflip)
[![Code Climate](https://codeclimate.com/github/henrrrik/lita-imgflip.png)](https://codeclimate.com/github/henrrrik/lita-imgflip)
[![Coverage Status](https://coveralls.io/repos/henrrrik/lita-imgflip/badge.png)](https://coveralls.io/r/henrrrik/lita-imgflip)

**lita-imgflip** is a handler for [Lita](https://github.com/jimmycuadra/lita) that generates meme images using imgflip.com. The code is based on [lita-memgen](https://github.com/webdestroya/lita-memegen).

## Installation

Add lita-imgflip to your Lita instance's Gemfile:

``` ruby
gem "lita-imgflip"
```

## Configuration

You will need to register an account on imgflip.com and provide the username/password for the account.

```
Lita.configure do |config|

  # This requires that all memes be sent as commands. If this is false, the bot will listen in the channel
  config.handlers.imgflip.command_only = true

  config.handlers.imgflip.username = 'username'
  config.handlers.imgflip.password = 'password'
end
```

## Usage


* `Y U NO <text>` - Generates the Y U NO GUY with the bottom caption of <text>
* `I don't always <something> but when i do <text>` - Generates The Most Interesting man in the World 
* `<text> (SUCCESS|NAILED IT)` - Generates success kid with the top caption of <text>
* `<text> ALL the <things>` - Generates ALL THE THINGS
* `<text> TOO DAMN <high>` - Generates THE RENT IS TOO DAMN HIGH guy
* `good news everyone! <news>` - Generates Professor Farnsworth
* `khanify <text>` - TEEEEEEEEEEEEEEEEEXT!
* `Not sure if <text> or <text>` - Generates Futurama Fry
* `Yo dawg <text> so <text>` - Generates Yo Dawg
* `ALL YOUR <text> ARE BELONG TO US` - Generates Zero Wing with the caption of <text>
* `<text> you're gonna have a bad time` - Bad Time Ski Instructor
* `one does not simply <text>` - Lord of the Rings Boromir
* `grumpy cat <text>, <text>` - Grumpy cat
* `it looks like (you|you're) <text>` - Generates Clippy
* `AM I THE ONLY ONE AROUND HERE <text>` - The Big Lebowski
* `<text> NOT IMPRESSED` - Generates McKayla Maroney
* `PREPARE YOURSELF <text>` - Generates GoT
* `WHAT IF I TOLD YOU <text>` - Generates Morpheus
* `<text> BETTER DRINK MY OWN PISS` - Generates Bear Grylls
* `khanify <text>` - Generates Captain Kirk
* `<text> THAT WOULD BE GREAT` - generates Bill Lumbergh
* `<text> AIN'T NOBODY GOT TIME FOR THAT` - generates Sweet Brown
* `<text> I TOO LIKE TO LIVE DANGEROUSLY` - generates I Too Like to Live Dangerously
* `<text> SHUT UP AND TAKE MY MONEY` - generates Shut Up and Take My Money Fry
* `YOU KNOW WHAT REALLY GRINDS MY GEARS? <text>` - "generates Peter Griffin News
* `"<text> CHALLENGE ACCEPTED"` - generates Challenge Accepted guy
* `"YOUR <text> IS BAD"` - generates Zoidberg Your x is bad and you should feeld bad


## License

[MIT](http://opensource.org/licenses/MIT)
