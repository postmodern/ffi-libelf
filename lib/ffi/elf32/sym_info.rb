require 'ffi/elf32/types'
require 'ffi/elf/sym_info'

module FFI
  module Elf32
    class SymInfo < Elf::SymInfo

      layout :si_boundto, :elf32_half,
             :si_flags, :elf32_half

    end
  end
end
