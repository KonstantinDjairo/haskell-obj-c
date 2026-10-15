{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CIQRCodeDescriptor
--
-- CIQRCodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a QR code symbol.
--
-- Generated bindings for @CIQRCodeDescriptor@.
module ObjC.CoreImage.CIQRCodeDescriptor
  ( CIQRCodeDescriptor
  , IsCIQRCodeDescriptor(..)
  , initWithPayload_symbolVersion_maskPattern_errorCorrectionLevel
  , descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevel
  , errorCorrectedPayload
  , symbolVersion
  , maskPattern
  , errorCorrectionLevel
  , descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector
  , errorCorrectedPayloadSelector
  , errorCorrectionLevelSelector
  , initWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector
  , maskPatternSelector
  , symbolVersionSelector

  -- * Enum types
  , CIQRCodeErrorCorrectionLevel(CIQRCodeErrorCorrectionLevel)
  , pattern CIQRCodeErrorCorrectionLevelL
  , pattern CIQRCodeErrorCorrectionLevelM
  , pattern CIQRCodeErrorCorrectionLevelQ
  , pattern CIQRCodeErrorCorrectionLevelH

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.CoreImage.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @- initWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:@
initWithPayload_symbolVersion_maskPattern_errorCorrectionLevel :: (IsCIQRCodeDescriptor ciqrCodeDescriptor, IsNSData errorCorrectedPayload) => ciqrCodeDescriptor -> errorCorrectedPayload -> CLong -> CUChar -> CIQRCodeErrorCorrectionLevel -> IO (Id CIQRCodeDescriptor)
initWithPayload_symbolVersion_maskPattern_errorCorrectionLevel ciqrCodeDescriptor errorCorrectedPayload symbolVersion maskPattern errorCorrectionLevel =
  sendOwnedMessage ciqrCodeDescriptor initWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector (toNSData errorCorrectedPayload) symbolVersion maskPattern errorCorrectionLevel

-- | @+ descriptorWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:@
descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevel :: IsNSData errorCorrectedPayload => errorCorrectedPayload -> CLong -> CUChar -> CIQRCodeErrorCorrectionLevel -> IO (Id CIQRCodeDescriptor)
descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevel errorCorrectedPayload symbolVersion maskPattern errorCorrectionLevel =
  do
    cls' <- getRequiredClass "CIQRCodeDescriptor"
    sendClassMessage cls' descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector (toNSData errorCorrectedPayload) symbolVersion maskPattern errorCorrectionLevel

-- | errorCorrectedPayload
--
-- The error-corrected codewords that comprise the QR code symbol.
--
-- QR Codes are formally specified in ISO/IEC 18004:2006(E). Section 6.4.10 "Bitstream to codeword conversion" specifies the set of 8-bit codewords in the symbol immediately prior to splitting the message into blocks and applying error correction.
--
-- During decode, error correction is applied and if successful, the message is re-ordered to the state immediately following "Bitstream to codeword coversion." The errorCorrectedPayload corresponds to this sequence of 8-bit codewords.
--
-- ObjC selector: @- errorCorrectedPayload@
errorCorrectedPayload :: IsCIQRCodeDescriptor ciqrCodeDescriptor => ciqrCodeDescriptor -> IO (Id NSData)
errorCorrectedPayload ciqrCodeDescriptor =
  sendMessage ciqrCodeDescriptor errorCorrectedPayloadSelector

-- | symbolVersion
--
-- The version property corresponds to the size of the QR Code.
--
-- QR Codes are square. ISO/IEC 18004 defines versions from 1 to 40, where a higher symbol version indicates a larger data carrying capacity. This field is required in order to properly interpret the error corrected payload.
--
-- ObjC selector: @- symbolVersion@
symbolVersion :: IsCIQRCodeDescriptor ciqrCodeDescriptor => ciqrCodeDescriptor -> IO CLong
symbolVersion ciqrCodeDescriptor =
  sendMessage ciqrCodeDescriptor symbolVersionSelector

-- | maskPattern
--
-- The data mask pattern for the QR code symbol.
--
-- QR Codes support eight data mask patterns, which are used to avoid large black or large white areas inside the symbol body. Valid values range from 0 to 7.
--
-- ObjC selector: @- maskPattern@
maskPattern :: IsCIQRCodeDescriptor ciqrCodeDescriptor => ciqrCodeDescriptor -> IO CUChar
maskPattern ciqrCodeDescriptor =
  sendMessage ciqrCodeDescriptor maskPatternSelector

-- | errorCorrectionLevel
--
-- The error correction level of the QR code.
--
-- QR Codes support four levels of Reed-Solomon error correction, in increasing error correction capability: L, M, Q, and H.
--
-- ObjC selector: @- errorCorrectionLevel@
errorCorrectionLevel :: IsCIQRCodeDescriptor ciqrCodeDescriptor => ciqrCodeDescriptor -> IO CIQRCodeErrorCorrectionLevel
errorCorrectionLevel ciqrCodeDescriptor =
  sendMessage ciqrCodeDescriptor errorCorrectionLevelSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:@
initWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector :: Selector '[Id NSData, CLong, CUChar, CIQRCodeErrorCorrectionLevel] (Id CIQRCodeDescriptor)
initWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector = mkSelector "initWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:"

-- | @Selector@ for @descriptorWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:@
descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector :: Selector '[Id NSData, CLong, CUChar, CIQRCodeErrorCorrectionLevel] (Id CIQRCodeDescriptor)
descriptorWithPayload_symbolVersion_maskPattern_errorCorrectionLevelSelector = mkSelector "descriptorWithPayload:symbolVersion:maskPattern:errorCorrectionLevel:"

-- | @Selector@ for @errorCorrectedPayload@
errorCorrectedPayloadSelector :: Selector '[] (Id NSData)
errorCorrectedPayloadSelector = mkSelector "errorCorrectedPayload"

-- | @Selector@ for @symbolVersion@
symbolVersionSelector :: Selector '[] CLong
symbolVersionSelector = mkSelector "symbolVersion"

-- | @Selector@ for @maskPattern@
maskPatternSelector :: Selector '[] CUChar
maskPatternSelector = mkSelector "maskPattern"

-- | @Selector@ for @errorCorrectionLevel@
errorCorrectionLevelSelector :: Selector '[] CIQRCodeErrorCorrectionLevel
errorCorrectionLevelSelector = mkSelector "errorCorrectionLevel"

