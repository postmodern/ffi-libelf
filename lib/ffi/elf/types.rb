require 'ffi'

module FFI
  module Elf
    extend FFI::Library

    EI_NIDENT = 16

    # Identification values for recognized object files.
    KIND = enum :elf_kind, [
      :none,			# Unknown.
      :archive,	  # Archive.
      :coff,			# Stupid old COFF.
      :elf,			  # ELF file.
      :num
    ]

    # Known translation types.
    TYPE = enum :elf_type, [
      :byte,                # unsigned char
      :addr,                # Elf32_Addr, Elf64_Addr, ...
      :dyn,                 # Dynamic section record.
      :elf_header,          # ELF header.
      :half,                # Elf32_Half, Elf64_Half, ...
      :off,                 # Elf32_Off, Elf64_Off, ...
      :program_header,      # Program header.
      :rela,                # Relocation entry with addend.
      :rel,                 # Relocation entry.
      :section_header,      # Section header.
      :sword,               # Elf32_Sword, Elf64_Sword, ...
      :sym,                 # Symbol record.
      :word,                # Elf32_Word, Elf64_Word, ...
      :xword,               # Elf32_Xword, Elf64_Xword, ...
      :sxword,              # Elf32_Sxword, Elf64_Sxword, ...
      :ver_def,             # Elf32_Verdef, Elf64_Verdef, ...
      :ver_def_aux,         # Elf32_Verdaux, Elf64_Verdaux, ...
      :ver_need,            # Elf32_Verneed, Elf64_Verneed, ...
      :ver_need_aux,        # Elf32_Vernaux, Elf64_Vernaux, ...
      :note_header,         # Elf32_Nhdr, Elf64_Nhdr, ...
      :sym_info, 		        # Elf32_Syminfo, Elf64_Syminfo, ...
      :move,                # Elf32_Move, Elf64_Move, ...
      :lib,                 # Elf32_Lib, Elf64_Lib, ...
      :gnu_hash,            # GNU-style hash section.
      :aux_vec,             # Elf32_auxv_t, Elf64_auxv_t, ...
      :num
    ]

    DIRTY      = 0x1
    LAYOUT     = 0x4
    PERMISSIVE = 0x8

    # Commands.
    COMMAND = enum :elf_cmd, [
      :null,			# Nothing, terminate, or compute only.
      :read,			# Read ..
      :readwrite, # Read and write ..
      :write,     # Write ..
      :clr,			  # Clear flag.
      :set,			  # Set flag.
      :fd_done,	  # Signal that file descriptor will not be used anymore.
      :fd_read,   # Read rest of data so that file descriptor is not used
                  # anymore.
      #
      # The following are extensions.
      #
      :read_mmap,         # Read, but mmap the file if possible.
      :rdwr_mmap,         # Read and write, with mmap.
      :write_mmap,        # Write, with mmap.
      :read_mmap_private, # Read, but memory is writable, results are
                          # not written to the file.
      :empty,             # Copy basic file data but not the content.
      :num
    ]

    case FFI::Platform::ADDRESS_SIZE
    when 64
      require 'ffi/elf64/types'

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
      require 'ffi/elf32/types'

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
