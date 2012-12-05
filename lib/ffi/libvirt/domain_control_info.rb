module FFI
  module Libvirt
    # virDomainBlockStats structure.
    #
    # struct _virDomainControlInfo {
    #   unsigned int state;     /* control state, one of virDomainControlState */
    #   unsigned int details;   /* state details, currently 0 */
    #   unsigned long long stateTime; /* for how long (in msec) control interface
    #                                  has been in current state (except for OK
    #                                  and ERROR states) */
    # };
    class DomainControlInfo < ::FFI::Struct
      layout :state, :virDomainControlState,
             :details, :uint,
             :stateTime, :ulong_long
    end
  end
end
