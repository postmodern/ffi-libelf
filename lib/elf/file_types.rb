module FFI
  module Elf
    #
    # Identification values for recognized object files.
    #
    ELF_K_NONE = 0			# Unknown.
    ELF_K_AR = 1			  # Archive.
    ELF_K_COFF = 2			# Stupid old COFF.
    ELF_K_ELF = 3			  # ELF file.
    ELF_K_NUM = 4
  end
end
