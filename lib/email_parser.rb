# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses
    def initialize(emails)
        @email_addresses = emails
    end

    def parse
        result = []
        by_comma = @email_addresses.split(",")
        by_comma.each do |item|
            addresses = item.split(" ")
            addresses.each do |address|
                if !result.include?(address)
                    result << address
                end
            end
        end
        return result
    end
end
