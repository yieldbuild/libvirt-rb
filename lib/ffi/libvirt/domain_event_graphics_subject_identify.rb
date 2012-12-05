module FFI
  module Libvirt
    # virDomainEventGraphicsSubjectIdentify structure.
    #
    # struct _virDomainEventGraphicsSubjectIdentity {
    #   const char *type;     /* Type of identity */
    #   const char *name;     /* Identity value */
    # };
    class DomainEventGraphicsSubjectIdentify < ::FFI::Struct
      layout :type, :string,
             :name, :string
    end
  end
end
