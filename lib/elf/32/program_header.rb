require 'elf/32/typedefs'
require 'elf/program_header'

module FFI
  module Elf32
    class ProgramHeader < Elf::ProgramHeader
      layout :p_type, :elf32_word,
             :p_offset, :elf32_off,
             :p_vaddr, :elf32_addr,
             :p_paddr, :elf32_addr,
             :p_filesz, :elf32_word,
             :p_memsz, :elf32_word,
             :p_flags, :elf32_word,
             :p_align, :elf32_word
    end
  end
end
