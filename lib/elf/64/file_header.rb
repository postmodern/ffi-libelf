require 'elf/64/typedefs'
require 'elf/file_header'

module FFI
  module Elf64
    class FileHeader < Elf::FileHeader
      layout :e_ident, :char_array,
             :e_type, :elf64_half,
             :e_machine, :elf64_half,
             :e_version, :elf64_word,
             :e_entry, :elf64_addr,
             :e_phoff, :elf64_off,
             :e_shoff, :elf64_off,
             :e_flags, :elf64_word,
             :e_ehsize, :elf64_half,
             :e_phentsize, :elf64_half,
             :e_phnum, :elf64_half,
             :e_shentsize, :elf64_half,
             :e_shnum, :elf64_half,
             :e_shstrndx, :elf64_half
    end
  end
end
