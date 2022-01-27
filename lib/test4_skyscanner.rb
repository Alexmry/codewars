#flight itineraries are specified as a list of strings of the forms below
# ["LON-EDI-534-boeing_737", "LON-EDI-534-boeing_747", "DUB-LON-464-embraer_190"]

# aircraft emissions are specified as a list of strings of the forms below
# aircraft and emission per per passenger per km
# ["boeing_737-0.101", "boeing_747-0.120"]   => aircraftEmissions => array
# 

# if no flight for the routes appearsin the list of itineraries, then the carbon emission should be 0

# the minimum carbon emission for the origin LON and destination EDI would be 53.9 of carbon emission per passenger

# given the aircraft emissions and the flight itineraries what is the minimum amont of carbon emission for the route, consisting of an origin an a destiniation

def solution(aircraftEmissions, flightItineraries, origin, destination)
    # Type your solution here 
    # min carbon emission per passenger for the route?

    # sort in a hash flight emission per passenger for each aircraft
    # ["boeing_737-0.101", "boeing_747-0.120"]

    aircraft_emission_per_passenger = []


    aircraftEmissions.each do |aircraftEmission|
        array_of_2_string = aircraftEmission.split("-")
        aircraft_emission_per_passenger.push(Hash[*array_of_2_string.flatten(1)])
    end

    aircraft_min_carbon_emission = []

    km = flightItineraries[0].split("-")[2]

    flightItineraries.each do |flightItinerary|
        if flightItinerary.split("").first(3).join("") == origin && flightItinerary.split("-")[1] == destination
            # flightItinerary.split("-").drop(2).reverse
            aircraft_emission_per_passenger.each do |a|
                aircraft_min_carbon_emission << km.to_i * a[flightItinerary.split("-")[3]].to_i
            end
           
        end
    end

    return aircraft_min_carbon_emission

end


puts "#{solution(["boeing_737-0.101", "boeing_747-0.120"], ["LON-EDI-534-boeing_737", "LON-EDI-534-boeing_747", "DUB-LON-464-embraer_190"], "LON", "EDI")}"