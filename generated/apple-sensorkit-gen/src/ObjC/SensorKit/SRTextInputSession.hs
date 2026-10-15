{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SRTextInputSession@.
module ObjC.SensorKit.SRTextInputSession
  ( SRTextInputSession
  , IsSRTextInputSession(..)
  , duration
  , sessionType
  , durationSelector
  , sessionTypeSelector

  -- * Enum types
  , SRTextInputSessionType(SRTextInputSessionType)
  , pattern SRTextInputSessionTypeKeyboard
  , pattern SRTextInputSessionTypeThirdPartyKeyboard
  , pattern SRTextInputSessionTypePencil
  , pattern SRTextInputSessionTypeDictation

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

-- | @- duration@
duration :: IsSRTextInputSession srTextInputSession => srTextInputSession -> IO CDouble
duration srTextInputSession =
  sendMessage srTextInputSession durationSelector

-- | @- sessionType@
sessionType :: IsSRTextInputSession srTextInputSession => srTextInputSession -> IO SRTextInputSessionType
sessionType srTextInputSession =
  sendMessage srTextInputSession sessionTypeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @duration@
durationSelector :: Selector '[] CDouble
durationSelector = mkSelector "duration"

-- | @Selector@ for @sessionType@
sessionTypeSelector :: Selector '[] SRTextInputSessionType
sessionTypeSelector = mkSelector "sessionType"

