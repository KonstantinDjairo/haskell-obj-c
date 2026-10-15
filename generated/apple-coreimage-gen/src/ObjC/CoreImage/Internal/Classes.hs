{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MultiParamTypeClasses #-}

-- | Internal module: all type tags, aliases, type classes, and
-- hierarchy instances for this framework.
--
-- Exists to break import cycles between per-class modules.
-- Import the per-class modules for the public API.
module ObjC.CoreImage.Internal.Classes (
    module ObjC.CoreImage.Internal.Classes,
    module ObjC.Foundation.Internal.Classes,
    module ObjC.IOSurface.Internal.Classes,
  ) where

import Data.Proxy (Proxy(..))
import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass)
import ObjC.Foundation.Internal.Classes
import ObjC.IOSurface.Internal.Classes

-- ---------- CIBarcodeDescriptor ----------

-- | CIBarcodeDescriptor
--
-- CIBarcodeDescriptor is an abstract base class that defines an abstract representation of a machine readable code's symbol attributes.
--
-- Each subclass is sufficient to recreate the symbol exactly as seen or to be used with a custom parser. Subclasses of CIBarcodeDescriptor are defined for each code type to contain the formal specification of each symbology.
-- 
-- Phantom type for @CIBarcodeDescriptor@.
data CIBarcodeDescriptor

