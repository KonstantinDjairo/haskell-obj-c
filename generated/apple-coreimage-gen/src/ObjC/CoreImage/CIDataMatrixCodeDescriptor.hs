{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CIDataMatrixCodeDescriptor
--
-- CIDataMatrixCodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a Data Matrix code symbol.
--
-- Generated bindings for @CIDataMatrixCodeDescriptor@.
module ObjC.CoreImage.CIDataMatrixCodeDescriptor
  ( CIDataMatrixCodeDescriptor
  , IsCIDataMatrixCodeDescriptor(..)
  , initWithPayload_rowCount_columnCount_eccVersion
  , descriptorWithPayload_rowCount_columnCount_eccVersion
  , errorCorrectedPayload
  , rowCount
  , columnCount
  , eccVersion
  , columnCountSelector
  , descriptorWithPayload_rowCount_columnCount_eccVersionSelector
  , eccVersionSelector
  , errorCorrectedPayloadSelector
  , initWithPayload_rowCount_columnCount_eccVersionSelector
  , rowCountSelector

  -- * Enum types
  , CIDataMatrixCodeECCVersion(CIDataMatrixCodeECCVersion)
  , pattern CIDataMatrixCodeECCVersion000
  , pattern CIDataMatrixCodeECCVersion050
  , pattern CIDataMatrixCodeECCVersion080
  , pattern CIDataMatrixCodeECCVersion100
  , pattern CIDataMatrixCodeECCVersion140
  , pattern CIDataMatrixCodeECCVersion200

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

-- | @- initWithPayload:rowCount:columnCount:eccVersion:@
initWithPayload_rowCount_columnCount_eccVersion :: (IsCIDataMatrixCodeDescriptor ciDataMatrixCodeDescriptor, IsNSData errorCorrectedPayload) => ciDataMatrixCodeDescriptor -> errorCorrectedPayload -> CLong -> CLong -> CIDataMatrixCodeECCVersion -> IO (Id CIDataMatrixCodeDescriptor)
initWithPayload_rowCount_columnCount_eccVersion ciDataMatrixCodeDescriptor errorCorrectedPayload rowCount columnCount eccVersion =
  sendOwnedMessage ciDataMatrixCodeDescriptor initWithPayload_rowCount_columnCount_eccVersionSelector (toNSData errorCorrectedPayload) rowCount columnCount eccVersion

-- | @+ descriptorWithPayload:rowCount:columnCount:eccVersion:@
descriptorWithPayload_rowCount_columnCount_eccVersion :: IsNSData errorCorrectedPayload => errorCorrectedPayload -> CLong -> CLong -> CIDataMatrixCodeECCVersion -> IO (Id CIDataMatrixCodeDescriptor)
descriptorWithPayload_rowCount_columnCount_eccVersion errorCorrectedPayload rowCount columnCount eccVersion =
  do
    cls' <- getRequiredClass "CIDataMatrixCodeDescriptor"
    sendClassMessage cls' descriptorWithPayload_rowCount_columnCount_eccVersionSelector (toNSData errorCorrectedPayload) rowCount columnCount eccVersion

-- | errorCorrectedPayload
--
-- The error corrected payload that comprise the Data Matrix code symbol.
--
-- DataMatrix symbols are specified bn ISO/IEC 16022:2006(E). ECC 200-type symbols will always have an even number of rows and columns.
--
-- For ECC 200-type symbols, the phases of encoding data into a symbol are described in section 5.1 -- Encode procedure overview. The error corrected payload comprises the de-interleaved bits of the message described at the end of Step 1: Data encodation.
--
-- ObjC selector: @- errorCorrectedPayload@
errorCorrectedPayload :: IsCIDataMatrixCodeDescriptor ciDataMatrixCodeDescriptor => ciDataMatrixCodeDescriptor -> IO (Id NSData)
errorCorrectedPayload ciDataMatrixCodeDescriptor =
  sendMessage ciDataMatrixCodeDescriptor errorCorrectedPayloadSelector

-- | rowCount
--
-- The number of module rows.
--
-- Refer to ISO/IEC 16022:2006(E) for valid module row and column count combinations.
--
-- ObjC selector: @- rowCount@
rowCount :: IsCIDataMatrixCodeDescriptor ciDataMatrixCodeDescriptor => ciDataMatrixCodeDescriptor -> IO CLong
rowCount ciDataMatrixCodeDescriptor =
  sendMessage ciDataMatrixCodeDescriptor rowCountSelector

-- | columnCount
--
-- The number of module columns.
--
-- Refer to ISO/IEC 16022:2006(E) for valid module row and column count combinations.
--
-- ObjC selector: @- columnCount@
columnCount :: IsCIDataMatrixCodeDescriptor ciDataMatrixCodeDescriptor => ciDataMatrixCodeDescriptor -> IO CLong
columnCount ciDataMatrixCodeDescriptor =
  sendMessage ciDataMatrixCodeDescriptor columnCountSelector

-- | eccVersion
--
-- The Data Matrix code ECC version.
--
-- Valid values are 000, 050, 080, 100, 140, and 200. Any symbol with an even number of rows and columns will be ECC 200.
--
-- ObjC selector: @- eccVersion@
eccVersion :: IsCIDataMatrixCodeDescriptor ciDataMatrixCodeDescriptor => ciDataMatrixCodeDescriptor -> IO CIDataMatrixCodeECCVersion
eccVersion ciDataMatrixCodeDescriptor =
  sendMessage ciDataMatrixCodeDescriptor eccVersionSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithPayload:rowCount:columnCount:eccVersion:@
initWithPayload_rowCount_columnCount_eccVersionSelector :: Selector '[Id NSData, CLong, CLong, CIDataMatrixCodeECCVersion] (Id CIDataMatrixCodeDescriptor)
initWithPayload_rowCount_columnCount_eccVersionSelector = mkSelector "initWithPayload:rowCount:columnCount:eccVersion:"

-- | @Selector@ for @descriptorWithPayload:rowCount:columnCount:eccVersion:@
descriptorWithPayload_rowCount_columnCount_eccVersionSelector :: Selector '[Id NSData, CLong, CLong, CIDataMatrixCodeECCVersion] (Id CIDataMatrixCodeDescriptor)
descriptorWithPayload_rowCount_columnCount_eccVersionSelector = mkSelector "descriptorWithPayload:rowCount:columnCount:eccVersion:"

-- | @Selector@ for @errorCorrectedPayload@
errorCorrectedPayloadSelector :: Selector '[] (Id NSData)
errorCorrectedPayloadSelector = mkSelector "errorCorrectedPayload"

-- | @Selector@ for @rowCount@
rowCountSelector :: Selector '[] CLong
rowCountSelector = mkSelector "rowCount"

-- | @Selector@ for @columnCount@
columnCountSelector :: Selector '[] CLong
columnCountSelector = mkSelector "columnCount"

-- | @Selector@ for @eccVersion@
eccVersionSelector :: Selector '[] CIDataMatrixCodeECCVersion
eccVersionSelector = mkSelector "eccVersion"

