{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | VNBarcodeObservation
--
-- VNRectangleObservation
--
-- VNBarcodeObservation Describes an area containing a barcode detected by the VNRequestNameDetectBarcodes request.
--
-- Generated bindings for @VNBarcodeObservation@.
module ObjC.Vision.VNBarcodeObservation
  ( VNBarcodeObservation
  , IsVNBarcodeObservation(..)
  , symbology
  , barcodeDescriptor
  , payloadStringValue
  , barcodeDescriptorSelector
  , payloadStringValueSelector
  , symbologySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Vision.Internal.Classes
import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | The symbology of the detected barcode.
--
-- ObjC selector: @- symbology@
symbology :: IsVNBarcodeObservation vnBarcodeObservation => vnBarcodeObservation -> IO (Id NSString)
symbology vnBarcodeObservation =
  sendMessage vnBarcodeObservation symbologySelector

-- | An object that provides symbology-specific data for the barcode.
--
-- ObjC selector: @- barcodeDescriptor@
barcodeDescriptor :: IsVNBarcodeObservation vnBarcodeObservation => vnBarcodeObservation -> IO (Id CIBarcodeDescriptor)
barcodeDescriptor vnBarcodeObservation =
  sendMessage vnBarcodeObservation barcodeDescriptorSelector

-- | The string representation of the barcode's payload.  Depending on the symbology of the barcode and/or the payload data itself, a string representation of the payload may not be available.
--
-- ObjC selector: @- payloadStringValue@
payloadStringValue :: IsVNBarcodeObservation vnBarcodeObservation => vnBarcodeObservation -> IO (Id NSString)
payloadStringValue vnBarcodeObservation =
  sendMessage vnBarcodeObservation payloadStringValueSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @symbology@
symbologySelector :: Selector '[] (Id NSString)
symbologySelector = mkSelector "symbology"

-- | @Selector@ for @barcodeDescriptor@
barcodeDescriptorSelector :: Selector '[] (Id CIBarcodeDescriptor)
barcodeDescriptorSelector = mkSelector "barcodeDescriptor"

-- | @Selector@ for @payloadStringValue@
payloadStringValueSelector :: Selector '[] (Id NSString)
payloadStringValueSelector = mkSelector "payloadStringValue"

