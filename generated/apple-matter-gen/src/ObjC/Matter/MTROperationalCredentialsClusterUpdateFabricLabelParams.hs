{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROperationalCredentialsClusterUpdateFabricLabelParams@.
module ObjC.Matter.MTROperationalCredentialsClusterUpdateFabricLabelParams
  ( MTROperationalCredentialsClusterUpdateFabricLabelParams
  , IsMTROperationalCredentialsClusterUpdateFabricLabelParams(..)
  , init_
  , copyWithZone
  , label
  , setLabel
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , labelSelector
  , setLabelSelector
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
init_ :: IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> IO (Id MTROperationalCredentialsClusterUpdateFabricLabelParams)
init_ mtrOperationalCredentialsClusterUpdateFabricLabelParams =
  sendOwnedMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> Ptr () -> IO RawId
copyWithZone mtrOperationalCredentialsClusterUpdateFabricLabelParams zone =
  sendOwnedMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams copyWithZoneSelector zone

-- | @- label@
label :: IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> IO (Id NSString)
label mtrOperationalCredentialsClusterUpdateFabricLabelParams =
  sendMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams labelSelector

-- | @- setLabel:@
setLabel :: (IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams, IsNSString value) => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> value -> IO ()
setLabel mtrOperationalCredentialsClusterUpdateFabricLabelParams value =
  sendMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams setLabelSelector (toNSString value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrOperationalCredentialsClusterUpdateFabricLabelParams =
  sendMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTROperationalCredentialsClusterUpdateFabricLabelParams mtrOperationalCredentialsClusterUpdateFabricLabelParams, IsNSNumber value) => mtrOperationalCredentialsClusterUpdateFabricLabelParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrOperationalCredentialsClusterUpdateFabricLabelParams value =
  sendMessage mtrOperationalCredentialsClusterUpdateFabricLabelParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTROperationalCredentialsClusterUpdateFabricLabelParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @label@
labelSelector :: Selector '[] (Id NSString)
labelSelector = mkSelector "label"

-- | @Selector@ for @setLabel:@
setLabelSelector :: Selector '[Id NSString] ()
setLabelSelector = mkSelector "setLabel:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

