{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVAssetVariantAudioRenditionSpecificAttributes@.
module ObjC.AVFoundation.AVAssetVariantAudioRenditionSpecificAttributes
  ( AVAssetVariantAudioRenditionSpecificAttributes
  , IsAVAssetVariantAudioRenditionSpecificAttributes(..)
  , channelCount
  , channelCountSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | channelCount
--
-- If it is not declared, the value will be negative.
--
-- ObjC selector: @- channelCount@
channelCount :: IsAVAssetVariantAudioRenditionSpecificAttributes avAssetVariantAudioRenditionSpecificAttributes => avAssetVariantAudioRenditionSpecificAttributes -> IO CLong
channelCount avAssetVariantAudioRenditionSpecificAttributes =
  sendMessage avAssetVariantAudioRenditionSpecificAttributes channelCountSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @channelCount@
channelCountSelector :: Selector '[] CLong
channelCountSelector = mkSelector "channelCount"

