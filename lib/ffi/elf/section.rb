require 'gelf/ffi'
require 'gelf/gelf'

module FFI
  module Elf
    class Section

      #
      # Creates a new {Section} descriptor around the given pointer.
      #
      # @param [FFI::Pointer] ptr
      #  The pointer to wrap around.
      #
      def initialize(ptr)
        @ptr = ptr
      end

      #
      # Reads in the section header.
      #
      # @return [Elf32::SectionHeader, Elf64::SectionHeader]
      #   The section header.
      #
      def header
        new_header = GElf::SectionHeader.new

        GElf.gelf_getshdr(self,new_header)
        return new_header
      end

      #
      # Converts the section descriptor to a pointer.
      #
      # @return [FFI::Pointer]
      #   The pointer to the section descriptor.
      #
      def to_ptr
        @ptr
      end

    end
  end
end
