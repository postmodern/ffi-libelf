module FFI
  module Elf
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
  end
end
