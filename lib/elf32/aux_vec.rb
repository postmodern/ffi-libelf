require 'elf/32/types'
require 'elf/aux_vec'

module FFI
  module Elf32
    class AuxVec < Elf::AuxVec

      layout :a_type, :uint32,
             :a_un, :uint32

    end
  end
end
