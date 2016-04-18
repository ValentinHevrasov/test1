class Array
  attr_accessor :select

  def initialize
    @select = select
  end

  def deep_index(select)
  i=0
  o=0
  p=0
  w=[]
    each do |x|
      unless x.class==Array
        if x==select
          w=[i]
        end
      else
        x.each do |y|
          unless y.class==Array
            if y==select
              w=[i,o]
            end
          else
            y.each do |z|
              if z==select
                w=[i,o,p]
              end
            p=p+1
            end
          end
        o=o+1
        end
      end
      i=i+1
    end
    p w
  end
end

a = [
  'hash',
  'array',
  [
    'map',
    [
      'rails',
      'assets',
      'actioncable',
      'REST'
    ],
    'inject',
    'reduce',
    'detect'
  ],
  'metaptogramming',
  'recursion',
  [
    'css2',
    'ecmascript6',
    'sublimetext',
    'heroku'
  ],
  'activerecord',
  'ember'
]

a.deep_index('REST')