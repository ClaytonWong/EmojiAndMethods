# define method with case
def emoji_for_species (string)
    
    # Change parameter to all lowercase
    string = string.downcase

    # search string for certain patterns (for challenge 3)
    if string.match('wolf')
        string = 'wolf'
    elsif string.match('gorilla')
        string = 'gorilla'
    elsif string.match('rhino')
        string = 'rhino'
    elsif string.match('owl')
        string = 'owl'
    elsif string.match('eagle')
        string = 'eagle'
    else
        string = '?'
    end

    # alternative solution for challenge 3
    #string.strip!

    case string
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

# Call method with different species
puts emoji_for_species ('wolf')
puts emoji_for_species ('gorilla')
puts emoji_for_species ('rhino')
puts emoji_for_species ('owl')
puts emoji_for_species ('bunyip')

# Challenge 2: Ask user for species then call method
puts 'Please enter a species:'
species = gets.chomp
puts emoji_for_species(species)

# Challenge 3
puts emoji_for_species ('    OWL   ')

# Challenge 4
puts emoji_for_species ('  wedge tailed eagle  ')

# Challenge 5
puts emoji_for_species ('  rhino  ')
puts emoji_for_species ('  rhinocerous  ')