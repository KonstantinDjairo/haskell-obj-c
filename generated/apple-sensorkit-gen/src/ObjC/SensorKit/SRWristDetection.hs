{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SRWristDetection@.
module ObjC.SensorKit.SRWristDetection
  ( SRWristDetection
  , IsSRWristDetection(..)
  , onWrist
  , wristLocation
  , crownOrientation
  , crownOrientationSelector
  , onWristSelector
  , wristLocationSelector

  -- * Enum types
  , SRCrownOrientation(SRCrownOrientation)
  , pattern SRCrownOrientationLeft
  , pattern SRCrownOrientationRight
  , SRWristLocation(SRWristLocation)
  , pattern SRWristLocationLeft
  , pattern SRWristLocationRight

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.SensorKit.Internal.Classes
import ObjC.SensorKit.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- onWrist@
onWrist :: IsSRWristDetection srWristDetection => srWristDetection -> IO Bool
onWrist srWristDetection =
  sendMessage srWristDetection onWristSelector

-- | @- wristLocation@
wristLocation :: IsSRWristDetection srWristDetection => srWristDetection -> IO SRWristLocation
wristLocation srWristDetection =
  sendMessage srWristDetection wristLocationSelector

-- | @- crownOrientation@
crownOrientation :: IsSRWristDetection srWristDetection => srWristDetection -> IO SRCrownOrientation
crownOrientation srWristDetection =
  sendMessage srWristDetection crownOrientationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @onWrist@
onWristSelector :: Selector '[] Bool
onWristSelector = mkSelector "onWrist"

-- | @Selector@ for @wristLocation@
wristLocationSelector :: Selector '[] SRWristLocation
wristLocationSelector = mkSelector "wristLocation"

-- | @Selector@ for @crownOrientation@
crownOrientationSelector :: Selector '[] SRCrownOrientation
crownOrientationSelector = mkSelector "crownOrientation"

