require 'ffi'

require 'elf/types'
require 'elf/commands'
require 'elf/flags'
require 'elf/file_types'
require 'elf/data'
require 'elf/archive_header'
require 'elf/archive_symbol'

module FFI
  module Elf
    extend FFI::Library

    ffi_lib 'libelf'

    attach_function :elf_begin, [:int, :int, :pointer], :pointer
    attach_function :elf_clone, [:pointer, :int], :pointer
    attach_function :elf_memory, [:string, :size_t], :pointer
    attach_function :elf_next, [:pointer], :int
    attach_function :elf_end, [:pointer], :int
    attach_function :elf_update, [:pointer, :int], :loff_t
    attach_function :elf_kind, [:pointer], :int
    attach_function :elf_getbase, [:pointer], :loff_t
    attach_function :elf_getident, [:pointer, :pointer], :string
    attach_function :elf32_getehdr, [:pointer], :pointer
    attach_function :elf64_getehdr, [:pointer], :pointer
    attach_function :elf32_newehdr, [:pointer], :pointer
    attach_function :elf64_newehdr, [:pointer], :pointer
    attach_function :elf32_getphdr, [:pointer], :pointer
    attach_function :elf64_getphdr, [:pointer], :pointer
    attach_function :elf32_newphdr, [:pointer], :pointer
    attach_function :elf64_newphdr, [:pointer], :pointer
    attach_function :elf_getscn, [:pointer, :size_t], :pointer
    attach_function :elf32_offscn, [:pointer, :uint], :pointer
    attach_function :elf64_offscn, [:pointer, :ulong], :pointer
    attach_function :elf_ndxscn, [:pointer], :size_t
    attach_function :elf_nextscn, [:pointer, :pointer], :pointer
    attach_function :elf_newscn, [:pointer], :pointer
    attach_function :elf_scnshndx, [:pointer], :int
    attach_function :elf_getshnum, [:pointer, :pointer], :int
    attach_function :elf_getshstrndx, [:pointer, :pointer], :int
    attach_function :elf32_getshdr, [:pointer], :pointer
    attach_function :elf64_getshdr, [:pointer], :pointer
    attach_function :elf_flagelf, [:pointer, :int, :uint], :uint
    attach_function :elf_flagehdr, [:pointer, :int, :uint], :uint
    attach_function :elf_flagphdr, [:pointer, :int, :uint], :uint
    attach_function :elf_flagscn, [:pointer, :int, :uint], :uint
    attach_function :elf_flagdata, [:pointer, :int, :uint], :uint
    attach_function :elf_flagshdr, [:pointer, :int, :uint], :uint
    attach_function :elf_getdata, [:pointer, :pointer], :pointer
    attach_function :elf_rawdata, [:pointer, :pointer], :pointer
    attach_function :elf_newdata, [:pointer], :pointer
    attach_function :elf_getdata_rawchunk, [:pointer, :loff_t, :size_t, :int], :pointer
    attach_function :elf_strptr, [:pointer, :size_t, :size_t], :string
    attach_function :elf_getarhdr, [:pointer], :pointer
    attach_function :elf_getaroff, [:pointer], :loff_t
    attach_function :elf_rand, [:pointer, :size_t], :size_t
    attach_function :elf_getarsym, [:pointer, :pointer], :pointer
    attach_function :elf_cntl, [:pointer, :int], :int
    attach_function :elf_rawfile, [:pointer, :pointer], :string
    attach_function :elf32_fsize, [:int, :size_t, :uint], :size_t
    attach_function :elf64_fsize, [:int, :size_t, :uint], :size_t
    attach_function :elf32_xlatetom, [:pointer, :pointer, :uint], :pointer
    attach_function :elf64_xlatetom, [:pointer, :pointer, :uint], :pointer
    attach_function :elf32_xlatetof, [:pointer, :pointer, :uint], :pointer
    attach_function :elf64_xlatetof, [:pointer, :pointer, :uint], :pointer
    attach_function :elf_errno, [], :int
    attach_function :elf_errmsg, [:int], :string
    attach_function :elf_version, [:uint], :uint
    attach_function :elf_fill, [:int], :void
    attach_function :elf_hash, [:string], :ulong
    attach_function :elf_gnu_hash, [:string], :ulong
    attach_function :elf32_checksum, [:pointer], :long
    attach_function :elf64_checksum, [:pointer], :long

  end
end
