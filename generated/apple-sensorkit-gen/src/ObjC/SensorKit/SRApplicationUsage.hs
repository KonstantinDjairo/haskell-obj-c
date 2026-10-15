{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SRApplicationUsage@.
module ObjC.SensorKit.SRApplicationUsage
  ( SRApplicationUsage
  , IsSRApplicationUsage(..)
  , bundleIdentifier
  , usageTime
  , reportApplicationIdentifier
  , bundleIdentifierSelector
  , reportApplicationIdentifierSelector
  , usageTimeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.SensorKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The bundle identifier of the app in use. Only populated for Apple apps.
--
-- ObjC selector: @- bundleIdentifier@
bundleIdentifier :: IsSRApplicationUsage srApplicationUsage => srApplicationUsage -> IO (Id NSString)
bundleIdentifier srApplicationUsage =
  sendMessage srApplicationUsage bundleIdentifierSelector

-- | The amount of time the app is used
--
-- ObjC selector: @- usageTime@
usageTime :: IsSRApplicationUsage srApplicationUsage => srApplicationUsage -> IO CDouble
usageTime srApplicationUsage =
  sendMessage srApplicationUsage usageTimeSelector

-- | reportApplicationIdentifier
--
-- An application identifier that is valid for the duration of the report.
--
-- This is useful for identifying distinct application uses within the same report duration without revealing the actual application identifier.
--
-- ObjC selector: @- reportApplicationIdentifier@
reportApplicationIdentifier :: IsSRApplicationUsage srApplicationUsage => srApplicationUsage -> IO RawId
reportApplicationIdentifier srApplicationUsage =
  sendMessage srApplicationUsage reportApplicationIdentifierSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @bundleIdentifier@
bundleIdentifierSelector :: Selector '[] (Id NSString)
bundleIdentifierSelector = mkSelector "bundleIdentifier"

-- | @Selector@ for @usageTime@
usageTimeSelector :: Selector '[] CDouble
usageTimeSelector = mkSelector "usageTime"

-- | @Selector@ for @reportApplicationIdentifier@
reportApplicationIdentifierSelector :: Selector '[] RawId
reportApplicationIdentifierSelector = mkSelector "reportApplicationIdentifier"

