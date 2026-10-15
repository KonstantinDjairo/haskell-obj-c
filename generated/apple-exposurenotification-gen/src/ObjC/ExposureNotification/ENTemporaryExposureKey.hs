{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Key used to generate rolling proximity identifiers.
--
-- Generated bindings for @ENTemporaryExposureKey@.
module ObjC.ExposureNotification.ENTemporaryExposureKey
  ( ENTemporaryExposureKey
  , IsENTemporaryExposureKey(..)
  , keyData
  , setKeyData
  , rollingPeriod
  , setRollingPeriod
  , rollingStartNumber
  , setRollingStartNumber
  , transmissionRiskLevel
  , setTransmissionRiskLevel
  , keyDataSelector
  , rollingPeriodSelector
  , rollingStartNumberSelector
  , setKeyDataSelector
  , setRollingPeriodSelector
  , setRollingStartNumberSelector
  , setTransmissionRiskLevelSelector
  , transmissionRiskLevelSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ExposureNotification.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Key material used to generate Rolling Proximity Identifiers.
--
-- ObjC selector: @- keyData@
keyData :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> IO (Id NSData)
keyData enTemporaryExposureKey =
  sendMessage enTemporaryExposureKey keyDataSelector

-- | Key material used to generate Rolling Proximity Identifiers.
--
-- ObjC selector: @- setKeyData:@
setKeyData :: (IsENTemporaryExposureKey enTemporaryExposureKey, IsNSData value) => enTemporaryExposureKey -> value -> IO ()
setKeyData enTemporaryExposureKey value =
  sendMessage enTemporaryExposureKey setKeyDataSelector (toNSData value)

-- | Duration this key is valid. It's the number of 10-minute windows between key rolling.
--
-- ObjC selector: @- rollingPeriod@
rollingPeriod :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> IO CUInt
rollingPeriod enTemporaryExposureKey =
  sendMessage enTemporaryExposureKey rollingPeriodSelector

-- | Duration this key is valid. It's the number of 10-minute windows between key rolling.
--
-- ObjC selector: @- setRollingPeriod:@
setRollingPeriod :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> CUInt -> IO ()
setRollingPeriod enTemporaryExposureKey value =
  sendMessage enTemporaryExposureKey setRollingPeriodSelector value

-- | Interval number when the key's EKRollingPeriod started.
--
-- ObjC selector: @- rollingStartNumber@
rollingStartNumber :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> IO CUInt
rollingStartNumber enTemporaryExposureKey =
  sendMessage enTemporaryExposureKey rollingStartNumberSelector

-- | Interval number when the key's EKRollingPeriod started.
--
-- ObjC selector: @- setRollingStartNumber:@
setRollingStartNumber :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> CUInt -> IO ()
setRollingStartNumber enTemporaryExposureKey value =
  sendMessage enTemporaryExposureKey setRollingStartNumberSelector value

-- | Risk of transmission associated with the person this key came from.
--
-- ObjC selector: @- transmissionRiskLevel@
transmissionRiskLevel :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> IO CUChar
transmissionRiskLevel enTemporaryExposureKey =
  sendMessage enTemporaryExposureKey transmissionRiskLevelSelector

-- | Risk of transmission associated with the person this key came from.
--
-- ObjC selector: @- setTransmissionRiskLevel:@
setTransmissionRiskLevel :: IsENTemporaryExposureKey enTemporaryExposureKey => enTemporaryExposureKey -> CUChar -> IO ()
setTransmissionRiskLevel enTemporaryExposureKey value =
  sendMessage enTemporaryExposureKey setTransmissionRiskLevelSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @keyData@
keyDataSelector :: Selector '[] (Id NSData)
keyDataSelector = mkSelector "keyData"

-- | @Selector@ for @setKeyData:@
setKeyDataSelector :: Selector '[Id NSData] ()
setKeyDataSelector = mkSelector "setKeyData:"

-- | @Selector@ for @rollingPeriod@
rollingPeriodSelector :: Selector '[] CUInt
rollingPeriodSelector = mkSelector "rollingPeriod"

-- | @Selector@ for @setRollingPeriod:@
setRollingPeriodSelector :: Selector '[CUInt] ()
setRollingPeriodSelector = mkSelector "setRollingPeriod:"

-- | @Selector@ for @rollingStartNumber@
rollingStartNumberSelector :: Selector '[] CUInt
rollingStartNumberSelector = mkSelector "rollingStartNumber"

-- | @Selector@ for @setRollingStartNumber:@
setRollingStartNumberSelector :: Selector '[CUInt] ()
setRollingStartNumberSelector = mkSelector "setRollingStartNumber:"

-- | @Selector@ for @transmissionRiskLevel@
transmissionRiskLevelSelector :: Selector '[] CUChar
transmissionRiskLevelSelector = mkSelector "transmissionRiskLevel"

-- | @Selector@ for @setTransmissionRiskLevel:@
setTransmissionRiskLevelSelector :: Selector '[CUChar] ()
setTransmissionRiskLevelSelector = mkSelector "setTransmissionRiskLevel:"

