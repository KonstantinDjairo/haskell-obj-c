{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVMutableVideoCompositionInstruction@.
module ObjC.AVFoundation.AVMutableVideoCompositionInstruction
  ( AVMutableVideoCompositionInstruction
  , IsAVMutableVideoCompositionInstruction(..)
  , videoCompositionInstruction
  , backgroundColor
  , setBackgroundColor
  , layerInstructions
  , setLayerInstructions
  , enablePostProcessing
  , setEnablePostProcessing
  , requiredSourceSampleDataTrackIDs
  , setRequiredSourceSampleDataTrackIDs
  , backgroundColorSelector
  , enablePostProcessingSelector
  , layerInstructionsSelector
  , requiredSourceSampleDataTrackIDsSelector
  , setBackgroundColorSelector
  , setEnablePostProcessingSelector
  , setLayerInstructionsSelector
  , setRequiredSourceSampleDataTrackIDsSelector
  , videoCompositionInstructionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ videoCompositionInstruction@
videoCompositionInstruction :: IO (Id AVMutableVideoCompositionInstruction)
videoCompositionInstruction  =
  do
    cls' <- getRequiredClass "AVMutableVideoCompositionInstruction"
    sendClassMessage cls' videoCompositionInstructionSelector

-- | @- backgroundColor@
backgroundColor :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> IO (Ptr ())
backgroundColor avMutableVideoCompositionInstruction =
  sendMessage avMutableVideoCompositionInstruction backgroundColorSelector

-- | @- setBackgroundColor:@
setBackgroundColor :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> Ptr () -> IO ()
setBackgroundColor avMutableVideoCompositionInstruction value =
  sendMessage avMutableVideoCompositionInstruction setBackgroundColorSelector value

-- | @- layerInstructions@
layerInstructions :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> IO (Id NSArray)
layerInstructions avMutableVideoCompositionInstruction =
  sendMessage avMutableVideoCompositionInstruction layerInstructionsSelector

-- | @- setLayerInstructions:@
setLayerInstructions :: (IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction, IsNSArray value) => avMutableVideoCompositionInstruction -> value -> IO ()
setLayerInstructions avMutableVideoCompositionInstruction value =
  sendMessage avMutableVideoCompositionInstruction setLayerInstructionsSelector (toNSArray value)

-- | @- enablePostProcessing@
enablePostProcessing :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> IO Bool
enablePostProcessing avMutableVideoCompositionInstruction =
  sendMessage avMutableVideoCompositionInstruction enablePostProcessingSelector

-- | @- setEnablePostProcessing:@
setEnablePostProcessing :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> Bool -> IO ()
setEnablePostProcessing avMutableVideoCompositionInstruction value =
  sendMessage avMutableVideoCompositionInstruction setEnablePostProcessingSelector value

-- | @- requiredSourceSampleDataTrackIDs@
requiredSourceSampleDataTrackIDs :: IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction => avMutableVideoCompositionInstruction -> IO (Id NSArray)
requiredSourceSampleDataTrackIDs avMutableVideoCompositionInstruction =
  sendMessage avMutableVideoCompositionInstruction requiredSourceSampleDataTrackIDsSelector

-- | @- setRequiredSourceSampleDataTrackIDs:@
setRequiredSourceSampleDataTrackIDs :: (IsAVMutableVideoCompositionInstruction avMutableVideoCompositionInstruction, IsNSArray value) => avMutableVideoCompositionInstruction -> value -> IO ()
setRequiredSourceSampleDataTrackIDs avMutableVideoCompositionInstruction value =
  sendMessage avMutableVideoCompositionInstruction setRequiredSourceSampleDataTrackIDsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @videoCompositionInstruction@
videoCompositionInstructionSelector :: Selector '[] (Id AVMutableVideoCompositionInstruction)
videoCompositionInstructionSelector = mkSelector "videoCompositionInstruction"

-- | @Selector@ for @backgroundColor@
backgroundColorSelector :: Selector '[] (Ptr ())
backgroundColorSelector = mkSelector "backgroundColor"

-- | @Selector@ for @setBackgroundColor:@
setBackgroundColorSelector :: Selector '[Ptr ()] ()
setBackgroundColorSelector = mkSelector "setBackgroundColor:"

-- | @Selector@ for @layerInstructions@
layerInstructionsSelector :: Selector '[] (Id NSArray)
layerInstructionsSelector = mkSelector "layerInstructions"

-- | @Selector@ for @setLayerInstructions:@
setLayerInstructionsSelector :: Selector '[Id NSArray] ()
setLayerInstructionsSelector = mkSelector "setLayerInstructions:"

-- | @Selector@ for @enablePostProcessing@
enablePostProcessingSelector :: Selector '[] Bool
enablePostProcessingSelector = mkSelector "enablePostProcessing"

-- | @Selector@ for @setEnablePostProcessing:@
setEnablePostProcessingSelector :: Selector '[Bool] ()
setEnablePostProcessingSelector = mkSelector "setEnablePostProcessing:"

-- | @Selector@ for @requiredSourceSampleDataTrackIDs@
requiredSourceSampleDataTrackIDsSelector :: Selector '[] (Id NSArray)
requiredSourceSampleDataTrackIDsSelector = mkSelector "requiredSourceSampleDataTrackIDs"

-- | @Selector@ for @setRequiredSourceSampleDataTrackIDs:@
setRequiredSourceSampleDataTrackIDsSelector :: Selector '[Id NSArray] ()
setRequiredSourceSampleDataTrackIDsSelector = mkSelector "setRequiredSourceSampleDataTrackIDs:"

