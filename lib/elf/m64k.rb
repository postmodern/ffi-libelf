module FFI
  module Elf
    module M64K
      # m68k relocs
      RELOCS = [
        R_NONE = 0,     # No reloc
        R_32 = 1,       # Direct 32 bit
        R_16 = 2,       # Direct 16 bit
        R_8 = 3,        # Direct 8 bit
        R_PC32 = 4,     # PC relative 32 bit
        R_PC16 = 5,     # PC relative 16 bit
        R_PC8 = 6,      # PC relative 8 bit
        R_GOT32 = 7,    # 32 bit PC relative GOT entry
        R_GOT16 = 8,    # 16 bit PC relative GOT entry
        R_GOT8 = 9,     # 8 bit PC relative GOT entry
        R_GOT32O = 10,  # 32 bit GOT offset
        R_GOT16O = 11,  # 16 bit GOT offset
        R_GOT8O = 12,   # 8 bit GOT offset
        R_PLT32 = 13,   # 32 bit PC relative PLT address
        R_PLT16 = 14,   # 16 bit PC relative PLT address
        R_PLT8 = 15,    # 8 bit PC relative PLT address
        R_PLT32O = 16,  # 32 bit PLT offset
        R_PLT16O = 17,  # 16 bit PLT offset
        R_PLT8O = 18,   # 8 bit PLT offset
        R_COPY = 19,    # Copy symbol at runtime
        R_GLOB_DAT = 20,# Create GOT entry
        R_JMP_SLOT = 21,# Create PLT entry
        R_RELATIVE = 22,# Adjust by program base
        R_NUM = 23
      ]

    end
  end
end
