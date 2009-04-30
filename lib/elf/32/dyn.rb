require 'elf/32/typedefs'
require 'elf/dyn'

module FFI
  module Elf32
    class Dyn < Elf::Dyn
      layout :d_tag, :elf32_sword,
             :d_un, :elf32_word
    end
  end
end
