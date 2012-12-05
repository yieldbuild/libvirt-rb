module FFI
  module Libvirt
    # virDomainBlockStats structure.
    #
    # struct _virDomainBlockStats {
    #   long long rd_req; /* number of read requests */
    #   long long rd_bytes; /* number of read bytes */
    #   long long wr_req; /* number of write requests */
    #   long long wr_bytes; /* number of written bytes */
    #   long long errs;   /* In Xen this returns the mysterious 'oo_req'. */
    # };
    class DomainBlockStats < ::FFI::Struct
      layout :rd_req, :long_long,
             :rd_bytes, :long_long,
             :wr_req, :long_long,
             :wr_bytes, :long_long,
             :errs, :long_long
    end
  end
end
