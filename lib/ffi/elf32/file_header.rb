require 'ffi/elf32/types'
require 'ffi/elf/file_header'

module FFI
  module Elf32
    class FileHeader < Elf::FileHeader

      layout :e_ident, [:uchar, Elf::EI_NIDENT],
             :e_type, :elf32_half,
             :e_machine, :elf32_half,
             :e_version, :elf32_word,
             :e_entry, :elf32_addr,
             :e_phoff, :elf32_off,
             :e_shoff, :elf32_off,
             :e_flags, :elf32_word,
             :e_ehsize, :elf32_half,
             :e_phentsize, :elf32_half,
             :e_phnum, :elf32_half,
             :e_shentsize, :elf32_half,
             :e_shnum, :elf32_half,
             :e_shstrndx, :elf32_half

    end
  end
end
