module FFI
  module Libvirt
    # virTypedParameter structure.
    #
    # struct _virTypedParameter {
    # char field[VIR_TYPED_PARAM_FIELD_LENGTH];  /* parameter name */
    # int type;   /* parameter type, virTypedParameterType */
    #   union {
    #     int i;                      /* type is INT */
    #     unsigned int ui;            /* type is UINT */
    #     long long int l;            /* type is LLONG */
    #     unsigned long long int ul;  /* type is ULLONG */
    #     double d;                   /* type is DOUBLE */
    #     char b;                     /* type is BOOLEAN */
    #     char *s;                    /* type is STRING, may not be NULL */
    #   } value; /* parameter value */
    # };
    class TypedParameterValue < ::FFI::Union
      layout :i, :int,
             :ui, :uint,
             :l, :long_long,
             :ul, :ulong_long,
             :d, :double,
             :b, :char,
             :s, :string
    end
    
    class TypedParameter < ::FFI::Struct
      layout :field, [:char, 80],
             :type, :virTypedParameterType,
             :value, TypedParameterValue
    end
  end
end
