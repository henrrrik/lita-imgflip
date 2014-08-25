require "lita"

module Lita
  module Handlers
    class Imgflip < Handler

      def self.default_config(config)
        config.command_only = true
        config.username = nil
        config.password = nil
      end

      route %r{(Y U NO) (.+)}i,                                    :meme_y_u_no,           help: { "Y U NO..." => "generates Y U NO meme"}
      route %r{(I DON'?T ALWAYS .*) (BUT WHEN I DO,? .*)}i,        :meme_i_dont_always,    help: { "I DON'T ALWAYS .. BUT WHEN I DO, .." => "generates The Most Interesting Man in the World meme"} 
      route %r{(.*)(O\s?RLY\??.*)}i,                               :meme_orly,             help: { "..O RLY.." => "generates O RLY meme" }              
      route %r{(.*)(SUCCESS|NAILED IT.*)},                         :meme_success,          help: { "..SUCCESS.." => "(case sensitive) generates SUCCESS meme", "..NAILED IT.." => "generates NAILED IT meme" }
      route %r{(.*) (ALL the .*)},                                 :meme_all_the,          help: { "ALL the.." => "(case sensitive) generates ALL the <things> meme" }
      route %r{(.*) (\w+\sTOO DAMN .*)}i,                          :meme_too_damn,         help: { "TOO DAMN.." => "generates TOO DAMN meme" }
      route %r{(GOOD NEWS EVERYONE[,.!]?) (.*)}i,                  :meme_good_news,        help: { "GOOD NEWS EVERYONE.." => "generates GOOD NEWS EVERYONE meme" } 
      route %r{(NOT SURE IF .*) (OR .*)}i,                         :meme_not_sure_if,      help: { "NOT SURE IF.. OR.." => "generates NOT SURE IF .. OR meme" }
      route %r{(YO DAWG .*) (SO .*)}i,                             :meme_yo_dawg,          help: { "YO DAWG.." => "generates YO DAWG meme" }   
      route %r{(ALL YOUR .*) (ARE BELONG TO US)}i,                 :meme_are_belong,       help: { "ALL YOUR.. ARE BELONG TO US" => "generates ALL YOUR.. ARE BELONG TO US meme" }       
      route %r{(.*) (You'?re gonna have a bad time)}i,             :meme_bad_time,         help: { ".. You're going have a bad time" => "generates You're gonna have a bad time meme" }     
      route %r{(one does not simply) (.*)}i,                       :meme_simply,           help: { "one does not simply.." => "generates one does not simply.. meme" }   
      route %r{(grumpy cat) (.*),(.*)}i,                           :meme_grumpy_cat,       help: { "grumpy cat .. , .." => "generates grumpy cat .. , .. meme" }       
      route %r{(it looks like you're|it looks like you) (.*)}i,    :meme_looks_like,       help: { "it looks like you're .." => "generates it looks like you're .. meme", "it looks like you.." => "(case insensitive) generates it looks like you.. meme" }       
      route %r{(AM I THE ONLY ONE AROUND HERE) (.*)}i,             :meme_am_i_only,        help: { "AM I THE ONLY ONE AROUND HERE.." => "generates AM I THE ONLY ONE AROUND HERE.. meme" }     
      route %r{(.*)(NOT IMPRESSED*)}i,                             :meme_not_impressed,    help: { "..NOT IMPRESSED" => "generates ..NOT IMPRESSED meme" }         
      route %r{(PREPARE YOURSELF) (.*)}i,                          :meme_prepare_yourself, help: { "PREPARE YOURSELF.." => "generates PREPARE YOURSELF.. meme" }             
      route %r{(WHAT IF I TOLD YOU) (.*)}i,                        :meme_what_if_i,        help: { "WHAT IF I TOLD YOU.." => "generates WHAT IF I TOLD YOU.. meme" }     
      route %r{(.*) (BETTER DRINK MY OWN PISS)}i,                  :meme_better_drink,     help: { "..BETTER DRINK MY OWN PISS" => "generates ..BETTER DRINK MY OWN PISS meme" }
      route %r{^khanify (.*)}i,                                    :meme_khanify,          help: { "khanify ..." => "generates khan meme" }
      route %r{(.*,) (.* EVERYWHERE)}i,                            :meme_everywhere,       help: { ".., .. EVERYWHERE" => "generates X, X everywhere meme" }
      route %r{(.*) (THAT WOULD BE GREAT)}i,                       :meme_would_be_great,   help: { ".. THAT WOULD BE GREAT" => "generates Bill Lumbergh meme" }
      route %r{(.*) (AIN'?T NOBODY GOT TIME FOR THAT)}i,           :meme_time_for_that,    help: { ".. AIN'T NOBODY GOT TIME FOR THAT" => "generates Sweet Brown meme." }
      route %r{(.*) (I TOO LIKE TO LIVE DANGEROUSLY)}i,            :meme_live_dangerously, help: { ".. I TOO LIKE TO LIVE DANGEROUSLY" => "generates I Too Like to Live Dangerously meme." }
      route %r{(.*) (SHUT UP AND TAKE MY MONEY)}i,                 :meme_take_my_money,    help: { ".. SHUT UP AND TAKE MY MONEY" => "generates Shut Up and Take My Money Fry meme." }
      route %r{(YOU KNOW WHAT REALLY GRINDS MY GEARS[?,]?) (.*)}i, :meme_grinds_my_gears,  help: { "YOU KNOW WHAT REALLY GRINDS MY GEARS? .." => "generates Peter Griffin News meme." }



      def meme_y_u_no(response)
        generate_meme(response, 61527)
      end

      def meme_i_dont_always(response)
        generate_meme(response, 61532)
      end

      def meme_success(response)
        generate_meme(response, 61544)
      end

      def meme_all_the(response)
        generate_meme(response, 61533)
      end

      def meme_too_damn(response)
        generate_meme(response, 61580)
      end

      def meme_good_news(response)
        generate_meme(response, 7163250)
      end

      def meme_not_sure_if(response)
        generate_meme(response, 61520)
      end

      def meme_yo_dawg(response)
        generate_meme(response, 101716)
      end

      def meme_are_belong(response)
        generate_meme(response, 4503404)
      end

      def meme_fuck_you(response)
        generate_meme(response, 165248)
      end

      def meme_bad_time(response)
        generate_meme(response, 100951)
      end

      def meme_simply(response)
        generate_meme(response, 61579)
      end

      def meme_grumpy_cat(response)
        generate_meme(response, 405658, text0:response.matches[0][1], text1:response.matches[0][2])
      end

      def meme_looks_like(response)
        generate_meme(response, 7842373)
      end

      def meme_am_i_only(response)
        generate_meme(response, 259680)
      end

      def meme_not_impressed(response)
        generate_meme(response, 117402)
      end

      def meme_prepare_yourself(response)
        generate_meme(response, 6774155)
      end

      def meme_what_if_i(response)
        generate_meme(response, 100947)
      end

      def meme_better_drink(response)
        generate_meme(response, 61548)
      end

      def meme_khanify(response)
        generate_meme(response, 2743696, text0: "", text1: khanify(response.matches[0][0]))
      end

      def meme_everywhere(response)
        generate_meme(response, 347390)
      end

      def meme_would_be_great(response)
        generate_meme(response, 563423)
      end

      def meme_time_for_that(response)
        generate_meme(response, 442575)
      end

      def meme_live_dangerously(response)
        generate_meme(response, 8680117)
      end

      def meme_take_my_money(response)
        generate_meme(response, 176908)
      end

      def meme_grinds_my_gears(response)
        generate_meme(response, 356615)
      end

      def meme_orly(response)
        generate_meme(response, 12361203)
      end

      private

      def khanify(phrase)
        shouty_phrase = phrase.upcase
        last_vowel_index = shouty_phrase.rindex(/[AEIOU]/) || -1 # default to final consonant
        last_vowel = shouty_phrase[last_vowel_index] 
        "#{shouty_phrase[0..last_vowel_index]}#{10.times.map{ last_vowel }.join}#{shouty_phrase[last_vowel_index..-1]}!!!!"
      end

      def generate_meme(response, template_id, text0: nil, text1: nil)

        text0 ||= response.matches[0][0]
        text1 ||= response.matches[0][1]

        http_resp = http.get(
          'http://api.imgflip.com/caption_image',
          username: Lita.config.handlers.imgflip.username,
          password: Lita.config.handlers.imgflip.password,
          template_id: template_id,
          text0: text0,
          text1: text1
          )

        if http_resp.status == 200
          result = MultiJson.load(http_resp.body)

          if result['success']
            response.reply result['data']['url']
          else
            Lita.logger.error "#{self.class}: Unable to generate a meme image: #{result['error_message']}"
            response.reply "Error: #{result['error_message']}"
          end

        else
          Lita.logger.error "#{self.class}: Unable to generate a meme image: #{http_resp.body}"
          response.reply "Error: Unable to generate a meme image"
        end

      end

    end

    Lita.register_handler(Imgflip)
  end
end
