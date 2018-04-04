class String
    # Method that prints an animal emoji depending on the
    # animal string received
    def animal_emoji
        case self
            when 'wolf'
                '🐺'
            when 'gorilla'
                'gorilla'
            when 'rhino'
                print 'rhino'
            when 'owl'
                print 'owl'
            when 'eagle'
                print 'eagle'
            else
                print '❔'
        end
    end

    # Method that prints a flag emoji depending on the
    # country code received
    def flag_emoji
        case self
            when 'au'
                print '🇺 AuFlag'
            when 'fr'
                print '🇷 FrFlag'
            when 'us'
                print '🇸 UsFlag'
            else
                print self
        end
    end

    # Method that prints the flag emoji whenever you 
    # encounter an occurance of the country codes
    # 'au', 'fr' or 'us'
    def flag_emoji_all_oc
        index = 0 # Goto start of string received
        while index < self.length do # While not at end of string, check for 'a', 'f', or 'u' 
            case self[index]
                when 'a'
                    index = index + 1 # Goto next character
                    if self[index] == 'u' # If you get 2nd letter of country code
                        print '🇺 AuFlag' # print appropriate emoji
                    else                      # Else
                        print self[index - 1] # print previous character
                        print self[index]     # and current character
                    end 
                when 'f'
                    index = index + 1 # Goto next character
                    if self[index] == 'r' # If you get 2nd letter of country code
                        print '🇷 FrFlag' # print appropriate emoji
                    else                      # Else
                        print self[index - 1] # print previous character
                        print self[index]     # and current character              
                    end 
                when 'u'
                    index = index + 1 # Goto next character
                    if self[index] == 's' # If you get 2nd letter of country code
                        print '🇸 UsFlag' # print appropriate emoji
                    else                      # Else
                        print self[index - 1] # print previous character
                        print self[index]     # and current character
                    end
                else
                    print self[index]
            end
            index = index + 1 # Goto next character   
        end
    end
end

puts 'wolf'.chomp.strip.animal_emoji
puts 'au'.chomp.strip.flag_emoji
puts 'fr'.chomp.strip.flag_emoji
puts 'us'.chomp.strip.flag_emoji
puts ' aust '.chomp.strip.flag_emoji
puts 'au'.chomp.strip.flag_emoji_all_oc
puts 'fr'.chomp.strip.flag_emoji_all_oc
puts 'us'.chomp.strip.flag_emoji_all_oc
puts ' au fr us '.chomp.flag_emoji_all_oc
puts ' aust '.chomp.flag_emoji_all_oc
puts "jfhdsg frjkj hjkhkjau kjhskdjhkjfr".chomp.flag_emoji_all_oc
