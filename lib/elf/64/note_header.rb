require 'elf/64/typedefs'
require 'elf/note_header'

module FFI
  module Elf64
    class NoteHeader < Elf::NoteHeader
      layout :n_namesz, :elf64_word,
             :n_descsz, :elf64_word,
             :n_type, :elf64_word
    end
  end
end
