{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A face feature found by a CIDetector. All positions are relative to the original image.
--
-- Generated bindings for @CIFaceFeature@.
module ObjC.CoreImage.CIFaceFeature
  ( CIFaceFeature
  , IsCIFaceFeature(..)
  , hasLeftEyePosition
  , hasRightEyePosition
  , hasMouthPosition
  , hasTrackingID
  , trackingID
  , hasTrackingFrameCount
  , trackingFrameCount
  , hasFaceAngle
  , faceAngle
  , hasSmile
  , leftEyeClosed
  , rightEyeClosed
  , faceAngleSelector
  , hasFaceAngleSelector
  , hasLeftEyePositionSelector
  , hasMouthPositionSelector
  , hasRightEyePositionSelector
  , hasSmileSelector
  , hasTrackingFrameCountSelector
  , hasTrackingIDSelector
  , leftEyeClosedSelector
  , rightEyeClosedSelector
  , trackingFrameCountSelector
  , trackingIDSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- hasLeftEyePosition@
hasLeftEyePosition :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasLeftEyePosition ciFaceFeature =
  sendMessage ciFaceFeature hasLeftEyePositionSelector

-- | @- hasRightEyePosition@
hasRightEyePosition :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasRightEyePosition ciFaceFeature =
  sendMessage ciFaceFeature hasRightEyePositionSelector

-- | @- hasMouthPosition@
hasMouthPosition :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasMouthPosition ciFaceFeature =
  sendMessage ciFaceFeature hasMouthPositionSelector

-- | @- hasTrackingID@
hasTrackingID :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasTrackingID ciFaceFeature =
  sendMessage ciFaceFeature hasTrackingIDSelector

-- | @- trackingID@
trackingID :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO CInt
trackingID ciFaceFeature =
  sendMessage ciFaceFeature trackingIDSelector

-- | @- hasTrackingFrameCount@
hasTrackingFrameCount :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasTrackingFrameCount ciFaceFeature =
  sendMessage ciFaceFeature hasTrackingFrameCountSelector

-- | @- trackingFrameCount@
trackingFrameCount :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO CInt
trackingFrameCount ciFaceFeature =
  sendMessage ciFaceFeature trackingFrameCountSelector

-- | @- hasFaceAngle@
hasFaceAngle :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasFaceAngle ciFaceFeature =
  sendMessage ciFaceFeature hasFaceAngleSelector

-- | @- faceAngle@
faceAngle :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO CFloat
faceAngle ciFaceFeature =
  sendMessage ciFaceFeature faceAngleSelector

-- | @- hasSmile@
hasSmile :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
hasSmile ciFaceFeature =
  sendMessage ciFaceFeature hasSmileSelector

-- | @- leftEyeClosed@
leftEyeClosed :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
leftEyeClosed ciFaceFeature =
  sendMessage ciFaceFeature leftEyeClosedSelector

-- | @- rightEyeClosed@
rightEyeClosed :: IsCIFaceFeature ciFaceFeature => ciFaceFeature -> IO Bool
rightEyeClosed ciFaceFeature =
  sendMessage ciFaceFeature rightEyeClosedSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @hasLeftEyePosition@
hasLeftEyePositionSelector :: Selector '[] Bool
hasLeftEyePositionSelector = mkSelector "hasLeftEyePosition"

-- | @Selector@ for @hasRightEyePosition@
hasRightEyePositionSelector :: Selector '[] Bool
hasRightEyePositionSelector = mkSelector "hasRightEyePosition"

-- | @Selector@ for @hasMouthPosition@
hasMouthPositionSelector :: Selector '[] Bool
hasMouthPositionSelector = mkSelector "hasMouthPosition"

-- | @Selector@ for @hasTrackingID@
hasTrackingIDSelector :: Selector '[] Bool
hasTrackingIDSelector = mkSelector "hasTrackingID"

-- | @Selector@ for @trackingID@
trackingIDSelector :: Selector '[] CInt
trackingIDSelector = mkSelector "trackingID"

-- | @Selector@ for @hasTrackingFrameCount@
hasTrackingFrameCountSelector :: Selector '[] Bool
hasTrackingFrameCountSelector = mkSelector "hasTrackingFrameCount"

-- | @Selector@ for @trackingFrameCount@
trackingFrameCountSelector :: Selector '[] CInt
trackingFrameCountSelector = mkSelector "trackingFrameCount"

-- | @Selector@ for @hasFaceAngle@
hasFaceAngleSelector :: Selector '[] Bool
hasFaceAngleSelector = mkSelector "hasFaceAngle"

-- | @Selector@ for @faceAngle@
faceAngleSelector :: Selector '[] CFloat
faceAngleSelector = mkSelector "faceAngle"

-- | @Selector@ for @hasSmile@
hasSmileSelector :: Selector '[] Bool
hasSmileSelector = mkSelector "hasSmile"

-- | @Selector@ for @leftEyeClosed@
leftEyeClosedSelector :: Selector '[] Bool
leftEyeClosedSelector = mkSelector "leftEyeClosed"

-- | @Selector@ for @rightEyeClosed@
rightEyeClosedSelector :: Selector '[] Bool
rightEyeClosedSelector = mkSelector "rightEyeClosed"

