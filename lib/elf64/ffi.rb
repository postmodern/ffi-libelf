require 'elf64/types'

require 'ffi'

module FFI
  module Elf64
    extend FFI::Library

    ffi_lib 'libelf'

    attach_function :elf64_getehdr, [:pointer], :pointer
    attach_function :elf64_newehdr, [:pointer], :pointer
    attach_function :elf64_getphdr, [:pointer], :pointer
    attach_function :elf64_newphdr, [:pointer], :pointer
    attach_function :elf64_offscn, [:pointer, :ulong], :pointer
    attach_function :elf64_getshdr, [:pointer], :pointer
    attach_function :elf64_fsize, [:int, :size_t, :uint], :size_t
    attach_function :elf64_xlatetom, [:pointer, :pointer, :uint], :pointer
    attach_function :elf64_xlatetof, [:pointer, :pointer, :uint], :pointer
    attach_function :elf64_checksum, [:pointer], :long
  end
end
