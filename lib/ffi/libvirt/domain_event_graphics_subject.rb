module FFI
  module Libvirt
    # virDomainEventGraphicsSubject structure.
    #
    # struct _virDomainEventGraphicsSubject {
    #   int nidentity;                                /* Number of identities in array*/
    #   virDomainEventGraphicsSubjectIdentityPtr identities; /* Array of identities for subject */
    # };
    class DomainEventGraphicsSubject < ::FFI::Struct
      layout :nidentify, :int,
             :identities, :virDomainEventGraphicsSubjectIdentityPtr
    end
  end
end
