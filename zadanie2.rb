class AnalyticsService
  attr_accessor :data

  def initialize
    @data = data
  end

  def analyze_data(data)
    u=data.sort[0][0]
    v=0
    z=[]
    data.sort.each do |x,y|
      if u==x
        v=y+v
      else
        v=y
        u=x
      end
        z=z+[u,v]
    end
    p Hash[*z.flatten]
  end
end

data = [['United States', 34.8], ['Ukraine', 165.2], ['United States', 40.0],['Panama', 220.45],['China', 2134.56],['Ukraine', 34.8]]

AnalyticsService.new.analyze_data(data) #=> { 'Ukraine' => 200.0, 'Panama' => 220.45, 'China' => 2134.56, 'United States', 74.8 }
