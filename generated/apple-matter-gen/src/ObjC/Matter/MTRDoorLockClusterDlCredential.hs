{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterDlCredential@.
module ObjC.Matter.MTRDoorLockClusterDlCredential
  ( MTRDoorLockClusterDlCredential
  , IsMTRDoorLockClusterDlCredential(..)
  , init_
  , copyWithZone
  , credentialType
  , setCredentialType
  , credentialIndex
  , setCredentialIndex
  , copyWithZoneSelector
  , credentialIndexSelector
  , credentialTypeSelector
  , initSelector
  , setCredentialIndexSelector
  , setCredentialTypeSelector


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
init_ :: IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential => mtrDoorLockClusterDlCredential -> IO (Id MTRDoorLockClusterDlCredential)
init_ mtrDoorLockClusterDlCredential =
  sendOwnedMessage mtrDoorLockClusterDlCredential initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential => mtrDoorLockClusterDlCredential -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterDlCredential zone =
  sendOwnedMessage mtrDoorLockClusterDlCredential copyWithZoneSelector zone

-- | @- credentialType@
credentialType :: IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential => mtrDoorLockClusterDlCredential -> IO (Id NSNumber)
credentialType mtrDoorLockClusterDlCredential =
  sendMessage mtrDoorLockClusterDlCredential credentialTypeSelector

-- | @- setCredentialType:@
setCredentialType :: (IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential, IsNSNumber value) => mtrDoorLockClusterDlCredential -> value -> IO ()
setCredentialType mtrDoorLockClusterDlCredential value =
  sendMessage mtrDoorLockClusterDlCredential setCredentialTypeSelector (toNSNumber value)

-- | @- credentialIndex@
credentialIndex :: IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential => mtrDoorLockClusterDlCredential -> IO (Id NSNumber)
credentialIndex mtrDoorLockClusterDlCredential =
  sendMessage mtrDoorLockClusterDlCredential credentialIndexSelector

-- | @- setCredentialIndex:@
setCredentialIndex :: (IsMTRDoorLockClusterDlCredential mtrDoorLockClusterDlCredential, IsNSNumber value) => mtrDoorLockClusterDlCredential -> value -> IO ()
setCredentialIndex mtrDoorLockClusterDlCredential value =
  sendMessage mtrDoorLockClusterDlCredential setCredentialIndexSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterDlCredential)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @credentialType@
credentialTypeSelector :: Selector '[] (Id NSNumber)
credentialTypeSelector = mkSelector "credentialType"

-- | @Selector@ for @setCredentialType:@
setCredentialTypeSelector :: Selector '[Id NSNumber] ()
setCredentialTypeSelector = mkSelector "setCredentialType:"

-- | @Selector@ for @credentialIndex@
credentialIndexSelector :: Selector '[] (Id NSNumber)
credentialIndexSelector = mkSelector "credentialIndex"

-- | @Selector@ for @setCredentialIndex:@
setCredentialIndexSelector :: Selector '[Id NSNumber] ()
setCredentialIndexSelector = mkSelector "setCredentialIndex:"