instance IsObjCObject (Id CIBarcodeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIBarcodeDescriptor"

class IsNSObject a => IsCIBarcodeDescriptor a where
  toCIBarcodeDescriptor :: a -> Id CIBarcodeDescriptor

instance IsCIBarcodeDescriptor (Id CIBarcodeDescriptor) where
  toCIBarcodeDescriptor = unsafeCastId

instance IsNSObject (Id CIBarcodeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- CIColor ----------

-- | Phantom type for @CIColor@.
data CIColor

instance IsObjCObject (Id CIColor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIColor"

class IsNSObject a => IsCIColor a where
  toCIColor :: a -> Id CIColor

instance IsCIColor (Id CIColor) where
  toCIColor = unsafeCastId

instance IsNSObject (Id CIColor) where
  toNSObject = unsafeCastId

-- ---------- CIContext ----------

-- | Phantom type for @CIContext@.
data CIContext

instance IsObjCObject (Id CIContext) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIContext"

class IsNSObject a => IsCIContext a where
  toCIContext :: a -> Id CIContext

instance IsCIContext (Id CIContext) where
  toCIContext = unsafeCastId

instance IsNSObject (Id CIContext) where
  toNSObject = unsafeCastId

-- ---------- CIDetector ----------

-- | Detects features in images.
--
-- This class potentially holds onto a lot of state. Hence it may be beneficial from a performance perspective to re-use the same CIDetector instance. Specifying a CIContext when creating a detector may have an impact on performance since this context may be used when analyzing an image.
-- 
-- Phantom type for @CIDetector@.
data CIDetector

instance IsObjCObject (Id CIDetector) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIDetector"

class IsNSObject a => IsCIDetector a where
  toCIDetector :: a -> Id CIDetector

instance IsCIDetector (Id CIDetector) where
  toCIDetector = unsafeCastId

instance IsNSObject (Id CIDetector) where
  toNSObject = unsafeCastId

-- ---------- CIFeature ----------

-- | Generic feature found by a CIDetector.
-- 
-- Phantom type for @CIFeature@.
data CIFeature

instance IsObjCObject (Id CIFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIFeature"

class IsNSObject a => IsCIFeature a where
  toCIFeature :: a -> Id CIFeature

instance IsCIFeature (Id CIFeature) where
  toCIFeature = unsafeCastId

instance IsNSObject (Id CIFeature) where
  toNSObject = unsafeCastId

-- ---------- CIFilter ----------

-- | CIFilter are filter objects for Core Image that encapsulate the filter with its attributes
--
-- The CIFilter class produces a CIImage object as output. Typically, a filter takes one or more images as input. Some filters, however, generate an image based on other types of input parameters. The parameters of a CIFilter object are set and retrieved through the use of key-value pairs. You use the CIFilter object in conjunction with the CIImage, CIContext, CIVector, CIImageAccumulator, and CIColor objects to take advantage of the built-in Core Image filters when processing images. CIFilter objects are also used along with CIKernel, CISampler, and CIFilterShape objects to create custom filters.
-- 
-- Phantom type for @CIFilter@.
data CIFilter

instance IsObjCObject (Id CIFilter) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIFilter"

class IsNSObject a => IsCIFilter a where
  toCIFilter :: a -> Id CIFilter

instance IsCIFilter (Id CIFilter) where
  toCIFilter = unsafeCastId

instance IsNSObject (Id CIFilter) where
  toNSObject = unsafeCastId

-- ---------- CIFilterGenerator ----------

-- | The goal is to CIFilters to be connected and form a single CIFilter for ease of reusability.
--
-- The CIFilterGenerator allows developers to create complex effects built out of one or more CIFilter and reuse them without changing code. The resulting CIFilterGenerator can be written into a file for which we introduce a new file type (extension). A CIFilterGenerator can be created from the API or more conveniently through an editor view that we provide. CIFilterGenerator files can be put into the Image Units folders on the system and they will be loaded when the user invokes one of the loadPlugIns methods. They will be registered by their filename or if present by an attribute in its description.
-- 
-- Phantom type for @CIFilterGenerator@.
data CIFilterGenerator

instance IsObjCObject (Id CIFilterGenerator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIFilterGenerator"

class IsNSObject a => IsCIFilterGenerator a where
  toCIFilterGenerator :: a -> Id CIFilterGenerator

instance IsCIFilterGenerator (Id CIFilterGenerator) where
  toCIFilterGenerator = unsafeCastId

instance IsNSObject (Id CIFilterGenerator) where
  toNSObject = unsafeCastId

-- ---------- CIFilterShape ----------

-- | Phantom type for @CIFilterShape@.
data CIFilterShape

instance IsObjCObject (Id CIFilterShape) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIFilterShape"

class IsNSObject a => IsCIFilterShape a where
  toCIFilterShape :: a -> Id CIFilterShape

instance IsCIFilterShape (Id CIFilterShape) where
  toCIFilterShape = unsafeCastId

instance IsNSObject (Id CIFilterShape) where
  toNSObject = unsafeCastId

-- ---------- CIImage ----------

-- | Phantom type for @CIImage@.
data CIImage

instance IsObjCObject (Id CIImage) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIImage"

class IsNSObject a => IsCIImage a where
  toCIImage :: a -> Id CIImage

instance IsCIImage (Id CIImage) where
  toCIImage = unsafeCastId

instance IsNSObject (Id CIImage) where
  toNSObject = unsafeCastId

-- ---------- CIImageAccumulator ----------

-- | Phantom type for @CIImageAccumulator@.
data CIImageAccumulator

instance IsObjCObject (Id CIImageAccumulator) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIImageAccumulator"

class IsNSObject a => IsCIImageAccumulator a where
  toCIImageAccumulator :: a -> Id CIImageAccumulator

instance IsCIImageAccumulator (Id CIImageAccumulator) where
  toCIImageAccumulator = unsafeCastId

instance IsNSObject (Id CIImageAccumulator) where
  toNSObject = unsafeCastId

-- ---------- CIImageProcessorKernel ----------

-- | Phantom type for @CIImageProcessorKernel@.
data CIImageProcessorKernel

instance IsObjCObject (Id CIImageProcessorKernel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIImageProcessorKernel"

class IsNSObject a => IsCIImageProcessorKernel a where
  toCIImageProcessorKernel :: a -> Id CIImageProcessorKernel

instance IsCIImageProcessorKernel (Id CIImageProcessorKernel) where
  toCIImageProcessorKernel = unsafeCastId

instance IsNSObject (Id CIImageProcessorKernel) where
  toNSObject = unsafeCastId

-- ---------- CIKernel ----------

-- | Phantom type for @CIKernel@.
data CIKernel

instance IsObjCObject (Id CIKernel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIKernel"

class IsNSObject a => IsCIKernel a where
  toCIKernel :: a -> Id CIKernel

instance IsCIKernel (Id CIKernel) where
  toCIKernel = unsafeCastId

instance IsNSObject (Id CIKernel) where
  toNSObject = unsafeCastId

-- ---------- CIPlugIn ----------

-- | The CIPlugIn class is responsible for loading Image Units.
--
-- The implementation of the CIPlugIn objects is private. An application can, however, call the 2 public class method to load plug-ins.
--
-- Loading executable CIFilter plugins is deprecated starting in macOS 10.15.
-- 
-- Phantom type for @CIPlugIn@.
data CIPlugIn

instance IsObjCObject (Id CIPlugIn) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIPlugIn"

class IsNSObject a => IsCIPlugIn a where
  toCIPlugIn :: a -> Id CIPlugIn

instance IsCIPlugIn (Id CIPlugIn) where
  toCIPlugIn = unsafeCastId

instance IsNSObject (Id CIPlugIn) where
  toNSObject = unsafeCastId

-- ---------- CIRenderDestination ----------

-- | Phantom type for @CIRenderDestination@.
data CIRenderDestination

instance IsObjCObject (Id CIRenderDestination) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIRenderDestination"

class IsNSObject a => IsCIRenderDestination a where
  toCIRenderDestination :: a -> Id CIRenderDestination

instance IsCIRenderDestination (Id CIRenderDestination) where
  toCIRenderDestination = unsafeCastId

instance IsNSObject (Id CIRenderDestination) where
  toNSObject = unsafeCastId

-- ---------- CIRenderInfo ----------

-- | Phantom type for @CIRenderInfo@.
data CIRenderInfo

instance IsObjCObject (Id CIRenderInfo) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIRenderInfo"

class IsNSObject a => IsCIRenderInfo a where
  toCIRenderInfo :: a -> Id CIRenderInfo

instance IsCIRenderInfo (Id CIRenderInfo) where
  toCIRenderInfo = unsafeCastId

instance IsNSObject (Id CIRenderInfo) where
  toNSObject = unsafeCastId

-- ---------- CIRenderTask ----------

-- | Phantom type for @CIRenderTask@.
data CIRenderTask

instance IsObjCObject (Id CIRenderTask) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIRenderTask"

class IsNSObject a => IsCIRenderTask a where
  toCIRenderTask :: a -> Id CIRenderTask

instance IsCIRenderTask (Id CIRenderTask) where
  toCIRenderTask = unsafeCastId

instance IsNSObject (Id CIRenderTask) where
  toNSObject = unsafeCastId

-- ---------- CISampler ----------

-- | Phantom type for @CISampler@.
data CISampler

instance IsObjCObject (Id CISampler) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CISampler"

class IsNSObject a => IsCISampler a where
  toCISampler :: a -> Id CISampler

instance IsCISampler (Id CISampler) where
  toCISampler = unsafeCastId

instance IsNSObject (Id CISampler) where
  toNSObject = unsafeCastId

-- ---------- CIVector ----------

-- | Phantom type for @CIVector@.
data CIVector

instance IsObjCObject (Id CIVector) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIVector"

class IsNSObject a => IsCIVector a where
  toCIVector :: a -> Id CIVector

instance IsCIVector (Id CIVector) where
  toCIVector = unsafeCastId

instance IsNSObject (Id CIVector) where
  toNSObject = unsafeCastId

-- ---------- CIAztecCodeDescriptor ----------

-- | CIAztecCodeDescriptor
--
-- CIAztecCodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of an Aztec Code symbol.
--
-- CIAztecCodeDescriptor may not be instantiated directly.
-- 
-- Phantom type for @CIAztecCodeDescriptor@.
data CIAztecCodeDescriptor

instance IsObjCObject (Id CIAztecCodeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIAztecCodeDescriptor"

class IsCIBarcodeDescriptor a => IsCIAztecCodeDescriptor a where
  toCIAztecCodeDescriptor :: a -> Id CIAztecCodeDescriptor

instance IsCIAztecCodeDescriptor (Id CIAztecCodeDescriptor) where
  toCIAztecCodeDescriptor = unsafeCastId

instance IsCIBarcodeDescriptor (Id CIAztecCodeDescriptor) where
  toCIBarcodeDescriptor = unsafeCastId

instance IsNSObject (Id CIAztecCodeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- CIDataMatrixCodeDescriptor ----------

-- | CIDataMatrixCodeDescriptor
--
-- CIDataMatrixCodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a Data Matrix code symbol.
-- 
-- Phantom type for @CIDataMatrixCodeDescriptor@.
data CIDataMatrixCodeDescriptor

instance IsObjCObject (Id CIDataMatrixCodeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIDataMatrixCodeDescriptor"

class IsCIBarcodeDescriptor a => IsCIDataMatrixCodeDescriptor a where
  toCIDataMatrixCodeDescriptor :: a -> Id CIDataMatrixCodeDescriptor

instance IsCIDataMatrixCodeDescriptor (Id CIDataMatrixCodeDescriptor) where
  toCIDataMatrixCodeDescriptor = unsafeCastId

instance IsCIBarcodeDescriptor (Id CIDataMatrixCodeDescriptor) where
  toCIBarcodeDescriptor = unsafeCastId

instance IsNSObject (Id CIDataMatrixCodeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- CIPDF417CodeDescriptor ----------

-- | CIPDF417CodeDescriptor
--
-- CIPDF417CodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a PDF417 code symbol.
--
-- Refer to the ISO/IEC 15438:2006(E) for the PDF417 symbol specification.
-- 
-- Phantom type for @CIPDF417CodeDescriptor@.
data CIPDF417CodeDescriptor

instance IsObjCObject (Id CIPDF417CodeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIPDF417CodeDescriptor"

class IsCIBarcodeDescriptor a => IsCIPDF417CodeDescriptor a where
  toCIPDF417CodeDescriptor :: a -> Id CIPDF417CodeDescriptor

instance IsCIPDF417CodeDescriptor (Id CIPDF417CodeDescriptor) where
  toCIPDF417CodeDescriptor = unsafeCastId

instance IsCIBarcodeDescriptor (Id CIPDF417CodeDescriptor) where
  toCIBarcodeDescriptor = unsafeCastId

instance IsNSObject (Id CIPDF417CodeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- CIQRCodeDescriptor ----------

-- | CIQRCodeDescriptor
--
-- CIQRCodeDescriptor is a concrete subclass of CIBarcodeDescriptor that defines an abstract representation of a QR code symbol.
-- 
-- Phantom type for @CIQRCodeDescriptor@.
data CIQRCodeDescriptor

instance IsObjCObject (Id CIQRCodeDescriptor) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIQRCodeDescriptor"

class IsCIBarcodeDescriptor a => IsCIQRCodeDescriptor a where
  toCIQRCodeDescriptor :: a -> Id CIQRCodeDescriptor

instance IsCIQRCodeDescriptor (Id CIQRCodeDescriptor) where
  toCIQRCodeDescriptor = unsafeCastId

instance IsCIBarcodeDescriptor (Id CIQRCodeDescriptor) where
  toCIBarcodeDescriptor = unsafeCastId

instance IsNSObject (Id CIQRCodeDescriptor) where
  toNSObject = unsafeCastId

-- ---------- CIFaceFeature ----------

-- | A face feature found by a CIDetector. All positions are relative to the original image.
-- 
-- Phantom type for @CIFaceFeature@.
data CIFaceFeature

instance IsObjCObject (Id CIFaceFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIFaceFeature"

class IsCIFeature a => IsCIFaceFeature a where
  toCIFaceFeature :: a -> Id CIFaceFeature

instance IsCIFaceFeature (Id CIFaceFeature) where
  toCIFaceFeature = unsafeCastId

instance IsCIFeature (Id CIFaceFeature) where
  toCIFeature = unsafeCastId

instance IsNSObject (Id CIFaceFeature) where
  toNSObject = unsafeCastId

-- ---------- CIQRCodeFeature ----------

-- | Phantom type for @CIQRCodeFeature@.
data CIQRCodeFeature

instance IsObjCObject (Id CIQRCodeFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIQRCodeFeature"

class IsCIFeature a => IsCIQRCodeFeature a where
  toCIQRCodeFeature :: a -> Id CIQRCodeFeature

instance IsCIQRCodeFeature (Id CIQRCodeFeature) where
  toCIQRCodeFeature = unsafeCastId

instance IsCIFeature (Id CIQRCodeFeature) where
  toCIFeature = unsafeCastId

instance IsNSObject (Id CIQRCodeFeature) where
  toNSObject = unsafeCastId

-- ---------- CIRectangleFeature ----------

-- | A rectangle feature found by a CIDetector All positions are relative to the original image.
-- 
-- Phantom type for @CIRectangleFeature@.
data CIRectangleFeature

instance IsObjCObject (Id CIRectangleFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIRectangleFeature"

class IsCIFeature a => IsCIRectangleFeature a where
  toCIRectangleFeature :: a -> Id CIRectangleFeature

instance IsCIRectangleFeature (Id CIRectangleFeature) where
  toCIRectangleFeature = unsafeCastId

instance IsCIFeature (Id CIRectangleFeature) where
  toCIFeature = unsafeCastId

instance IsNSObject (Id CIRectangleFeature) where
  toNSObject = unsafeCastId

-- ---------- CITextFeature ----------

-- | Phantom type for @CITextFeature@.
data CITextFeature

instance IsObjCObject (Id CITextFeature) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CITextFeature"

class IsCIFeature a => IsCITextFeature a where
  toCITextFeature :: a -> Id CITextFeature

instance IsCITextFeature (Id CITextFeature) where
  toCITextFeature = unsafeCastId

instance IsCIFeature (Id CITextFeature) where
  toCIFeature = unsafeCastId

instance IsNSObject (Id CITextFeature) where
  toNSObject = unsafeCastId

-- ---------- CIRAWFilter ----------

-- | Phantom type for @CIRAWFilter@.
data CIRAWFilter

instance IsObjCObject (Id CIRAWFilter) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIRAWFilter"

class IsCIFilter a => IsCIRAWFilter a where
  toCIRAWFilter :: a -> Id CIRAWFilter

instance IsCIRAWFilter (Id CIRAWFilter) where
  toCIRAWFilter = unsafeCastId

instance IsCIFilter (Id CIRAWFilter) where
  toCIFilter = unsafeCastId

instance IsNSObject (Id CIRAWFilter) where
  toNSObject = unsafeCastId

-- ---------- CIColorKernel ----------

-- | Phantom type for @CIColorKernel@.
data CIColorKernel

instance IsObjCObject (Id CIColorKernel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIColorKernel"

class IsCIKernel a => IsCIColorKernel a where
  toCIColorKernel :: a -> Id CIColorKernel

instance IsCIColorKernel (Id CIColorKernel) where
  toCIColorKernel = unsafeCastId

instance IsCIKernel (Id CIColorKernel) where
  toCIKernel = unsafeCastId

instance IsNSObject (Id CIColorKernel) where
  toNSObject = unsafeCastId

-- ---------- CIWarpKernel ----------

-- | Phantom type for @CIWarpKernel@.
data CIWarpKernel

instance IsObjCObject (Id CIWarpKernel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIWarpKernel"

class IsCIKernel a => IsCIWarpKernel a where
  toCIWarpKernel :: a -> Id CIWarpKernel

instance IsCIWarpKernel (Id CIWarpKernel) where
  toCIWarpKernel = unsafeCastId

instance IsCIKernel (Id CIWarpKernel) where
  toCIKernel = unsafeCastId

instance IsNSObject (Id CIWarpKernel) where
  toNSObject = unsafeCastId

-- ---------- CIBlendKernel ----------

-- | Phantom type for @CIBlendKernel@.
data CIBlendKernel

instance IsObjCObject (Id CIBlendKernel) where
  toRawId = idToRawId
  withObjCPtr = withIdObjCPtr
  staticClass _ = getRequiredClass "CIBlendKernel"

class IsCIColorKernel a => IsCIBlendKernel a where
  toCIBlendKernel :: a -> Id CIBlendKernel

instance IsCIBlendKernel (Id CIBlendKernel) where
  toCIBlendKernel = unsafeCastId

instance IsCIColorKernel (Id CIBlendKernel) where
  toCIColorKernel = unsafeCastId

instance IsCIKernel (Id CIBlendKernel) where
  toCIKernel = unsafeCastId

instance IsNSObject (Id CIBlendKernel) where
  toNSObject = unsafeCastId
