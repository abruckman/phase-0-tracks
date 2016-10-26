# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  #creates the class with attributes in pace
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # combines the predicted death and speed of spread outputs
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # Predicts the number of deaths
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      multiplyer = 0.4
    elsif @population_density >= 150
      multiplyer = 0.3
    elsif @population_density >= 100
      multiplyer = 0.2
    elsif @population_density >= 50
      multiplyer = 0.1
    else
      multiplyer = 0.05
    end
    number_of_deaths = (@population*multiplyer).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #calculates speed of spread from population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end



#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
STATE_DATA.each do |state_name, stats|
  state = VirusPredictor.new(state_name, stats[:population_density], stats[:population])
  state.virus_effects
end


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

#1. so there are two hash syntaxes, the Key =>value and the key: value syntax. the first kind works a bit better with a string key
#2 require relative links this program to another file with that name (w/out a suffix) in this directory. 'require' can pull from anywhere, not just the directory, but needs a full filepath to work
#3. the most straightforward way to iterate through a hash is .each. this returns each line individuall. .map goes through and returns the entire hash with those modifications made. .map! modifies the hash in playce
#4. they were instance variables so they didn't need to be called.
#5. difference between local, global and instance variables