require 'gelf/types'

require 'ffi'

module FFI
  module GElf
    extend FFI::Library

    ffi_lib 'elf'

    attach_function :gelf_getclass, [:pointer], :int
    attach_function :gelf_fsize, [:pointer, Elf::TYPES, :size_t, :uint], :size_t
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
