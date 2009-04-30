require 'elf/typedefs'

module FFI
  module Elf
    #
    # Archive symbol table entry.
    #
    class ArchiveSymbol < FFI::Struct
      layout :as_name, :string,
        :as_off, :size_t,
        :as_hash, :ulong

      alias :as_name, :name
      alias :as_off, :offset
      alias :as_hash, :hash
    end
  end
end
