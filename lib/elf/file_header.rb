require 'ffi'

module FFI
  module Elf
    class FileHeader < FFI::Struct

      def self.open(path,&block)
        File.open(path) do |file|
          header = self.new()

          bytes = file.read(self.size)
          header.to_ptr.put_bytes(0,bytes)

          block.call(header) if block
        end
      end

      #
      # Magic number and other info.
      #
      # @return [String]
      #
      def ident
        self[:e_ident].get_bytes(0,Elf::EI_NIDENT)
      end

      #
      # Object file type.
      #
      # @return [Integer]
      #
      def type
        self[:e_type]
      end

      #
      # Architecture.
      #
      # @return [Integer]
      #
      def machine
        self[:e_machine]
      end

      #
      # Object file version.
      #
      # @return [Integer]
      #
      def version
        self[:e_version]
      end

      #
      # Entry point virtual address.
      #
      # @return [Integer]
      #
      def entry
        self[:e_entry]
      end

      #
      # Program header table file offset.
      #
      # @return [Integer]
      #
      def program_headers_offset
        self[:e_phoff]
      end

      #
      # Section header table file offset.
      #
      # @return [Integer]
      #
      def section_headers_offset
        self[:e_shoff]
      end

      #
      # Processor-specific flags.
      #
      # @return [Integer]
      #
      def flags
        self[:e_flags]
      end

      #
      # ELF header size in bytes.
      #
      # @return [Integer]
      #
      def header_size
        self[:e_ehsize]
      end

      #
      # Program header table entry size.
      #
      # @return [Integer]
      #
      def program_entry_size
        self[:e_phentsize]
      end

      #
      # Program header table entry count.
      #
      # @return [Integer]
      #
      def program_entry_count
        self[:e_phnum]
      end

      #
      # Section header table entry size.
      #
      # @return [Integer]
      #
      def section_entry_size
        self[:e_shentsize]
      end

      #
      # Section header table entry count.
      #
      # @return [Integer]
      #
      def section_entry_count
        self[:e_shnum]
      end

      #
      # Section header string table index.
      #
      # @return [Integer]
      #
      def string_table_index
        self[:e_shstrndx]
      end

    end
  end
end
