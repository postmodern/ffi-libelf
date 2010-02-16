require 'elf/64/types'
require 'elf/rel_addend'

module FFI
  module Elf64
    class RelAddend < Elf::RelAddend

      layout :r_offset, :elf64_addr,
             :r_info, :elf64_xword,
             :r_addend, :elf64_sxword

    end
  end
end
