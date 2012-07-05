require 'ffi/elf/types'
require 'ffi/elf/data'
require 'ffi/elf/ar_header'
require 'ffi/elf/ar_symbol'

module FFI
  module Elf
    extend FFI::Library

    ffi_lib ['elf', 'libelf.so.1']

    attach_function :elf_begin, [:int, :elf_cmd, :pointer], :pointer
    attach_function :elf_clone, [:pointer, :elf_cmd], :pointer
    attach_function :elf_memory, [:pointer, :size_t], :pointer
    attach_function :elf_next, [:pointer], :elf_cmd
    attach_function :elf_end, [:pointer], :int
    attach_function :elf_update, [:pointer, :elf_cmd], :loff_t
    attach_function :elf_kind, [:pointer], :int
    attach_function :elf_getbase, [:pointer], :loff_t
    attach_function :elf_getident, [:pointer, :pointer], :string
    attach_function :elf_getscn, [:pointer, :size_t], :pointer
    attach_function :elf_ndxscn, [:pointer], :size_t
    attach_function :elf_nextscn, [:pointer, :pointer], :pointer
    attach_function :elf_newscn, [:pointer], :pointer
    attach_function :elf_getshnum, [:pointer, :pointer], :int
    attach_function :elf_getshstrndx, [:pointer, :pointer], :int
    attach_function :elf_flagelf, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_flagehdr, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_flagphdr, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_flagscn, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_flagdata, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_flagshdr, [:pointer, :elf_cmd, :uint], :uint
    attach_function :elf_getdata, [:pointer, :pointer], :pointer
    attach_function :elf_rawdata, [:pointer, :pointer], :pointer
    attach_function :elf_newdata, [:pointer], :pointer
    attach_function :elf_getdata_rawchunk, [:pointer, :loff_t, :size_t, :int], :pointer
    attach_function :elf_strptr, [:pointer, :size_t, :size_t], :string
    attach_function :elf_getarhdr, [:pointer], :pointer
    attach_function :elf_getaroff, [:pointer], :loff_t
    attach_function :elf_rand, [:pointer, :size_t], :size_t
    attach_function :elf_getarsym, [:pointer, :pointer], :pointer
    attach_function :elf_cntl, [:pointer, :elf_cmd], :int
    attach_function :elf_rawfile, [:pointer, :pointer], :string
    attach_function :elf_errno, [], :int
    attach_function :elf_errmsg, [:int], :string
    attach_function :elf_version, [:uint], :uint
    attach_function :elf_fill, [:int], :void
    attach_function :elf_hash, [:string], :ulong
    attach_function :elf_gnu_hash, [:string], :ulong

    #
    # Elf32 functions
    #
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

    #
    # Elf64 functions
    #
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

    #
    # GElf functions
    #
    attach_function :gelf_getclass, [:pointer], :int
    attach_function :gelf_fsize, [:pointer, :elf_type, :size_t, :uint], :size_t
    attach_function :gelf_getehdr, [:pointer, :pointer], :pointer
    attach_function :gelf_update_ehdr, [:pointer, :pointer], :pointer
    attach_function :gelf_newehdr, [:pointer, :int], :ulong
    attach_function :gelf_offscn, [:pointer, :gelf_off], :pointer
    attach_function :gelf_getshdr, [:pointer, :pointer], :pointer
    attach_function :gelf_update_shdr, [:pointer, :pointer], :pointer
    attach_function :gelf_getphdr, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_phdr, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_newphdr, [:pointer, :size_t], :ulong
    attach_function :gelf_xlatetom, [:pointer, :pointer, :pointer, :uint], :pointer
    attach_function :gelf_xlatetof, [:pointer, :pointer, :pointer, :uint], :pointer
    attach_function :gelf_getrel, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_getrela, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_rel, [:pointer, :int, :pointer], :int
    attach_function :gelf_update_rela, [:pointer, :int, :pointer], :int
    attach_function :gelf_getsym, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_sym, [:pointer, :int, :pointer], :int
    attach_function :gelf_getsymshndx, [:pointer, :pointer, :int, :pointer, :pointer], :pointer
    attach_function :gelf_update_symshndx, [:pointer, :pointer, :int, :pointer, :elf32_word], :int
    attach_function :gelf_getsyminfo, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_syminfo, [:pointer, :int, :pointer], :int
    attach_function :gelf_getdyn, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_dyn, [:pointer, :int, :pointer], :int
    attach_function :gelf_getmove, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_move, [:pointer, :int, :pointer], :int
    attach_function :gelf_getlib, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_lib, [:pointer, :int, :pointer], :int
    attach_function :gelf_getversym, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_versym, [:pointer, :int, :pointer], :int
    attach_function :gelf_getverneed, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_verneed, [:pointer, :int, :pointer], :int
    attach_function :gelf_getvernaux, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_vernaux, [:pointer, :int, :pointer], :int
    attach_function :gelf_getverdef, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_verdef, [:pointer, :int, :pointer], :int
    attach_function :gelf_getverdaux, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_verdaux, [:pointer, :int, :pointer], :int
    attach_function :gelf_getauxv, [:pointer, :int, :pointer], :pointer
    attach_function :gelf_update_auxv, [:pointer, :int, :pointer], :int
    attach_function :gelf_getnote, [:pointer, :size_t, :pointer, :pointer, :pointer], :size_t
    attach_function :gelf_checksum, [:pointer], :long
  end
end
