{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CIPDF417CodeDescriptor
--
-- CIPDF417CodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a PDF417 code symbol.
--
-- Refer to the ISO/IEC 15438:2006(E) for the PDF417 symbol specification.
--
-- Generated bindings for @CIPDF417CodeDescriptor@.
module ObjC.CoreImage.CIPDF417CodeDescriptor
  ( CIPDF417CodeDescriptor
  , IsCIPDF417CodeDescriptor(..)
  , initWithPayload_isCompact_rowCount_columnCount
  , descriptorWithPayload_isCompact_rowCount_columnCount
  , errorCorrectedPayload
  , isCompact
  , rowCount
  , columnCount
  , columnCountSelector
  , descriptorWithPayload_isCompact_rowCount_columnCountSelector
  , errorCorrectedPayloadSelector
  , initWithPayload_isCompact_rowCount_columnCountSelector
  , isCompactSelector
  , rowCountSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithPayload:isCompact:rowCount:columnCount:@
initWithPayload_isCompact_rowCount_columnCount :: (IsCIPDF417CodeDescriptor cipdF417CodeDescriptor, IsNSData errorCorrectedPayload) => cipdF417CodeDescriptor -> errorCorrectedPayload -> Bool -> CLong -> CLong -> IO (Id CIPDF417CodeDescriptor)
initWithPayload_isCompact_rowCount_columnCount cipdF417CodeDescriptor errorCorrectedPayload isCompact rowCount columnCount =
  sendOwnedMessage cipdF417CodeDescriptor initWithPayload_isCompact_rowCount_columnCountSelector (toNSData errorCorrectedPayload) isCompact rowCount columnCount

-- | @+ descriptorWithPayload:isCompact:rowCount:columnCount:@
descriptorWithPayload_isCompact_rowCount_columnCount :: IsNSData errorCorrectedPayload => errorCorrectedPayload -> Bool -> CLong -> CLong -> IO (Id CIPDF417CodeDescriptor)
descriptorWithPayload_isCompact_rowCount_columnCount errorCorrectedPayload isCompact rowCount columnCount =
  do
    cls' <- getRequiredClass "CIPDF417CodeDescriptor"
    sendClassMessage cls' descriptorWithPayload_isCompact_rowCount_columnCountSelector (toNSData errorCorrectedPayload) isCompact rowCount columnCount

-- | errorCorrectedPayload
--
-- The error-corrected codewords which comprise the PDF417 symbol. The first codeword indicates the number of data codewords in the errorCorrectedPayload.
--
-- PDF417 codes are comprised of a start character on the left and a stop character on the right. Each row begins and ends with special characters indicating the current row as well as information about the dimensions of the PDF417 symbol. The errorCorrectedPayload represents the sequence of PDF417 codewords that make up the body of the message. The first codeword indicates the number of codewords in the message. This count includes the "count" codeword and any padding codewords, but does not include the error correction codewords. Each codeword is a 16-bit value in the range of 0...928. The sequence is to be interpreted as described in the PDF417 bar code symbology specification -- ISO/IEC 15438:2006(E).
--
-- ObjC selector: @- errorCorrectedPayload@
errorCorrectedPayload :: IsCIPDF417CodeDescriptor cipdF417CodeDescriptor => cipdF417CodeDescriptor -> IO (Id NSData)
errorCorrectedPayload cipdF417CodeDescriptor =
  sendMessage cipdF417CodeDescriptor errorCorrectedPayloadSelector

-- | isCompact
--
-- A BOOL indicating whether the symbol is compact.
--
-- Compact PDF417 symbols have abbreviated right-side guard bars.
--
-- ObjC selector: @- isCompact@
isCompact :: IsCIPDF417CodeDescriptor cipdF417CodeDescriptor => cipdF417CodeDescriptor -> IO Bool
isCompact cipdF417CodeDescriptor =
  sendMessage cipdF417CodeDescriptor isCompactSelector

-- | rowCount
--
-- Indicates the number of rows in the rectangular matrix.
--
-- rowCount values range from 3 to 90.
--
-- ObjC selector: @- rowCount@
rowCount :: IsCIPDF417CodeDescriptor cipdF417CodeDescriptor => cipdF417CodeDescriptor -> IO CLong
rowCount cipdF417CodeDescriptor =
  sendMessage cipdF417CodeDescriptor rowCountSelector

-- | columnCount
--
-- Indicates the number of columns in the rectangular matrix, excluding the columns used to indicate the symbol structure.
--
-- columnCount values range from 1 to 30.
--
-- ObjC selector: @- columnCount@
columnCount :: IsCIPDF417CodeDescriptor cipdF417CodeDescriptor => cipdF417CodeDescriptor -> IO CLong
columnCount cipdF417CodeDescriptor =
  sendMessage cipdF417CodeDescriptor columnCountSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithPayload:isCompact:rowCount:columnCount:@
initWithPayload_isCompact_rowCount_columnCountSelector :: Selector '[Id NSData, Bool, CLong, CLong] (Id CIPDF417CodeDescriptor)
initWithPayload_isCompact_rowCount_columnCountSelector = mkSelector "initWithPayload:isCompact:rowCount:columnCount:"

-- | @Selector@ for @descriptorWithPayload:isCompact:rowCount:columnCount:@
descriptorWithPayload_isCompact_rowCount_columnCountSelector :: Selector '[Id NSData, Bool, CLong, CLong] (Id CIPDF417CodeDescriptor)
descriptorWithPayload_isCompact_rowCount_columnCountSelector = mkSelector "descriptorWithPayload:isCompact:rowCount:columnCount:"

-- | @Selector@ for @errorCorrectedPayload@
errorCorrectedPayloadSelector :: Selector '[] (Id NSData)
errorCorrectedPayloadSelector = mkSelector "errorCorrectedPayload"

-- | @Selector@ for @isCompact@
isCompactSelector :: Selector '[] Bool
isCompactSelector = mkSelector "isCompact"

-- | @Selector@ for @rowCount@
rowCountSelector :: Selector '[] CLong
rowCountSelector = mkSelector "rowCount"

-- | @Selector@ for @columnCount@
columnCountSelector :: Selector '[] CLong
columnCountSelector = mkSelector "columnCount"

