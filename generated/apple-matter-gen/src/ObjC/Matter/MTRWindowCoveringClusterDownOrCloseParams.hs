{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRWindowCoveringClusterDownOrCloseParams@.
module ObjC.Matter.MTRWindowCoveringClusterDownOrCloseParams
  ( MTRWindowCoveringClusterDownOrCloseParams
  , IsMTRWindowCoveringClusterDownOrCloseParams(..)
  , init_
  , copyWithZone
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
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
init_ :: IsMTRWindowCoveringClusterDownOrCloseParams mtrWindowCoveringClusterDownOrCloseParams => mtrWindowCoveringClusterDownOrCloseParams -> IO (Id MTRWindowCoveringClusterDownOrCloseParams)
init_ mtrWindowCoveringClusterDownOrCloseParams =
  sendOwnedMessage mtrWindowCoveringClusterDownOrCloseParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRWindowCoveringClusterDownOrCloseParams mtrWindowCoveringClusterDownOrCloseParams => mtrWindowCoveringClusterDownOrCloseParams -> Ptr () -> IO RawId
copyWithZone mtrWindowCoveringClusterDownOrCloseParams zone =
  sendOwnedMessage mtrWindowCoveringClusterDownOrCloseParams copyWithZoneSelector zone

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRWindowCoveringClusterDownOrCloseParams mtrWindowCoveringClusterDownOrCloseParams => mtrWindowCoveringClusterDownOrCloseParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrWindowCoveringClusterDownOrCloseParams =
  sendMessage mtrWindowCoveringClusterDownOrCloseParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRWindowCoveringClusterDownOrCloseParams mtrWindowCoveringClusterDownOrCloseParams, IsNSNumber value) => mtrWindowCoveringClusterDownOrCloseParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrWindowCoveringClusterDownOrCloseParams value =
  sendMessage mtrWindowCoveringClusterDownOrCloseParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRWindowCoveringClusterDownOrCloseParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

