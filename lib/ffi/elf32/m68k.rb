require 'ffi/elf/m68k'

module FFI
  module Elf32
    module M68K
      include Elf::M68K

      # Values for Elf32_Ehdr.e_flags
      EFLAGS_CPU32 = 0x00810000

    end
  end
end
