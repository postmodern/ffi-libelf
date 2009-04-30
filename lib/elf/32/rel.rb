require 'elf/32/typedefs'
require 'elf/rel'

module FFI
  module Elf32
    class Rel < Elf::Rel
      layout :r_offset, :elf32_addr,
             :r_info, :elf32_word
    end
  end
end
