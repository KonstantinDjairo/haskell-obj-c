{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDeviceControllerStartupParams@.
module ObjC.Matter.MTRDeviceControllerStartupParams
  ( MTRDeviceControllerStartupParams
  , IsMTRDeviceControllerStartupParams(..)
  , init_
  , initWithSigningKeypair_fabricId_ipk
  , initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipk
  , nocSigner
  , fabricId
  , ipk
  , vendorId
  , setVendorId
  , nodeId
  , setNodeId
  , rootCertificate
  , setRootCertificate
  , intermediateCertificate
  , setIntermediateCertificate
  , operationalCertificate
  , operationalKeypair
  , setOperationalKeypair
  , fabricIdSelector
  , initSelector
  , initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipkSelector
  , initWithSigningKeypair_fabricId_ipkSelector
  , intermediateCertificateSelector
  , ipkSelector
  , nocSignerSelector
  , nodeIdSelector
  , operationalCertificateSelector
  , operationalKeypairSelector
  , rootCertificateSelector
  , setIntermediateCertificateSelector
  , setNodeIdSelector
  , setOperationalKeypairSelector
  , setRootCertificateSelector
  , setVendorIdSelector
  , vendorIdSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id MTRDeviceControllerStartupParams)
init_ mtrDeviceControllerStartupParams =
  sendOwnedMessage mtrDeviceControllerStartupParams initSelector

-- | Prepare to initialize a controller given a keypair to use for signing operational certificates.
--
-- fabricId must be set to a valid (i.e. nonzero) value.
--
-- ipk must be 16 bytes in length
--
-- ObjC selector: @- initWithSigningKeypair:fabricId:ipk:@
initWithSigningKeypair_fabricId_ipk :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSData ipk) => mtrDeviceControllerStartupParams -> RawId -> CULong -> ipk -> IO (Id MTRDeviceControllerStartupParams)
initWithSigningKeypair_fabricId_ipk mtrDeviceControllerStartupParams nocSigner fabricId ipk =
  sendOwnedMessage mtrDeviceControllerStartupParams initWithSigningKeypair_fabricId_ipkSelector nocSigner fabricId (toNSData ipk)

-- | Prepare to initialize a controller with a complete operational certificate chain.  This initialization method should be used when none of the certificate-signing private keys are available locally.
--
-- The fabric id and node if to use will be derived from the provided operationalCertificate.
--
-- intermediateCertificate may be nil if operationalCertificate is signed by rootCertificate.
--
-- ipk must be 16 bytes in length.
--
-- ObjC selector: @- initWithOperationalKeypair:operationalCertificate:intermediateCertificate:rootCertificate:ipk:@
initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipk :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSData operationalCertificate, IsNSData intermediateCertificate, IsNSData rootCertificate, IsNSData ipk) => mtrDeviceControllerStartupParams -> RawId -> operationalCertificate -> intermediateCertificate -> rootCertificate -> ipk -> IO (Id MTRDeviceControllerStartupParams)
initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipk mtrDeviceControllerStartupParams operationalKeypair operationalCertificate intermediateCertificate rootCertificate ipk =
  sendOwnedMessage mtrDeviceControllerStartupParams initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipkSelector operationalKeypair (toNSData operationalCertificate) (toNSData intermediateCertificate) (toNSData rootCertificate) (toNSData ipk)

-- | Keypair used to sign operational certificates.  This is the root CA keypair if not using an intermediate CA, the intermediate CA's keypair otherwise.
--
-- Allowed to be nil if this controller will not be issuing operational certificates.  In that case, the MTRDeviceControllerStartupParams object must be initialized using initWithOperationalKeypair (to provide the operational credentials for the controller itself).
--
-- ObjC selector: @- nocSigner@
nocSigner :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO RawId
nocSigner mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams nocSignerSelector

-- | Fabric id for the controller.  Must be set to a nonzero value.  This is scoped by the root public key, which is determined as follows:
--
-- * If a root certificate is provided, it is the public key of the root   certificate.
--
-- * If a root certificate is not provided, the root public key is the public   key of the nocSigner keypair, since in this case we are not using an   intermediate certificate.
--
-- ObjC selector: @- fabricId@
fabricId :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO CULong
fabricId mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams fabricIdSelector

