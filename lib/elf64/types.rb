require 'elf/types'

require 'ffi'

module FFI
  module Elf64
    extend FFI::Library

    typedef :uint16, :elf64_half
    typedef :uint32, :elf64_word
    typedef :int32, :elf64_sword
    typedef :uint64, :elf64_xword
    typedef :int64, :elf64_sxword
    typedef :uint64, :elf64_addr
    typedef :uint64, :elf64_off
    typedef :uint16, :elf64_section
    typedef :uint16, :elf64_versym
  end
end
