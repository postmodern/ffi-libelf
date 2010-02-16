require 'elf/version'

require 'spec_helper'

describe ELF do
  it "should define a VERSION constant" do
    ELF.should be_const_defined('VERSION')
  end
end
