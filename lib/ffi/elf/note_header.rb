require 'ffi'

module FFI
  module Elf
    class NoteHeader < FFI::Struct

      # Known names of notes
      NOTES = {
        :solaris => "SUNW Solaris",
        :gnu     => "GNU"
      }

      # Value of descriptor (one word) is desired pagesize for the binary.
      PAGESIZE_HINT = 1

      GNU_ABI_TAG = 1
      
      # Known OSes.  These values can appear in word 0 of an
      # NT_GNU_ABI_TAG note section entry.
      OSES = [
        OS_LINUX = 0,
        OS_GNU = 1,
        OS_SOLARIS2 = 2,
        OS_FREEBSD = 3
      ]

      GNU_HWCAP = 2

      GNU_BUILD_ID = 3

    end
  end
end
