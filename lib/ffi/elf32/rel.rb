require 'ffi/elf32/types'
require 'ffi/elf/rel'

module FFI
  module Elf32
    class Rel < Elf::Rel

      layout :r_offset, :elf32_addr,
             :r_info, :elf32_word

    end
  end
end
