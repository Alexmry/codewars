   
=begin

Write a function that when given a URL as a string, parses out just the domain name and returns it as a string. For example:
domain_name("http://github.com/carbonfive/raygun") == "github" 
domain_name("http://www.zombie-bites.com") == "zombie-bites"
domain_name("https://www.cnet.com") == "cnet"

=end


def domain_name(url)
  # return just the domain name

#   match_data = url.match(/^(http:\/\/) (.com)$/)

#   return match_data[1]

    # URI.parse(url).host.split('.').last(2)[0]
    URI.parse(url).host.split('.').first
end