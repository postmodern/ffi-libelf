require 'elf/types'

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

      def buffer
        self[:d_buf].get_bytes(0,self[:d_size])
      end

      def type
        self[:d_type]
      end

      def version
        self[:d_version]
      end

      def data_size
        self[:d_size]
      end

      def data_offset
        self[:d_off]
      end

      def data_align
        self[:d_align]
      end

    end
  end
end
