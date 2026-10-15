{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEVPNIKEv2SecurityAssociationParameters
--
-- The NEVPNIKEv2SecurityAssociationParameters class declares the programmatic interface of an object that manages parameters for an IPSec Security Association
--
-- Instances of this class are thread safe.
--
-- Generated bindings for @NEVPNIKEv2SecurityAssociationParameters@.
module ObjC.NetworkExtension.NEVPNIKEv2SecurityAssociationParameters
  ( NEVPNIKEv2SecurityAssociationParameters
  , IsNEVPNIKEv2SecurityAssociationParameters(..)
  , encryptionAlgorithm
  , setEncryptionAlgorithm
  , integrityAlgorithm
  , setIntegrityAlgorithm
  , diffieHellmanGroup
  , setDiffieHellmanGroup
  , lifetimeMinutes
  , setLifetimeMinutes
  , diffieHellmanGroupSelector
  , encryptionAlgorithmSelector
  , integrityAlgorithmSelector
  , lifetimeMinutesSelector
  , setDiffieHellmanGroupSelector
  , setEncryptionAlgorithmSelector
  , setIntegrityAlgorithmSelector
  , setLifetimeMinutesSelector

  -- * Enum types
  , NEVPNIKEv2DiffieHellmanGroup(NEVPNIKEv2DiffieHellmanGroup)
  , pattern NEVPNIKEv2DiffieHellmanGroupInvalid
  , pattern NEVPNIKEv2DiffieHellmanGroup1
  , pattern NEVPNIKEv2DiffieHellmanGroup2
  , pattern NEVPNIKEv2DiffieHellmanGroup5
  , pattern NEVPNIKEv2DiffieHellmanGroup14
  , pattern NEVPNIKEv2DiffieHellmanGroup15
  , pattern NEVPNIKEv2DiffieHellmanGroup16
  , pattern NEVPNIKEv2DiffieHellmanGroup17
  , pattern NEVPNIKEv2DiffieHellmanGroup18
  , pattern NEVPNIKEv2DiffieHellmanGroup19
  , pattern NEVPNIKEv2DiffieHellmanGroup20
  , pattern NEVPNIKEv2DiffieHellmanGroup21
  , pattern NEVPNIKEv2DiffieHellmanGroup31
  , NEVPNIKEv2EncryptionAlgorithm(NEVPNIKEv2EncryptionAlgorithm)
  , pattern NEVPNIKEv2EncryptionAlgorithmDES
  , pattern NEVPNIKEv2EncryptionAlgorithm3DES
  , pattern NEVPNIKEv2EncryptionAlgorithmAES128
  , pattern NEVPNIKEv2EncryptionAlgorithmAES256
  , pattern NEVPNIKEv2EncryptionAlgorithmAES128GCM
  , pattern NEVPNIKEv2EncryptionAlgorithmAES256GCM
  , pattern NEVPNIKEv2EncryptionAlgorithmChaCha20Poly1305
  , NEVPNIKEv2IntegrityAlgorithm(NEVPNIKEv2IntegrityAlgorithm)
  , pattern NEVPNIKEv2IntegrityAlgorithmSHA96
  , pattern NEVPNIKEv2IntegrityAlgorithmSHA160
  , pattern NEVPNIKEv2IntegrityAlgorithmSHA256
  , pattern NEVPNIKEv2IntegrityAlgorithmSHA384
  , pattern NEVPNIKEv2IntegrityAlgorithmSHA512

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.NetworkExtension.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | encryptionAlgorithm
--
-- The algorithm used by the Security Association to encrypt and decrypt data. Default is NEVPNIKEv2EncryptionAlgorithm3DES.
--
-- ObjC selector: @- encryptionAlgorithm@
encryptionAlgorithm :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> IO NEVPNIKEv2EncryptionAlgorithm
encryptionAlgorithm nevpnikEv2SecurityAssociationParameters =
  sendMessage nevpnikEv2SecurityAssociationParameters encryptionAlgorithmSelector

-- | encryptionAlgorithm
--
-- The algorithm used by the Security Association to encrypt and decrypt data. Default is NEVPNIKEv2EncryptionAlgorithm3DES.
--
-- ObjC selector: @- setEncryptionAlgorithm:@
setEncryptionAlgorithm :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> NEVPNIKEv2EncryptionAlgorithm -> IO ()
setEncryptionAlgorithm nevpnikEv2SecurityAssociationParameters value =
  sendMessage nevpnikEv2SecurityAssociationParameters setEncryptionAlgorithmSelector value

-- | integrityAlgorithm
--
-- The algorithm used by the Security Association to verify the integrity of data. Default is NEVPNIKEv2IntegrityAlgorithmSHA96. The IKE psedo-random function algorithm will be inferred based on the integrity algorithm.
--
-- ObjC selector: @- integrityAlgorithm@
integrityAlgorithm :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> IO NEVPNIKEv2IntegrityAlgorithm
integrityAlgorithm nevpnikEv2SecurityAssociationParameters =
  sendMessage nevpnikEv2SecurityAssociationParameters integrityAlgorithmSelector

-- | integrityAlgorithm
--
-- The algorithm used by the Security Association to verify the integrity of data. Default is NEVPNIKEv2IntegrityAlgorithmSHA96. The IKE psedo-random function algorithm will be inferred based on the integrity algorithm.
--
-- ObjC selector: @- setIntegrityAlgorithm:@
setIntegrityAlgorithm :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> NEVPNIKEv2IntegrityAlgorithm -> IO ()
setIntegrityAlgorithm nevpnikEv2SecurityAssociationParameters value =
  sendMessage nevpnikEv2SecurityAssociationParameters setIntegrityAlgorithmSelector value

-- | diffieHellmanGroup
--
-- The Diffie Hellman group used by the Security Association. Default is NEVPNIKEv2DiffieHellmanGroup2.
--
-- ObjC selector: @- diffieHellmanGroup@
diffieHellmanGroup :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> IO NEVPNIKEv2DiffieHellmanGroup
diffieHellmanGroup nevpnikEv2SecurityAssociationParameters =
  sendMessage nevpnikEv2SecurityAssociationParameters diffieHellmanGroupSelector

-- | diffieHellmanGroup
--
-- The Diffie Hellman group used by the Security Association. Default is NEVPNIKEv2DiffieHellmanGroup2.
--
-- ObjC selector: @- setDiffieHellmanGroup:@
setDiffieHellmanGroup :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> NEVPNIKEv2DiffieHellmanGroup -> IO ()
setDiffieHellmanGroup nevpnikEv2SecurityAssociationParameters value =
  sendMessage nevpnikEv2SecurityAssociationParameters setDiffieHellmanGroupSelector value

-- | lifetimeMinutes
--
-- The life time of the Security Association, in minutes. Default is 60 for IKE Security Associations, and 30 for Child Security Associations. Before the lifetime is reached, IKEv2 will attempt to rekey the Security Association to maintain the connection.
--
-- ObjC selector: @- lifetimeMinutes@
lifetimeMinutes :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> IO CInt
lifetimeMinutes nevpnikEv2SecurityAssociationParameters =
  sendMessage nevpnikEv2SecurityAssociationParameters lifetimeMinutesSelector

-- | lifetimeMinutes
--
-- The life time of the Security Association, in minutes. Default is 60 for IKE Security Associations, and 30 for Child Security Associations. Before the lifetime is reached, IKEv2 will attempt to rekey the Security Association to maintain the connection.
--
-- ObjC selector: @- setLifetimeMinutes:@
setLifetimeMinutes :: IsNEVPNIKEv2SecurityAssociationParameters nevpnikEv2SecurityAssociationParameters => nevpnikEv2SecurityAssociationParameters -> CInt -> IO ()
setLifetimeMinutes nevpnikEv2SecurityAssociationParameters value =
  sendMessage nevpnikEv2SecurityAssociationParameters setLifetimeMinutesSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @encryptionAlgorithm@
encryptionAlgorithmSelector :: Selector '[] NEVPNIKEv2EncryptionAlgorithm
encryptionAlgorithmSelector = mkSelector "encryptionAlgorithm"

-- | @Selector@ for @setEncryptionAlgorithm:@
setEncryptionAlgorithmSelector :: Selector '[NEVPNIKEv2EncryptionAlgorithm] ()
setEncryptionAlgorithmSelector = mkSelector "setEncryptionAlgorithm:"

-- | @Selector@ for @integrityAlgorithm@
integrityAlgorithmSelector :: Selector '[] NEVPNIKEv2IntegrityAlgorithm
integrityAlgorithmSelector = mkSelector "integrityAlgorithm"

-- | @Selector@ for @setIntegrityAlgorithm:@
setIntegrityAlgorithmSelector :: Selector '[NEVPNIKEv2IntegrityAlgorithm] ()
setIntegrityAlgorithmSelector = mkSelector "setIntegrityAlgorithm:"

-- | @Selector@ for @diffieHellmanGroup@
diffieHellmanGroupSelector :: Selector '[] NEVPNIKEv2DiffieHellmanGroup
diffieHellmanGroupSelector = mkSelector "diffieHellmanGroup"

-- | @Selector@ for @setDiffieHellmanGroup:@
setDiffieHellmanGroupSelector :: Selector '[NEVPNIKEv2DiffieHellmanGroup] ()
setDiffieHellmanGroupSelector = mkSelector "setDiffieHellmanGroup:"

-- | @Selector@ for @lifetimeMinutes@
lifetimeMinutesSelector :: Selector '[] CInt
lifetimeMinutesSelector = mkSelector "lifetimeMinutes"

-- | @Selector@ for @setLifetimeMinutes:@
setLifetimeMinutesSelector :: Selector '[CInt] ()
setLifetimeMinutesSelector = mkSelector "setLifetimeMinutes:"

