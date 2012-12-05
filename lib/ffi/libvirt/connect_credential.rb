module FFI
  module Libvirt
    # virConnectCredential structure.
    #
    # struct _virConnectCredential {
    #   int type; /* One of virConnectCredentialType constants */
    #   const char *prompt; /* Prompt to show to user */
    #   const char *challenge; /* Additional challenge to show */
    #   const char *defresult; /* Optional default result */
    #   char *result; /* Result to be filled with user response (or defresult) */
    #   unsigned int resultlen; /* Length of the result */
    # };
    class ConnectCredential < ::FFI::Struct
      layout :type, :virConnectCredentialType,
             :prompt, :string,
             :challenge, :string,
             :defresult, :string,
             :result, :pointer,
             :resultlen, :uint
    end
  end
end
