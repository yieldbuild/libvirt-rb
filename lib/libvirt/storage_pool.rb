module Libvirt
  # Represents a single storage pool.
  class StoragePool
    # Initializes a new {StoragePool} object given a `virStoragePoolPtr`.
    # Do not call this directly. Instead, use the {Connection#storage_pools}
    # object to retrieve a specific {StoragePool}.
    def initialize(pointer)
      @pointer = pointer
    end

    # Returns the name of the network as a string.
    #
    # @return [String]
    def name
      FFI::Libvirt.virStoragePoolGetName(self)
    end

    # Returns the UUID of the storage pool as a string.
    #
    # @return [String]
    def uuid
      output_ptr = FFI::MemoryPointer.new(:char, 36)
      FFI::Libvirt.virStoragePoolGetUUIDString(self, output_ptr)
      output_ptr.read_string
    end

    # Returns the XML description of this storage pool.
    #
    # @return [String]
    def xml
      FFI::Libvirt.virStoragePoolGetXMLDesc(self, 0)
    end

    # Deterine if the storage pool is active or not.
    #
    # @return [Boolean]
    def active?
      FFI::Libvirt.virStoragePoolIsActive(self) == 1
    end

    # Determine if the storage pool is persistent or not.
    #
    # @return [Boolean]
    def persistent?
      FFI::Libvirt.virStoragePoolIsPersistent(self) == 1
    end

    # Starts an inactive storage pool.
    #
    # @return [Boolean]
    def create
      return true if active?
      FFI::Libvirt.virStoragePoolCreate(self, 0) == 0
    end
    alias :start :create

    # Stops an active storage pool.
    #
    # @return [Boolean]
    def destroy
      FFI::Libvirt.virStoragePoolDestroy(self) == 0
    end
    alias :stop :destroy

    # Undefines the storage pool. This requires that the storage pool be
    # inactive.
    #
    # @return [Boolean]
    def undefine
      FFI::Libvirt.virStoragePoolUndefine(self) == 0
    end

    # Provide a meaningful equality check for two storage pools by comparing
    # UUID.
    #
    # @return [Boolean]
    def ==(other)
      other.is_a?(StoragePool) && other.uuid == uuid
    end

    # Returns the actual `virStoragePoolPtr` underlying this structure.
    #
    # @return [FFI::Pointer]
    def to_ptr
      @pointer
    end
  end
end