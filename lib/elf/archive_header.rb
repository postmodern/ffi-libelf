require 'elf/types'

module FFI
  module Elf
    #
    # Archive member header.
    #
    class ArchiveHeader < FFI::Struct

      layout :ar_name, :string,
             :ar_date, :time_t,
             :ar_uid, :uid_t,
             :ar_gid, :gid_t,
             :ar_mode, :mode_t,
             :ar_size, :loff_t,
             :ar_rawname, :string

      def date
        Time.at(self[:ar_date])
      end

      def uid
        self[:ar_uid]
      end

      def gid
        self[:ar_guid]
      end

      def mode
        self[:ar_mode]
      end

      def size
        self[:ar_size]
      end

      def raw_name
        self[:ar_rawname]
      end

    end
  end
end
