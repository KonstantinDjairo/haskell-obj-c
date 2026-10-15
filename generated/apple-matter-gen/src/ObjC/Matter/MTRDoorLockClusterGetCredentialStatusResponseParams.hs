{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRDoorLockClusterGetCredentialStatusResponseParams@.
module ObjC.Matter.MTRDoorLockClusterGetCredentialStatusResponseParams
  ( MTRDoorLockClusterGetCredentialStatusResponseParams
  , IsMTRDoorLockClusterGetCredentialStatusResponseParams(..)
  , init_
  , copyWithZone
  , credentialExists
  , setCredentialExists
  , userIndex
  , setUserIndex
  , creatorFabricIndex
  , setCreatorFabricIndex
  , lastModifiedFabricIndex
  , setLastModifiedFabricIndex
  , nextCredentialIndex
  , setNextCredentialIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , creatorFabricIndexSelector
  , credentialExistsSelector
  , initSelector
  , lastModifiedFabricIndexSelector
  , nextCredentialIndexSelector
  , setCreatorFabricIndexSelector
  , setCredentialExistsSelector
  , setLastModifiedFabricIndexSelector
  , setNextCredentialIndexSelector
  , setTimedInvokeTimeoutMsSelector
  , setUserIndexSelector
  , timedInvokeTimeoutMsSelector
  , userIndexSelector


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
init_ :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id MTRDoorLockClusterGetCredentialStatusResponseParams)
init_ mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendOwnedMessage mtrDoorLockClusterGetCredentialStatusResponseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> Ptr () -> IO RawId
copyWithZone mtrDoorLockClusterGetCredentialStatusResponseParams zone =
  sendOwnedMessage mtrDoorLockClusterGetCredentialStatusResponseParams copyWithZoneSelector zone

-- | @- credentialExists@
credentialExists :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
credentialExists mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams credentialExistsSelector

-- | @- setCredentialExists:@
setCredentialExists :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setCredentialExists mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setCredentialExistsSelector (toNSNumber value)

-- | @- userIndex@
userIndex :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
userIndex mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams userIndexSelector

-- | @- setUserIndex:@
setUserIndex :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setUserIndex mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setUserIndexSelector (toNSNumber value)

-- | @- creatorFabricIndex@
creatorFabricIndex :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
creatorFabricIndex mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams creatorFabricIndexSelector

-- | @- setCreatorFabricIndex:@
setCreatorFabricIndex :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setCreatorFabricIndex mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setCreatorFabricIndexSelector (toNSNumber value)

-- | @- lastModifiedFabricIndex@
lastModifiedFabricIndex :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
lastModifiedFabricIndex mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams lastModifiedFabricIndexSelector

-- | @- setLastModifiedFabricIndex:@
setLastModifiedFabricIndex :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setLastModifiedFabricIndex mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setLastModifiedFabricIndexSelector (toNSNumber value)

-- | @- nextCredentialIndex@
nextCredentialIndex :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
nextCredentialIndex mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams nextCredentialIndexSelector

-- | @- setNextCredentialIndex:@
setNextCredentialIndex :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setNextCredentialIndex mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setNextCredentialIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams => mtrDoorLockClusterGetCredentialStatusResponseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrDoorLockClusterGetCredentialStatusResponseParams =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRDoorLockClusterGetCredentialStatusResponseParams mtrDoorLockClusterGetCredentialStatusResponseParams, IsNSNumber value) => mtrDoorLockClusterGetCredentialStatusResponseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrDoorLockClusterGetCredentialStatusResponseParams value =
  sendMessage mtrDoorLockClusterGetCredentialStatusResponseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRDoorLockClusterGetCredentialStatusResponseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @credentialExists@
credentialExistsSelector :: Selector '[] (Id NSNumber)
credentialExistsSelector = mkSelector "credentialExists"

-- | @Selector@ for @setCredentialExists:@
setCredentialExistsSelector :: Selector '[Id NSNumber] ()
setCredentialExistsSelector = mkSelector "setCredentialExists:"

-- | @Selector@ for @userIndex@
userIndexSelector :: Selector '[] (Id NSNumber)
userIndexSelector = mkSelector "userIndex"

-- | @Selector@ for @setUserIndex:@
setUserIndexSelector :: Selector '[Id NSNumber] ()
setUserIndexSelector = mkSelector "setUserIndex:"

-- | @Selector@ for @creatorFabricIndex@
creatorFabricIndexSelector :: Selector '[] (Id NSNumber)
creatorFabricIndexSelector = mkSelector "creatorFabricIndex"

-- | @Selector@ for @setCreatorFabricIndex:@
setCreatorFabricIndexSelector :: Selector '[Id NSNumber] ()
setCreatorFabricIndexSelector = mkSelector "setCreatorFabricIndex:"

-- | @Selector@ for @lastModifiedFabricIndex@
lastModifiedFabricIndexSelector :: Selector '[] (Id NSNumber)
lastModifiedFabricIndexSelector = mkSelector "lastModifiedFabricIndex"

-- | @Selector@ for @setLastModifiedFabricIndex:@
setLastModifiedFabricIndexSelector :: Selector '[Id NSNumber] ()
setLastModifiedFabricIndexSelector = mkSelector "setLastModifiedFabricIndex:"

-- | @Selector@ for @nextCredentialIndex@
nextCredentialIndexSelector :: Selector '[] (Id NSNumber)
nextCredentialIndexSelector = mkSelector "nextCredentialIndex"

-- | @Selector@ for @setNextCredentialIndex:@
setNextCredentialIndexSelector :: Selector '[Id NSNumber] ()
setNextCredentialIndexSelector = mkSelector "setNextCredentialIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

