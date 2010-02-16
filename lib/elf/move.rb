require 'ffi'

module FFI
  module Elf
    class Move < FFI::Struct
      def sym(info)
        info.to_i >> 8
      end

      def size(info)
        info.to_i & 0xff
      end

      def info(sym,size)
        (sym.to_i << 8) + (size.to_i & 0xff)
      end
    end
  end
end
