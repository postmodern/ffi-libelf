module FFI
  module GElf
    case FFI::Platform::ADDRESS_SIZE
    when 64
      require 'elf64'

      NAMESPACE = Elf64
    when 32
      require 'elf32'

      NAMESPACE = Elf32
    else
      raise(StandardError,"unsupported address-size: #{FFI::Platform::ADDRESS_SIZE}",caller)
    end

    [
      'FileHeader',
      'SectionHeader',
      'Sym',
      'SymInfo',
      'Rel',
      'RelAddend',
      'ProgramHeader',
      'Dyn',
      'VerDef',
      'VerDefAux',
      'VerNeed',
      'VerNeedAux',
      'AuxVec',
      'NoteHeader',
      'Move',
      'Lib'
    ].each { |name| const_set(name,NAMESPACE.const_get(name)) }
  end
end
