# Salesforce ID Converter

No frills Salesforce ID converter in Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'salesforce_id_converter', :git => "git://github.com/jackbearden/salesforce_id_converter"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install salesforce_id_converter

## Usage

Convert an 18 digit Salesforce ID to a 15 digit Salesforce ID:

    salesforce_id        = 'a1e50000000VCsFAAW'
    fifteen_character_id = SalesforceIdConverter::Conversion.to_fifteen(salesforce_id)
    # => 'a1e50000000VCsF'

Convert a 15 digit Salesforce ID to an 18 digit Salesforce ID:

    salesforce_id         = 'a1e50000000VCsF'
    eighteen_character_id = SalesforceIdConverter::Conversion.to_eighteen(salesforce_id)
    # => 'a1e50000000VCsFAAW'

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
