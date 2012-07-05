require 'ffi/elf32/types'
require 'ffi/elf/rel_addend'

module FFI
  module Elf32
    class RelAddend < Elf::RelAddend

      layout :r_offset, :elf32_addr,
             :r_info, :elf32_word,
             :r_addend, :elf32_sword

    end
  end
end
