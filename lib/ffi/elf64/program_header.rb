require 'ffi/elf64/types'
require 'ffi/elf/program_header'

module FFI
  module Elf64
    class ProgramHeader < Elf::ProgramHeader

      layout :p_type, :elf64_word,
             :p_flags, :elf64_word,
             :p_offset, :elf64_off,
             :p_vaddr, :elf64_addr,
             :p_paddr, :elf64_addr,
             :p_filesz, :elf64_xword,
             :p_memsz, :elf64_xword,
             :p_align, :elf64_xword

    end
  end
end
