require 'elf/types'

module FFI
  module Elf
    #
    # Archive symbol table entry.
    #
    class ArchiveSymbol < FFI::Struct

      layout :as_name, :string,
             :as_off, :size_t,
             :as_hash, :ulong

      def name
        self[:as_name]
      end

      def offset
        self[:as_offset]
      end

      def hash
        self[:as_hash]
      end

    end
  end
end
