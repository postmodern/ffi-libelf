require 'ffi'

module FFI
  module Elf
    extend FFI::Library

    #
    # Identification values for recognized object files.
    #
    ELF_K_NONE = 0			# Unknown.
    ELF_K_AR = 1			  # Archive.
    ELF_K_COFF = 2			# Stupid old COFF.
    ELF_K_ELF = 3			  # ELF file.
    ELF_K_NUM = 4

    #
    # Known translation types.
    #
    ELF_T_BYTE = 0                # unsigned char
    ELF_T_ADDR = 1                # Elf32_Addr, Elf64_Addr, ...
    ELF_T_DYN = 2                 # Dynamic section record.
    ELF_T_EHDR = 3                # ELF header.
    ELF_T_HALF = 4                # Elf32_Half, Elf64_Half, ...
    ELF_T_OFF = 5                 # Elf32_Off, Elf64_Off, ...
    ELF_T_PHDR = 6                # Program header.
    ELF_T_RELA = 7                # Relocation entry with addend.
    ELF_T_REL = 8                 # Relocation entry.
    ELF_T_SHDR = 9                # Section header.
    ELF_T_SWORD = 10              # Elf32_Sword, Elf64_Sword, ...
    ELF_T_SYM = 11                # Symbol record.
    ELF_T_WORD = 12               # Elf32_Word, Elf64_Word, ...
    ELF_T_XWORD = 13              # Elf32_Xword, Elf64_Xword, ...
    ELF_T_SXWORD = 14             # Elf32_Sxword, Elf64_Sxword, ...
    ELF_T_VDEF = 15               # Elf32_Verdef, Elf64_Verdef, ...
    ELF_T_VDAUX = 16              # Elf32_Verdaux, Elf64_Verdaux, ...
    ELF_T_VNEED = 17              # Elf32_Verneed, Elf64_Verneed, ...
    ELF_T_VNAUX = 18              # Elf32_Vernaux, Elf64_Vernaux, ...
    ELF_T_NHDR = 19               # Elf32_Nhdr, Elf64_Nhdr, ...
    ELF_T_SYMINFO = 20 		        # Elf32_Syminfo, Elf64_Syminfo, ...
    ELF_T_MOVE = 21               # Elf32_Move, Elf64_Move, ...
    ELF_T_LIB = 22                # Elf32_Lib, Elf64_Lib, ...
    ELF_T_GNUHASH = 23            # GNU-style hash section.
    ELF_T_AUXV = 24               # Elf32_auxv_t, Elf64_auxv_t, ...
    ELF_T_NUM = 25

    #
    # Flags for the ELF structures.
    #
    ELF_F_DIRTY = 0x1
    ELF_F_LAYOUT = 0x4
    ELF_F_PERMISSIVE = 0x8

    #
    # Commands for `...'.
    #
    ELF_C_NULL = 0			# Nothing, terminate, or compute only.
    ELF_C_READ = 1			# Read ..
    ELF_C_RDWR = 2			# Read and write ..
    ELF_C_WRITE = 3			# Write ..
    ELF_C_CLR = 4			  # Clear flag.
    ELF_C_SET = 5			  # Set flag.
    ELF_C_FDDONE = 6	  # Signal that file descriptor will not be
                        # used anymore.
    ELF_C_FDREAD = 7		# Read rest of data so that file descriptor
                        # is not used anymore.

    #
    # The following are extensions.
    #
    ELF_C_READ_MMAP = 8	         # Read, but mmap the file if possible.
    ELF_C_RDWR_MMAP = 9	         # Read and write, with mmap.
    ELF_C_WRITE_MMAP = 10        # Write, with mmap.
    ELF_C_READ_MMAP_PRIVATE = 11 # Read, but memory is writable, results are
                                 # not written to the file.
    ELF_C_EMPTY = 12			       # Copy basic file data but not the content.
    ELF_C_NUM = 13

    typedef :ulong, :time_t
    typedef :uint, :size_t
    typedef :int64, :loff_t
    typedef :uint, :uid_t
    typedef :uint, :gid_t
    typedef :uint, :mode_t
  end
end
