{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterRemoveFabricParams@.
module ObjC.Matter.MTROperationalCredentialsClusterRemoveFabricParams
  ( MTROperationalCredentialsClusterRemoveFabricParams
  , IsMTROperationalCredentialsClusterRemoveFabricParams(..)
  , init_
  , copyWithZone
  , fabricIndex
  , setFabricIndex
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , fabricIndexSelector
  , initSelector
  , setFabricIndexSelector
  , setTimedInvokeTimeoutMsSelector
  , timedInvokeTimeoutMsSelector


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
init_ :: IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams => mtrOperationalCredentialsClusterRemoveFabricParams -> IO (Id MTROperationalCredentialsClusterRemoveFabricParams)
init_ mtrOperationalCredentialsClusterRemoveFabricParams =
  sendOwnedMessage mtrOperationalCredentialsClusterRemoveFabricParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams => mtrOperationalCredentialsClusterRemoveFabricParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterRemoveFabricParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterRemoveFabricParams copyWithZoneSelector zone

-- | @- fabricIndex@
fabricIndex :: IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams => mtrOperationalCredentialsClusterRemoveFabricParams -> IO (Id NSNumber)
fabricIndex mtrOperationalCredentialsClusterRemoveFabricParams =
  sendMessage mtrOperationalCredentialsClusterRemoveFabricParams fabricIndexSelector

-- | @- setFabricIndex:@
setFabricIndex :: (IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams, IsNSNumber value) => mtrOperationalCredentialsClusterRemoveFabricParams -> value -> IO ()
setFabricIndex mtrOperationalCredentialsClusterRemoveFabricParams value =
  sendMessage mtrOperationalCredentialsClusterRemoveFabricParams setFabricIndexSelector (toNSNumber value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams => mtrOperationalCredentialsClusterRemoveFabricParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterRemoveFabricParams =
  sendMessage mtrOperationalCredentialsClusterRemoveFabricParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterRemoveFabricParams mtrOperationalCredentialsClusterRemoveFabricParams, IsNSNumber value) => mtrOperationalCredentialsClusterRemoveFabricParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterRemoveFabricParams value =
  sendMessage mtrOperationalCredentialsClusterRemoveFabricParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterRemoveFabricParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @fabricIndex@
fabricIndexSelector :: Selector '[] (Id NSNumber)
fabricIndexSelector = mkSelector "fabricIndex"

-- | @Selector@ for @setFabricIndex:@
setFabricIndexSelector :: Selector '[Id NSNumber] ()
setFabricIndexSelector = mkSelector "setFabricIndex:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

