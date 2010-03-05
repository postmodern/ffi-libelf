require 'elf/types'

require 'ffi'

module FFI
  module GElf
    extend FFI::Library

    case FFI::Platform::ADDRESS_SIZE
    when 64
      require 'elf64/types'

      typedef :uint32, :elf32_word

      typedef Elf64.find_type(:elf64_half), :gelf_half
      typedef Elf64.find_type(:elf64_word), :gelf_word
      typedef Elf64.find_type(:elf64_sword), :gelf_sword
      typedef Elf64.find_type(:elf64_xword), :gelf_xword
      typedef Elf64.find_type(:elf64_sxword), :gelf_sxword
      typedef Elf64.find_type(:elf64_addr), :gelf_addr
      typedef Elf64.find_type(:elf64_off), :gelf_off
      typedef Elf64.find_type(:elf64_section), :gelf_section
      typedef Elf64.find_type(:elf64_versym), :gelf_versym
    when 32
      require 'elf32/types'

      typedef Elf32.find_type(:elf32_word), :elf32_word

      typedef Elf32.find_type(:elf32_half), :gelf_half
      typedef Elf32.find_type(:elf32_word), :gelf_word
      typedef Elf32.find_type(:elf32_sword), :gelf_sword
      typedef Elf32.find_type(:elf32_xword), :gelf_xword
      typedef Elf32.find_type(:elf32_sxword), :gelf_sxword
      typedef Elf32.find_type(:elf32_addr), :gelf_addr
      typedef Elf32.find_type(:elf32_off), :gelf_off
      typedef Elf32.find_type(:elf32_section), :gelf_section
      typedef Elf32.find_type(:elf32_versym), :gelf_versym
    else
      raise(StandardError,"unsupported address-size: #{FFI::Platform::ADDRESS_SIZE}",caller)
    end

  end
end
