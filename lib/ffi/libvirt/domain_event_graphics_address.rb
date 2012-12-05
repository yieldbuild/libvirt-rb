module FFI
  module Libvirt
    # virDomainEventGraphicsAddress structure.
    #
    # struct _virDomainEventGraphicsAddress {
    #   int family;               /* Address family, virDomainEventGraphicsAddressType */
    #   const char *node;         /* Address of node (eg IP address, or UNIX path) */
    #   const char *service;      /* Service name/number (eg TCP port, or NULL) */
    # };
    class DomainEventGraphicsAddress < ::FFI::Struct
      layout :family, :virDomainEventGraphicsAddressType,
             :node, :string,
             :service, :string
    end
  end
end
