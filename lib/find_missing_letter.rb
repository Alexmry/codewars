module FindMissingLetter

    def find_missing_letter(arr)

        # Create a new array that starts at the 1st element of this array
        array_with_missing_letter = arr[0].upto(arr.last).to_a

        # compare it to Arr and check which letter is missing
        missing_letter = []

        array_with_missing_letter.each do |l|
            if arr.index(l)
                puts ""
            else 
                #add the missing letter
                missing_letter << l 
            end
        end

        # return the missing letter || or nil if no letter is missing
        return missing_letter.join("")
    end

end

# find_missing_letter(["a","b","c","d","f"]) => "e"



# def find_missing_letter(arr)
#     ((arr.first..arr.last).to_a - arr).first
# end