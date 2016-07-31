module SalesforceIdConverter::Conversion

  def self.to_eighteen(fifteen)
    return SalesforceIdConverter::Error::InputNotCorrectLength if fifteen.length != 15

    arr_split     = split(fifteen)
    arr_reversed  = reverse(arr_split)
    arr_uppercase = uppercase(arr_reversed)
    str_to_append = gen_lookup_string(arr_uppercase)

    "#{fifteen}#{str_to_append}"
  end

  def self.to_fifteen(eighteen)
    return SalesforceIdConverter::Error::InputNotCorrectLength if eighteen.length != 18

    eighteen[0, 15]
  end

private

  def self.split(str)
    first_set  = str[0, 5]
    second_set = str[5, 5]
    third_set  = str[10, 5]

    [first_set, second_set, third_set]
  end

  def self.reverse(arr)
    arr.map! { |s| s.reverse }
  end

  def self.uppercase(arr)
    arr.map! { |s| gen_uppercase_string(s) }
  end

  def self.gen_uppercase_string(set)
    converted_set = ''
    byterange     = 'AZ'.bytes.to_a

    set.each_byte do |c|
      if c.between? byterange[0], byterange[1]
        converted_set << "1"
      else
        converted_set << "0"
      end
    end

    converted_set
  end

  def self.gen_lookup_string(arr)
    str = ''
    arr.each do |a|
      str << lookup_hash[a]
    end

    str
  end

  def self.lookup_hash
    {
      '00000' => 'A',
      '00001' => 'B',
      '00010' => 'C',
      '00011' => 'D',
      '00100' => 'E',
      '00101' => 'F',
      '00110' => 'G',
      '00111' => 'H',
      '01000' => 'I',
      '01001' => 'J',
      '01010' => 'K',
      '01011' => 'L',
      '01100' => 'M',
      '01101' => 'N',
      '01110' => 'O',
      '01111' => 'P',
      '10000' => 'Q',
      '10001' => 'R',
      '10010' => 'S',
      '10011' => 'T',
      '10100' => 'U',
      '10101' => 'V',
      '10110' => 'W',
      '10111' => 'X',
      '11000' => 'Y',
      '11001' => 'Z',
      '11010' => '0',
      '11011' => '1',
      '11100' => '2',
      '11101' => '3',
      '11110' => '4',
      '11111' => '5'
    }
  end

end
