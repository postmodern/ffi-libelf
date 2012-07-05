require 'ffi/elf'

module FFI
  module GElf
    case FFI::Platform::ADDRESS_SIZE
    when 64
      require 'ffi/elf64'

      AuxVec        = Elf64::AuxVec
      Dyn           = Elf64::Dyn
      FileHeader    = Elf64::FileHeader
      Lib           = Elf64::Lib
      Move          = Elf64::Move
      NoteHeader    = Elf64::NoteHeader
      ProgramHeader = Elf64::ProgramHeader
      RelAddend     = Elf64::RelAddend
      Rel           = Elf64::Rel
      SectionHeader = Elf64::SectionHeader
      SymInfo       = Elf64::SymInfo
      Sym           = Elf64::Sym
      VerDefAux     = Elf64::VerDefAux
      VerDef        = Elf64::VerDef
      VerNeedAux    = Elf64::VerNeedAux
      VerNeed       = Elf64::VerNeed
    when 32
      require 'ffi/elf32'

      AuxVec        = Elf32::AuxVec
      Dyn           = Elf32::Dyn
      FileHeader    = Elf32::FileHeader
      Lib           = Elf32::Lib
      M68K          = Elf32::M68K
      Move          = Elf32::Move
      NoteHeader    = Elf32::NoteHeader
      ProgramHeader = Elf32::ProgramHeader
      RelAddend     = Elf32::RelAddend
      Rel           = Elf32::Rel
      SectionHeader = Elf32::SectionHeader
      SymInfo       = Elf32::SymInfo
      Sym           = Elf32::Sym
      VerDefAux     = Elf32::VerDefAux
      VerDef        = Elf32::VerDef
      VerNeedAux    = Elf32::VerNeedAux
      VerNeed       = Elf32::VerNeed
    else
      raise(StandardError,"unsupported address-size: #{FFI::Platform::ADDRESS_SIZE}",caller)
    end
  end
end
