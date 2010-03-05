require 'elf64/types'
require 'elf/rel'

module FFI
  module Elf64
    class Rel < Elf::Rel

      layout :r_offset, :elf64_addr,
             :r_info, :elf64_xword

    end
  end
end
