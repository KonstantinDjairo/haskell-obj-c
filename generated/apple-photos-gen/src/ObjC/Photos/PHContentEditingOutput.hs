{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PHContentEditingOutput@.
module ObjC.Photos.PHContentEditingOutput
  ( PHContentEditingOutput
  , IsPHContentEditingOutput(..)
  , initWithContentEditingInput
  , initWithPlaceholderForCreatedAsset
  , adjustmentData
  , setAdjustmentData
  , renderedContentURL
  , adjustmentDataSelector
  , initWithContentEditingInputSelector
  , initWithPlaceholderForCreatedAssetSelector
  , renderedContentURLSelector
  , setAdjustmentDataSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Photos.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithContentEditingInput:@
initWithContentEditingInput :: (IsPHContentEditingOutput phContentEditingOutput, IsPHContentEditingInput contentEditingInput) => phContentEditingOutput -> contentEditingInput -> IO (Id PHContentEditingOutput)
initWithContentEditingInput phContentEditingOutput contentEditingInput =
  sendOwnedMessage phContentEditingOutput initWithContentEditingInputSelector (toPHContentEditingInput contentEditingInput)

-- | @- initWithPlaceholderForCreatedAsset:@
initWithPlaceholderForCreatedAsset :: (IsPHContentEditingOutput phContentEditingOutput, IsPHObjectPlaceholder placeholderForCreatedAsset) => phContentEditingOutput -> placeholderForCreatedAsset -> IO (Id PHContentEditingOutput)
initWithPlaceholderForCreatedAsset phContentEditingOutput placeholderForCreatedAsset =
  sendOwnedMessage phContentEditingOutput initWithPlaceholderForCreatedAssetSelector (toPHObjectPlaceholder placeholderForCreatedAsset)

-- | @- adjustmentData@
adjustmentData :: IsPHContentEditingOutput phContentEditingOutput => phContentEditingOutput -> IO (Id PHAdjustmentData)
adjustmentData phContentEditingOutput =
  sendMessage phContentEditingOutput adjustmentDataSelector

-- | @- setAdjustmentData:@
setAdjustmentData :: (IsPHContentEditingOutput phContentEditingOutput, IsPHAdjustmentData value) => phContentEditingOutput -> value -> IO ()
setAdjustmentData phContentEditingOutput value =
  sendMessage phContentEditingOutput setAdjustmentDataSelector (toPHAdjustmentData value)

-- | @- renderedContentURL@
renderedContentURL :: IsPHContentEditingOutput phContentEditingOutput => phContentEditingOutput -> IO (Id NSURL)
renderedContentURL phContentEditingOutput =
  sendMessage phContentEditingOutput renderedContentURLSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithContentEditingInput:@
initWithContentEditingInputSelector :: Selector '[Id PHContentEditingInput] (Id PHContentEditingOutput)
initWithContentEditingInputSelector = mkSelector "initWithContentEditingInput:"

-- | @Selector@ for @initWithPlaceholderForCreatedAsset:@
initWithPlaceholderForCreatedAssetSelector :: Selector '[Id PHObjectPlaceholder] (Id PHContentEditingOutput)
initWithPlaceholderForCreatedAssetSelector = mkSelector "initWithPlaceholderForCreatedAsset:"

-- | @Selector@ for @adjustmentData@
adjustmentDataSelector :: Selector '[] (Id PHAdjustmentData)
adjustmentDataSelector = mkSelector "adjustmentData"

-- | @Selector@ for @setAdjustmentData:@
setAdjustmentDataSelector :: Selector '[Id PHAdjustmentData] ()
setAdjustmentDataSelector = mkSelector "setAdjustmentData:"

-- | @Selector@ for @renderedContentURL@
renderedContentURLSelector :: Selector '[] (Id NSURL)
renderedContentURLSelector = mkSelector "renderedContentURL"

