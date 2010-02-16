require 'elf/64/types'
require 'elf/dyn'

module FFI
  module Elf64
    class Dyn < Elf::Dyn

      layout :d_tag, :elf64_sxword,
             :d_un, :elf64_xword

    end
  end
end
