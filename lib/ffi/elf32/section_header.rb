require 'ffi/elf32/types'
require 'ffi/elf/section_header'

module FFI
  module Elf32
    class SectionHeader < Elf::SectionHeader

      layout :sh_name, :elf32_word,
             :sh_type, :elf32_word,
             :sh_flags, :elf32_word,
             :sh_addr, :elf32_addr,
             :sh_offset, :elf32_off,
             :sh_size, :elf32_word,
             :sh_link, :elf32_word,
             :sh_info, :elf32_word,
             :sh_addralign, :elf32_word,
             :sh_entsize, :elf32_word

    end
  end
end
