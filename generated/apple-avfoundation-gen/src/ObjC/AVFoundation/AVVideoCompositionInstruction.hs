{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVVideoCompositionInstruction@.
module ObjC.AVFoundation.AVVideoCompositionInstruction
  ( AVVideoCompositionInstruction
  , IsAVVideoCompositionInstruction(..)
  , backgroundColor
  , layerInstructions
  , enablePostProcessing
  , requiredSourceTrackIDs
  , passthroughTrackID
  , requiredSourceSampleDataTrackIDs
  , backgroundColorSelector
  , enablePostProcessingSelector
  , layerInstructionsSelector
  , passthroughTrackIDSelector
  , requiredSourceSampleDataTrackIDsSelector
  , requiredSourceTrackIDsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- backgroundColor@
backgroundColor :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO (Ptr ())
backgroundColor avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction backgroundColorSelector

-- | @- layerInstructions@
layerInstructions :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO (Id NSArray)
layerInstructions avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction layerInstructionsSelector

-- | @- enablePostProcessing@
enablePostProcessing :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO Bool
enablePostProcessing avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction enablePostProcessingSelector

-- | @- requiredSourceTrackIDs@
requiredSourceTrackIDs :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO (Id NSArray)
requiredSourceTrackIDs avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction requiredSourceTrackIDsSelector

-- | @- passthroughTrackID@
passthroughTrackID :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO CInt
passthroughTrackID avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction passthroughTrackIDSelector

-- | @- requiredSourceSampleDataTrackIDs@
requiredSourceSampleDataTrackIDs :: IsAVVideoCompositionInstruction avVideoCompositionInstruction => avVideoCompositionInstruction -> IO (Id NSArray)
requiredSourceSampleDataTrackIDs avVideoCompositionInstruction =
  sendMessage avVideoCompositionInstruction requiredSourceSampleDataTrackIDsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @backgroundColor@
backgroundColorSelector :: Selector '[] (Ptr ())
backgroundColorSelector = mkSelector "backgroundColor"

-- | @Selector@ for @layerInstructions@
layerInstructionsSelector :: Selector '[] (Id NSArray)
layerInstructionsSelector = mkSelector "layerInstructions"

-- | @Selector@ for @enablePostProcessing@
enablePostProcessingSelector :: Selector '[] Bool
enablePostProcessingSelector = mkSelector "enablePostProcessing"

-- | @Selector@ for @requiredSourceTrackIDs@
requiredSourceTrackIDsSelector :: Selector '[] (Id NSArray)
requiredSourceTrackIDsSelector = mkSelector "requiredSourceTrackIDs"

-- | @Selector@ for @passthroughTrackID@
passthroughTrackIDSelector :: Selector '[] CInt
passthroughTrackIDSelector = mkSelector "passthroughTrackID"

-- | @Selector@ for @requiredSourceSampleDataTrackIDs@
requiredSourceSampleDataTrackIDsSelector :: Selector '[] (Id NSArray)
requiredSourceSampleDataTrackIDsSelector = mkSelector "requiredSourceSampleDataTrackIDs"

