module FFI
  module Libvirt
    # virConnectAuth structure.
    #
    # struct _virConnectAuth {
    #   int *credtype; /* List of supported virConnectCredentialType values */
    #   unsigned int ncredtype;
    #   virConnectAuthCallbackPtr cb; /* Callback used to collect credentials */
    #   void *cbdata;
    # };
    class ConnectAuth < ::FFI::Struct
      layout :credtype, :virConnectCredentialType,
             :ncredtype, :uint,
             :cb, :virConnectAuthCallbackPtr,
             :cbdata, :pointer
    end
  end
end
