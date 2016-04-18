class AwesomeSorter
  attr_accessor :companies

  def initialize
    @companies = companies
  end

  def self.sort!(companies)
    companies.sort! do |x,y|
    a=x.sub(/"/i,"")
    b=y.sub(/"/i,"")
    a.upcase!
    b.upcase!
    a<=>b
    end
  end
end


companies = [
  'Adobe',
  'microsoft inc.',
  'bCreative',
  '1000Museums',
  'Adidas',
  'ABIBAS',
  'ReeBook',
  'royalry-holding llc',
  'Rexona',
  'aliexpress',
  'booking.com'
]

AwesomeSorter.sort!(companies)
puts companies