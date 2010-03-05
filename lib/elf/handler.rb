require 'elf/types'
require 'elf/ffi'
require 'elf/section'

module FFI
  module Elf
    class Handler

      #
      # Creates a new Elf handler wrapped around the given pointer.
      #
      # @param [FFI::Pointer] ptr
      #   The pointer to wrap around.
      #
      def initialize(ptr)
        @ptr = ptr

        @current_section = nil
      end

      #
      # Creates a new Elf handler using a given file.
      #
      # @param [File] file
      #   The ELF file to parse.
      #
      # @return [Handler]
      #   The new Elf handler.
      #
      def self.open(file)
        self.new(Elf.elf_begin(file.to_i,COMMANDS[:read],nil))
      end

      #
      # Gets the next section descriptor.
      #
      # @return [Elf::Section, nil]
      #   The next section descriptor, or `nil` if there are no more.
      #
      def next_section
        @current_section = Elf.elf_nextscn(self,@current_section)

        if @current_section.null?
          @current_section = nil
          return nil
        else
          return Section.new(@current_section)
        end
      end

      #
      # Iterates over the sections in the Elf file.
      #
      # @yield [section]
      #   The given block will be passed the pointers to each section header.
      #
      # @yieldparam [Elf::Section] section
      #   The section pointer.
      #
      # @return [Handler]
      #   The elf handler.
      #
      def each_section(&block)
        while (section = next_section)
          block.call(section) if block
        end

        return self
      end

      #
      # Converts the Elf handler to a pointer.
      #
      # @return [FFI::Pointer]
      #   A FFI pointer.
      #
      def to_ptr
        @ptr
      end

    end
  end
end
