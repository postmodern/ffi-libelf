require 'elf/64/types'
require 'elf/sym_info'

module FFI
  module Elf64
    class SymInfo < Elf::SymInfo

      layout :si_boundto, :elf64_half,
             :si_flags, :elf64_half

    end
  end
end
