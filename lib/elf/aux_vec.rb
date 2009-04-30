require 'ffi/struct'

module FFI
  module Elf
    class AuxVec < FFI::Struct
      TYPES = [
        TYPE_NULL = 0,           # End of vector
        TYPE_IGNORE = 1,         # Entry should be ignored
        TYPE_EXECFG = 2,         # File descriptor of program
        TYPE_PHDR = 3,           # Program headers for program
        TYPE_PHENT = 4,          # Size of program header entry
        TYPE_PHNUM = 5,          # Number of program headers
        TYPE_PAGESZ = 6,         # System page size
        TYPE_BASE = 7,           # Base address of interpreter
        TYPE_FLAGS = 8,          # Flags
        TYPE_ENTRY = 9,          # Entry point of program
        TYPE_NOTELF = 10,        # Program is not ELF
        TYPE_UID = 11,           # Real UID
        TYPE_EUID = 12,          # Effective UID
        TYPE_GID = 13,           # Real GID
        TYPE_EGID = 14,          # Effective GID
        TYPE_CLKTCK = 17,        # Frequency of times()
        TYPE_PLATFORM = 15,      # String identifying platform
        TYPE_HWCAP = 16,         # Machine dependent hints about processor capabilities
        TYPE_FPUCW = 18,         # Used FPU control word
        TYPE_DCACHEBSIZE = 19,   # Data cache block size
        TYPE_ICACHEBSIZE = 20,   # Instruction cache block size
        TYPE_UCACHEBSIZE = 21,   # Unified cache block size
        TYPE_IGNOREPPC = 22,     # Entry should be ignored.
        TYPE_SECURE = 23,        # Boolean, was exec setuid-like?
        TYPE_EXECFN = 31,        # Filename of executable
        TYPE_SYSINFO = 32,
        TYPE_SYSINFO_EHDR = 33,
        TYPE_L1I_CACHESHAPE = 34,
        TYPE_L1D_CACHESHAPE = 35,
        TYPE_L2_CACHESHAPE = 36,
        TYPE_L3_CACHESHAPE = 37
      ]
    end
  end
end
