require 'elf/typedefs'

module FFI
  module Elf
    #
    # Descriptor for data to be converted to or from memory format.
    #
    class Data < FFI::Struct
      layout :d_buf, :pointer,
        :d_type, :int,
        :d_version, :uint,
        :d_size, :int,
        :d_off, :long,
        :d_align, :int

      alias :d_buf, :buffer
      alias :d_version, :version
      alias :d_size, :size
      alias :d_off, :offset
      alias :d_align, :align
    end
  end
end
