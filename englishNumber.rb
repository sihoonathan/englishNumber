def englishNumber(num)
  if num == 0
    return 'zero'
  end

  if num < 0
    return 'Please input number greater than or equal to 0'
  end

  string = ''

  onesPlace = ['one',     'two',       'three',    'four',     'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'forty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen', 'fifteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']


  left = num

  #trillion
  write = left / 10**12
  left = left - write * 10**12

  if write > 0
    string += englishNumber(write) + ' trillion '
  end

  #billion
  write = left / 10**9
  left = left - write * 10**9

  if write > 0
    string += englishNumber(write) + ' billion '
  end

  #million
  write = left / 10**6
  left = left - write * 10**6

  if write > 0
    string += englishNumber(write) + ' million '
  end

  #thousand
  write = left / 1000
  left = left - write * 1000

  if write >= 1
    string += englishNumber(write) + ' thousand '
  end

  #hundred
  write = left / 100
  left = left - write * 100

  if write >= 1
    string += englishNumber(write) + ' hundred '
  end

  #ten
  write = left / 10
  left = left - write * 10

  if write == 1 and left > 0
      string += teenagers[left - 1]
      left = 0
  elsif write > 0
    string += tensPlace[write-1]
    if left > 0
      string += '-'
    end
  end

  #one
  write = left
  left = left / 10

  if write > 0
    string += onesPlace[write-1]
  end

  return string
end

puts englishNumber(  0)
puts englishNumber(  9)
puts englishNumber( 10)
puts englishNumber( 11)
puts englishNumber( 17)
puts englishNumber( 32)
puts englishNumber( 88)
puts englishNumber( 99)
puts englishNumber(100)
puts englishNumber(101)
puts englishNumber(234)
puts englishNumber(3211)
puts englishNumber(999999)
puts englishNumber(102023490000)
puts englishNumber(1012300)
puts englishNumber(1000)
puts englishNumber(1000000)