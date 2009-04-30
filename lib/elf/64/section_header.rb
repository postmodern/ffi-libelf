require 'elf/64/typedefs'
require 'elf/section_header'

module FFI
  module Elf64
    class SectionHeader < Elf::SectionHeader
      layout :sh_name, :elf64_word,
             :sh_type, :elf64_word,
             :sh_flags, :elf64_word,
             :sh_addr, :elf64_addr,
             :sh_offset, :elf64_off,
             :sh_size, :elf64_word,
             :sh_link, :elf64_word,
             :sh_info, :elf64_word,
             :sh_addralign, :elf64_word,
             :sh_entsize, :elf64_word
    end
  end
end
