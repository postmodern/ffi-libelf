require 'elf/version'

require 'spec_helper'

describe Elf do
  it "should define a VERSION constant" do
    described_class.should be_const_defined('VERSION')
  end
end
