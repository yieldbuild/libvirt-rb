module FFI
  module Libvirt
    # virDomainDiskError structure.
    #
    # struct _virDomainDiskError {
    #   char *disk; /* disk target */
    #   int error;  /* virDomainDiskErrorCode */
    # };
    class DomainDiskError < ::FFI::Struct
      layout :disk, :pointer,
             :error, :virDomainDiskErrorCode
    end
  end
end