-- | IPK to use for the controller's fabric.  Allowed to change from the last time a controller was started on this fabric if a new IPK has been distributed to all the devices the controller wants to interact with.
--
-- ObjC selector: @- ipk@
ipk :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSData)
ipk mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams ipkSelector

-- | Vendor ID (allocated by the Connectivity Standards Alliance) for this controller.
--
-- If not nil, must not be the "standard" vendor id (0).
--
-- When creating a new fabric:
--
-- * Must not be nil.
--
-- When using an existing fabric:
--
-- * Will override existing value if not nil. Otherwise existing value will be   used.
--
-- ObjC selector: @- vendorId@
vendorId :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSNumber)
vendorId mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams vendorIdSelector

-- | Vendor ID (allocated by the Connectivity Standards Alliance) for this controller.
--
-- If not nil, must not be the "standard" vendor id (0).
--
-- When creating a new fabric:
--
-- * Must not be nil.
--
-- When using an existing fabric:
--
-- * Will override existing value if not nil. Otherwise existing value will be   used.
--
-- ObjC selector: @- setVendorId:@
setVendorId :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSNumber value) => mtrDeviceControllerStartupParams -> value -> IO ()
setVendorId mtrDeviceControllerStartupParams value =
  sendMessage mtrDeviceControllerStartupParams setVendorIdSelector (toNSNumber value)

-- | Node id for this controller.
--
-- If operationalCertificate is not nil, must be nil.  The provided operational certificate will be used as-is.
--
-- If not nil, must be a valid Matter operational node id.
--
-- If operationalCertificate is nil, nodeId and operationalKeypair are used to determine an operational certificate, as follows:
--
-- * When creating a new fabric:
--
-- ** nodeId is allowed to be nil to indicate that a random node id should be    generated.
--
-- * When using an existing fabric:
--
-- ** nodeId is allowed to be nil to indicate that the existing operational node    id should be used.  The existing operational keys will also be used,    unless operationalKeypair is provided.
--
-- ** If nodeId is not nil, a new operational certificate will be generated for    the provided node id (even if that matches the existing node id), using    either the operationalKeypair if that is provided or a new randomly    generated operational key.
--
-- ObjC selector: @- nodeId@
nodeId :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSNumber)
nodeId mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams nodeIdSelector

-- | Node id for this controller.
--
-- If operationalCertificate is not nil, must be nil.  The provided operational certificate will be used as-is.
--
-- If not nil, must be a valid Matter operational node id.
--
-- If operationalCertificate is nil, nodeId and operationalKeypair are used to determine an operational certificate, as follows:
--
-- * When creating a new fabric:
--
-- ** nodeId is allowed to be nil to indicate that a random node id should be    generated.
--
-- * When using an existing fabric:
--
-- ** nodeId is allowed to be nil to indicate that the existing operational node    id should be used.  The existing operational keys will also be used,    unless operationalKeypair is provided.
--
-- ** If nodeId is not nil, a new operational certificate will be generated for    the provided node id (even if that matches the existing node id), using    either the operationalKeypair if that is provided or a new randomly    generated operational key.
--
-- ObjC selector: @- setNodeId:@
setNodeId :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSNumber value) => mtrDeviceControllerStartupParams -> value -> IO ()
setNodeId mtrDeviceControllerStartupParams value =
  sendMessage mtrDeviceControllerStartupParams setNodeIdSelector (toNSNumber value)

-- | Root certificate, in X.509 DER form, to use.
--
-- Must not be nil if an intermediate CA is being used, to allow determination of the root public key.
--
-- If not nil, and if an intermediate CA is not being used, the public key of this certificate must match the public key of nocSigner, if nocSigner is not nil.
--
-- When creating a new fabric:
--
-- * May be nil if nocSigner is not nil and an intermediate CA is not being   used.  In that case the nocSigner keypair, which is the keypair for the   root certificate, will be used to generate and sign a root certificate,   with a random issuer id.  In this case, the fabricId will be included in   the root certificate's subject DN.
--
-- When using an existing fabric:
--
-- * May be nil if nocSigner is not nil and an intermediate CA is not being   used.  In that case, the existing root certificate for the fabric will be   used.
--
-- * If not nil must satisfy the following properties:
--
-- 1) The public key must match the public key of the existing root      certificate.   2) The subject DN must match the subject DN of the existing root      certificate.
--
-- ObjC selector: @- rootCertificate@
rootCertificate :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSData)
rootCertificate mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams rootCertificateSelector

