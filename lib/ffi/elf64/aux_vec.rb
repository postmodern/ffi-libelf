require 'ffi/elf64/types'
require 'ffi/elf/aux_vec'

module FFI
  module Elf64
    class AuxVec < Elf::AuxVec

      layout :a_type, :uint64,
             :a_un, :uint64

    end
  end
end
