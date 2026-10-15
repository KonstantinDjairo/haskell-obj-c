{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CIImageProcessorKernel@.
module ObjC.CoreImage.CIImageProcessorKernel
  ( CIImageProcessorKernel
  , IsCIImageProcessorKernel(..)
  , processWithInputs_arguments_output_error
  , formatForInputAtIndex
  , outputFormat
  , formatForInputAtIndexSelector
  , outputFormatSelector
  , processWithInputs_arguments_output_errorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ processWithInputs:arguments:output:error:@
processWithInputs_arguments_output_error :: (IsNSArray inputs, IsNSDictionary arguments, IsNSError error_) => inputs -> arguments -> RawId -> error_ -> IO Bool
processWithInputs_arguments_output_error inputs arguments output error_ =
  do
    cls' <- getRequiredClass "CIImageProcessorKernel"
    sendClassMessage cls' processWithInputs_arguments_output_errorSelector (toNSArray inputs) (toNSDictionary arguments) output (toNSError error_)

-- | @+ formatForInputAtIndex:@
formatForInputAtIndex :: CInt -> IO CInt
formatForInputAtIndex input =
  do
    cls' <- getRequiredClass "CIImageProcessorKernel"
    sendClassMessage cls' formatForInputAtIndexSelector input

-- | @+ outputFormat@
outputFormat :: IO CInt
outputFormat  =
  do
    cls' <- getRequiredClass "CIImageProcessorKernel"
    sendClassMessage cls' outputFormatSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @processWithInputs:arguments:output:error:@
processWithInputs_arguments_output_errorSelector :: Selector '[Id NSArray, Id NSDictionary, RawId, Id NSError] Bool
processWithInputs_arguments_output_errorSelector = mkSelector "processWithInputs:arguments:output:error:"

-- | @Selector@ for @formatForInputAtIndex:@
formatForInputAtIndexSelector :: Selector '[CInt] CInt
formatForInputAtIndexSelector = mkSelector "formatForInputAtIndex:"

-- | @Selector@ for @outputFormat@
outputFormatSelector :: Selector '[] CInt
outputFormatSelector = mkSelector "outputFormat"

