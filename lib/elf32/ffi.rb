require 'elf32/types'

require 'ffi'

module FFI
  module Elf32
    extend FFI::Library

    ffi_lib 'elf'

    attach_function :elf32_getehdr, [:pointer], :pointer
    attach_function :elf32_newehdr, [:pointer], :pointer
    attach_function :elf32_getphdr, [:pointer], :pointer
    attach_function :elf32_newphdr, [:pointer], :pointer
    attach_function :elf32_offscn, [:pointer, :uint], :pointer
    attach_function :elf32_getshdr, [:pointer], :pointer
    attach_function :elf32_fsize, [:int, :size_t, :uint], :size_t
    attach_function :elf32_xlatetom, [:pointer, :pointer, :uint], :pointer
    attach_function :elf32_xlatetof, [:pointer, :pointer, :uint], :pointer
    attach_function :elf32_checksum, [:pointer], :long
  end
end