-- | Root certificate, in X.509 DER form, to use.
--
-- Must not be nil if an intermediate CA is being used, to allow determination of the root public key.
--
-- If not nil, and if an intermediate CA is not being used, the public key of this certificate must match the public key of nocSigner, if nocSigner is not nil.
--
-- When creating a new fabric:
--
-- * May be nil if nocSigner is not nil and an intermediate CA is not being   used.  In that case the nocSigner keypair, which is the keypair for the   root certificate, will be used to generate and sign a root certificate,   with a random issuer id.  In this case, the fabricId will be included in   the root certificate's subject DN.
--
-- When using an existing fabric:
--
-- * May be nil if nocSigner is not nil and an intermediate CA is not being   used.  In that case, the existing root certificate for the fabric will be   used.
--
-- * If not nil must satisfy the following properties:
--
-- 1) The public key must match the public key of the existing root      certificate.   2) The subject DN must match the subject DN of the existing root      certificate.
--
-- ObjC selector: @- setRootCertificate:@
setRootCertificate :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSData value) => mtrDeviceControllerStartupParams -> value -> IO ()
setRootCertificate mtrDeviceControllerStartupParams value =
  sendMessage mtrDeviceControllerStartupParams setRootCertificateSelector (toNSData value)

-- | Intermediate certificate, in X.509 DER form, to use.
--
-- If not nil, rootCertificate must not be nil, and the intermediate certificate must be signed by rootCertificate.
--
-- If not nil, and nocSigner is not nil, the public key of this certificate must match the public key of nocSigner.
--
-- When creating a new fabric:
--
-- * Must not be nil if an intermediate CA is being used.
--
-- * Must be nil if an intermediate CA is not being used.
--
-- When using an existing fabric:
--
-- * If not nil, will be used as the intermediate certificate for issuing   operational certificates.
--
-- * If nil:
--
-- * If nocSigner is not nil, there is an existing intermediate certificate,     and it matches the nocSigner public key, the existing intermediate     certificate will be used.
--
-- * Otherwise the fabric will not use an intermediate certificate.  This     allows switching from using an intermediate CA to not using one.
--
-- ObjC selector: @- intermediateCertificate@
intermediateCertificate :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSData)
intermediateCertificate mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams intermediateCertificateSelector

-- | Intermediate certificate, in X.509 DER form, to use.
--
-- If not nil, rootCertificate must not be nil, and the intermediate certificate must be signed by rootCertificate.
--
-- If not nil, and nocSigner is not nil, the public key of this certificate must match the public key of nocSigner.
--
-- When creating a new fabric:
--
-- * Must not be nil if an intermediate CA is being used.
--
-- * Must be nil if an intermediate CA is not being used.
--
-- When using an existing fabric:
--
-- * If not nil, will be used as the intermediate certificate for issuing   operational certificates.
--
-- * If nil:
--
-- * If nocSigner is not nil, there is an existing intermediate certificate,     and it matches the nocSigner public key, the existing intermediate     certificate will be used.
--
-- * Otherwise the fabric will not use an intermediate certificate.  This     allows switching from using an intermediate CA to not using one.
--
-- ObjC selector: @- setIntermediateCertificate:@
setIntermediateCertificate :: (IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams, IsNSData value) => mtrDeviceControllerStartupParams -> value -> IO ()
setIntermediateCertificate mtrDeviceControllerStartupParams value =
  sendMessage mtrDeviceControllerStartupParams setIntermediateCertificateSelector (toNSData value)

-- | Operational certificate, in X.509 DER form, to use.
--
-- If not nil, will be used as the operational certificate.  In this case operationalKeypair must not be nil.
--
-- If nil, an operational certificate will be determined as described in the documentation for nodeId.
--
-- ObjC selector: @- operationalCertificate@
operationalCertificate :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO (Id NSData)
operationalCertificate mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams operationalCertificateSelector

