require 'elf32/types'
require 'elf/note_header'

module FFI
  module Elf32
    class NoteHeader < Elf::NoteHeader

      layout :n_namesz, :elf32_word,
             :n_descsz, :elf32_word,
             :n_type, :elf32_word

    end
  end
end
