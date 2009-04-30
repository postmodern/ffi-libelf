require 'elf/32/typedefs'
require 'elf/rel_addend'

module FFI
  module Elf32
    class RelAddend < Elf::RelAddend
      layout :r_offset, :elf32_addr,
             :r_info, :elf32_word,
             :r_addend, :elf32_sword
    end
  end
end