-- | Operational keypair to use.  If operationalCertificate is not nil, the public key must match operationalCertificate.
--
-- If not nil, and if operationalCertificate is nil, a new operational certificate will be generated for the given operationalKeypair.  The node id will for that certificated will be determined as described in the documentation for nodeId.
--
-- ObjC selector: @- operationalKeypair@
operationalKeypair :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> IO RawId
operationalKeypair mtrDeviceControllerStartupParams =
  sendMessage mtrDeviceControllerStartupParams operationalKeypairSelector

-- | Operational keypair to use.  If operationalCertificate is not nil, the public key must match operationalCertificate.
--
-- If not nil, and if operationalCertificate is nil, a new operational certificate will be generated for the given operationalKeypair.  The node id will for that certificated will be determined as described in the documentation for nodeId.
--
-- ObjC selector: @- setOperationalKeypair:@
setOperationalKeypair :: IsMTRDeviceControllerStartupParams mtrDeviceControllerStartupParams => mtrDeviceControllerStartupParams -> RawId -> IO ()
setOperationalKeypair mtrDeviceControllerStartupParams value =
  sendMessage mtrDeviceControllerStartupParams setOperationalKeypairSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDeviceControllerStartupParams)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithSigningKeypair:fabricId:ipk:@
initWithSigningKeypair_fabricId_ipkSelector :: Selector '[RawId, CULong, Id NSData] (Id MTRDeviceControllerStartupParams)
initWithSigningKeypair_fabricId_ipkSelector = mkSelector "initWithSigningKeypair:fabricId:ipk:"

-- | @Selector@ for @initWithOperationalKeypair:operationalCertificate:intermediateCertificate:rootCertificate:ipk:@
initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipkSelector :: Selector '[RawId, Id NSData, Id NSData, Id NSData, Id NSData] (Id MTRDeviceControllerStartupParams)
initWithOperationalKeypair_operationalCertificate_intermediateCertificate_rootCertificate_ipkSelector = mkSelector "initWithOperationalKeypair:operationalCertificate:intermediateCertificate:rootCertificate:ipk:"

-- | @Selector@ for @nocSigner@
nocSignerSelector :: Selector '[] RawId
nocSignerSelector = mkSelector "nocSigner"

-- | @Selector@ for @fabricId@
fabricIdSelector :: Selector '[] CULong
fabricIdSelector = mkSelector "fabricId"

-- | @Selector@ for @ipk@
ipkSelector :: Selector '[] (Id NSData)
ipkSelector = mkSelector "ipk"

-- | @Selector@ for @vendorId@
vendorIdSelector :: Selector '[] (Id NSNumber)
vendorIdSelector = mkSelector "vendorId"

-- | @Selector@ for @setVendorId:@
setVendorIdSelector :: Selector '[Id NSNumber] ()
setVendorIdSelector = mkSelector "setVendorId:"

-- | @Selector@ for @nodeId@
nodeIdSelector :: Selector '[] (Id NSNumber)
nodeIdSelector = mkSelector "nodeId"

-- | @Selector@ for @setNodeId:@
setNodeIdSelector :: Selector '[Id NSNumber] ()
setNodeIdSelector = mkSelector "setNodeId:"

-- | @Selector@ for @rootCertificate@
rootCertificateSelector :: Selector '[] (Id NSData)
rootCertificateSelector = mkSelector "rootCertificate"

-- | @Selector@ for @setRootCertificate:@
setRootCertificateSelector :: Selector '[Id NSData] ()
setRootCertificateSelector = mkSelector "setRootCertificate:"

-- | @Selector@ for @intermediateCertificate@
intermediateCertificateSelector :: Selector '[] (Id NSData)
intermediateCertificateSelector = mkSelector "intermediateCertificate"

-- | @Selector@ for @setIntermediateCertificate:@
setIntermediateCertificateSelector :: Selector '[Id NSData] ()
setIntermediateCertificateSelector = mkSelector "setIntermediateCertificate:"

-- | @Selector@ for @operationalCertificate@
operationalCertificateSelector :: Selector '[] (Id NSData)
operationalCertificateSelector = mkSelector "operationalCertificate"

-- | @Selector@ for @operationalKeypair@
operationalKeypairSelector :: Selector '[] RawId
operationalKeypairSelector = mkSelector "operationalKeypair"

-- | @Selector@ for @setOperationalKeypair:@
setOperationalKeypairSelector :: Selector '[RawId] ()
setOperationalKeypairSelector = mkSelector "setOperationalKeypair:"

