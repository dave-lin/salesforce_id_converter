require File.expand_path('../helper', __FILE__)

describe 'conversion tests' do
  it 'must convert to a 15 character id' do
    salesforce_id        = 'a1e50000000VCsFAAW'
    fifteen_character_id = SalesforceIdConverter::Conversion.to_fifteen salesforce_id

    fifteen_character_id.must_equal salesforce_id[0, 15]
  end

  it 'must convert to a 18 character id' do
    salesforce_id         = 'a1e50000000VCsF'
    eighteen_character_id = SalesforceIdConverter::Conversion.to_eighteen salesforce_id

    eighteen_character_id.must_equal 'a1e50000000VCsFAAW'
  end
end
