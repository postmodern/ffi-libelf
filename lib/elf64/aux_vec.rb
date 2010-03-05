require 'elf64/types'
require 'elf/aux_vec'

module FFI
  module Elf64
    class AuxVec < Elf::AuxVec

      layout :a_type, :uint64,
             :a_un, :uint64

    end
  end
end
