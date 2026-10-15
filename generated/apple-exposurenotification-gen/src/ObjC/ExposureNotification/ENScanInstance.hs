{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Aggregation of attenuations of all of this TEK's beacons received during a scan.
--
-- Generated bindings for @ENScanInstance@.
module ObjC.ExposureNotification.ENScanInstance
  ( ENScanInstance
  , IsENScanInstance(..)
  , minimumAttenuation
  , typicalAttenuation
  , secondsSinceLastScan
  , minimumAttenuationSelector
  , secondsSinceLastScanSelector
  , typicalAttenuationSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Minimum attenuation of all of this TEK's beacons received during the scan.
--
-- ObjC selector: @- minimumAttenuation@
minimumAttenuation :: IsENScanInstance enScanInstance => enScanInstance -> IO CUChar
minimumAttenuation enScanInstance =
  sendMessage enScanInstance minimumAttenuationSelector

-- | Aggregation of the attenuations of all of this TEK's beacons received during the scan.
--
-- ObjC selector: @- typicalAttenuation@
typicalAttenuation :: IsENScanInstance enScanInstance => enScanInstance -> IO CUChar
typicalAttenuation enScanInstance =
  sendMessage enScanInstance typicalAttenuationSelector

-- | Seconds elapsed since the the previous scan.
--
-- ObjC selector: @- secondsSinceLastScan@
secondsSinceLastScan :: IsENScanInstance enScanInstance => enScanInstance -> IO CLong
secondsSinceLastScan enScanInstance =
  sendMessage enScanInstance secondsSinceLastScanSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @minimumAttenuation@
minimumAttenuationSelector :: Selector '[] CUChar
minimumAttenuationSelector = mkSelector "minimumAttenuation"

-- | @Selector@ for @typicalAttenuation@
typicalAttenuationSelector :: Selector '[] CUChar
typicalAttenuationSelector = mkSelector "typicalAttenuation"

-- | @Selector@ for @secondsSinceLastScan@
secondsSinceLastScanSelector :: Selector '[] CLong
secondsSinceLastScanSelector = mkSelector "secondsSinceLastScan"

