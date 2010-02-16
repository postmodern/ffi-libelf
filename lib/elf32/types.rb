require 'elf/types'

require 'ffi'

module FFI
  module Elf32
    extend FFI::Library

    typedef :uint16, :elf32_half
    typedef :uint32, :elf32_word
    typedef :int32, :elf32_sword
    typedef :uint64, :elf32_xword
    typedef :int64, :elf32_sxword
    typedef :uint32, :elf32_addr
    typedef :uint32, :elf32_off
    typedef :uint16, :elf32_section
    typedef :uint16, :elf32_versym
    typedef :uint32, :elf32_conflict
  end
end
