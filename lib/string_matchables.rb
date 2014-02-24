require "string_matchables/version"

module StringMatchables
 def matches
      
      str = self.to_s.strip
      return "" if str.empty?
      matches_arr = []

      matches_arr << str.gsub(/\s+/, "")
      matches_arr << str.gsub('-', "")
      matches_arr << str.gsub('.', "")

      matches_arr << (str.split(/\s+/)) if str.include?(" ")
      matches_arr << (str.split('-')) if str.include?('-')
      matches_arr << (str.split('.')) if str.include?('.')

      matches_arr << form_company_abbreviations(str)
      matches_arr.flatten.compact.uniq
    end

  private
   def form_company_abbreviations(company)
      abbreviation = []
      name_arr = []
      if company.include?(" ")
        name_arr = company.split(/\s+/)
      elsif company.include?('-')
        name_arr = company.split('-')
      elsif company.include?('.')
        name_arr = company.split('.')
      end
      if name_arr.length > 1
        name_arr.collect{|n| abbreviation << n[0]}
        return [abbreviation.join(' '),abbreviation.join('-'), abbreviation.join('.'), abbreviation.join]
      end
      abbreviation
    end

end
class String
	include StringMatchables
end
