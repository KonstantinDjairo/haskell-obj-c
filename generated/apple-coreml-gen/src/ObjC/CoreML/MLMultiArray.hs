{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Multidimensional Array
--
-- Generated bindings for @MLMultiArray@.
module ObjC.CoreML.MLMultiArray
  ( MLMultiArray
  , IsMLMultiArray(..)
  , objectAtIndexedSubscript
  , objectForKeyedSubscript
  , setObject_atIndexedSubscript
  , setObject_forKeyedSubscript
  , multiArrayByConcatenatingMultiArrays_alongAxis_dataType
  , getBytesWithHandler
  , initWithShape_dataType_error
  , initWithDataPointer_shape_dataType_strides_deallocator_error
  , initWithPixelBuffer_shape
  , dataPointer
  , dataType
  , shape
  , strides
  , count
  , pixelBuffer
  , countSelector
  , dataPointerSelector
  , dataTypeSelector
  , getBytesWithHandlerSelector
  , initWithDataPointer_shape_dataType_strides_deallocator_errorSelector
  , initWithPixelBuffer_shapeSelector
  , initWithShape_dataType_errorSelector
  , multiArrayByConcatenatingMultiArrays_alongAxis_dataTypeSelector
  , objectAtIndexedSubscriptSelector
  , objectForKeyedSubscriptSelector
  , pixelBufferSelector
  , setObject_atIndexedSubscriptSelector
  , setObject_forKeyedSubscriptSelector
  , shapeSelector
  , stridesSelector

  -- * Enum types
  , MLMultiArrayDataType(MLMultiArrayDataType)
  , pattern MLMultiArrayDataTypeDouble
  , pattern MLMultiArrayDataTypeFloat64
  , pattern MLMultiArrayDataTypeFloat32
  , pattern MLMultiArrayDataTypeFloat16
  , pattern MLMultiArrayDataTypeFloat
  , pattern MLMultiArrayDataTypeInt32

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreML.Internal.Classes
import ObjC.CoreML.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | Get a value by its linear index (assumes C-style index ordering)
--
-- ObjC selector: @- objectAtIndexedSubscript:@
objectAtIndexedSubscript :: IsMLMultiArray mlMultiArray => mlMultiArray -> CLong -> IO (Id NSNumber)
objectAtIndexedSubscript mlMultiArray idx =
  sendMessage mlMultiArray objectAtIndexedSubscriptSelector idx

-- | Get a value by its multidimensional index (NSArray<NSNumber *>)
--
-- ObjC selector: @- objectForKeyedSubscript:@
objectForKeyedSubscript :: (IsMLMultiArray mlMultiArray, IsNSArray key) => mlMultiArray -> key -> IO (Id NSNumber)
objectForKeyedSubscript mlMultiArray key =
  sendMessage mlMultiArray objectForKeyedSubscriptSelector (toNSArray key)

-- | Set a value by its linear index (assumes C-style index ordering)
--
-- ObjC selector: @- setObject:atIndexedSubscript:@
setObject_atIndexedSubscript :: (IsMLMultiArray mlMultiArray, IsNSNumber obj_) => mlMultiArray -> obj_ -> CLong -> IO ()
setObject_atIndexedSubscript mlMultiArray obj_ idx =
  sendMessage mlMultiArray setObject_atIndexedSubscriptSelector (toNSNumber obj_) idx

-- | Set a value by subindicies (NSArray<NSNumber *>)
--
-- ObjC selector: @- setObject:forKeyedSubscript:@
setObject_forKeyedSubscript :: (IsMLMultiArray mlMultiArray, IsNSNumber obj_, IsNSArray key) => mlMultiArray -> obj_ -> key -> IO ()
setObject_forKeyedSubscript mlMultiArray obj_ key =
  sendMessage mlMultiArray setObject_forKeyedSubscriptSelector (toNSNumber obj_) (toNSArray key)

-- | Concatenate MLMultiArrays to form a new MLMultiArray.
--
-- All the source MLMultiArrays must have a same shape except the specified axis. The resultant MLMultiArray has the same shape as inputs except this axis, which dimension will be the sum of all the input dimensions of the axis.
--
-- For example,
--
-- // Swift
-- let A = try MLMultiArray(shape: [2, 3], dataType: .int32)
-- let B = try MLMultiArray(shape: [2, 2], dataType: .int32)
-- let C = MLMultiArray(concatenating: [A, B], axis: 1, dataType: .int32)
-- assert(C.shape == [2, 5])
--
-- // Obj-C
-- MLMultiArray *A = [[MLMultiArray alloc] initWithShape:@[@2, @3] dataType:MLMultiArrayDataTypeInt32 error:NULL];
-- MLMultiArray *B = [[MLMultiArray alloc] initWithShape:@[@2, @2] dataType:MLMultiArrayDataTypeInt32 error:NULL];
-- MLMultiArray *C = [MLMultiArray multiArrayByConcatenatingMultiArrays:@[A, B] alongAxis:1 dataType:MLMultiArrayDataTypeInt32];
-- assert(C.shape == @[@2, @5])
--
-- Numeric data will be up or down casted as needed.
--
-- The method raises NSInvalidArgumentException if the shapes of input multi arrays are not compatible for concatenation.
--
-- @multiArrays@ — Array of MLMultiArray instances to be concatenated.
--
-- @axis@ — Axis index with which the concatenation will performed. The value is wrapped by the dimension of the axis. For example, -1 is the last axis.
--
-- @dataType@ — The data type of the resultant MLMultiArray
--
-- ObjC selector: @+ multiArrayByConcatenatingMultiArrays:alongAxis:dataType:@
multiArrayByConcatenatingMultiArrays_alongAxis_dataType :: IsNSArray multiArrays => multiArrays -> CLong -> MLMultiArrayDataType -> IO (Id MLMultiArray)
multiArrayByConcatenatingMultiArrays_alongAxis_dataType multiArrays axis dataType =
  do
    cls' <- getRequiredClass "MLMultiArray"
    sendClassMessage cls' multiArrayByConcatenatingMultiArrays_alongAxis_dataTypeSelector (toNSArray multiArrays) axis dataType

-- | Get the underlying buffer pointer to read.
--
-- The buffer pointer is valid only within the block.
--
-- MLMultiArray * A = [[MLMultiArray alloc] initWithShape:@[@3, @2] dataType:MLMultiArrayDataTypeInt32 error:NULL];
-- A[@[@1, @2]] = @42;
-- [A getBytesWithHandler:^(const void *bytes, NSInteger size) {
-- const int32_t *scalarBuffer = (const int32_t *)bytes;
-- const int strideY = A.strides[0].intValue;
-- // Print 42
-- NSLog(@"Scalar at (1, 2): %d", scalarBuffer[1 * strideY + 2]);
-- }];
--
-- @handler@ — The block to receive the buffer pointer and its size in bytes.
--
-- ObjC selector: @- getBytesWithHandler:@
getBytesWithHandler :: IsMLMultiArray mlMultiArray => mlMultiArray -> Ptr () -> IO ()
getBytesWithHandler mlMultiArray handler =
  sendMessage mlMultiArray getBytesWithHandlerSelector handler

-- | Create by C-style contiguous array by allocating and managing the necessary memory
--
-- ObjC selector: @- initWithShape:dataType:error:@
initWithShape_dataType_error :: (IsMLMultiArray mlMultiArray, IsNSArray shape, IsNSError error_) => mlMultiArray -> shape -> MLMultiArrayDataType -> error_ -> IO (Id MLMultiArray)
initWithShape_dataType_error mlMultiArray shape dataType error_ =
  sendOwnedMessage mlMultiArray initWithShape_dataType_errorSelector (toNSArray shape) dataType (toNSError error_)

-- | Create by wrapping existing data
--
-- ObjC selector: @- initWithDataPointer:shape:dataType:strides:deallocator:error:@
initWithDataPointer_shape_dataType_strides_deallocator_error :: (IsMLMultiArray mlMultiArray, IsNSArray shape, IsNSArray strides, IsNSError error_) => mlMultiArray -> Ptr () -> shape -> MLMultiArrayDataType -> strides -> Ptr () -> error_ -> IO (Id MLMultiArray)
initWithDataPointer_shape_dataType_strides_deallocator_error mlMultiArray dataPointer shape dataType strides deallocator error_ =
  sendOwnedMessage mlMultiArray initWithDataPointer_shape_dataType_strides_deallocator_errorSelector dataPointer (toNSArray shape) dataType (toNSArray strides) deallocator (toNSError error_)

-- | Create by wrapping a pixel buffer.
--
-- Use this initializer to create IOSurface backed MLMultiArray, which can reduce the inference latency by avoiding the buffer copy.
--
-- The instance will own the pixel buffer and release it on the deallocation.
--
-- The pixel buffer's pixel format type must be OneComponent16Half. As such, MLMultiArray's data type will be MLMultiArrayDataTypeFloat16.
--
-- CVPixelBufferRef pixelBuffer = NULL;
-- NSDictionary* pixelBufferAttributes = @{
-- (id)kCVPixelBufferIOSurfacePropertiesKey: @{}
-- };
--
-- // Since shape == [2, 3, 4], width is 4 (= shape[2]) and height is 6 (= shape[0] * shape[1]).
-- CVPixelBufferCreate(kCFAllocatorDefault, 4, 6, kCVPixelFormatType_OneComponent16Half, (__bridge CFDictionaryRef)pixelBufferAttributes, &pixelBuffer);
-- MLMultiArray *multiArray = [[MLMultiArray alloc] initWithPixelBuffer:pixelBuffer shape:@[@2, @3, @4]];
--
-- @pixelBuffer@ — The pixel buffer to be owned by the instance.
--
-- @shape@ — The shape of the MLMultiArray. The last dimension of @shape@ must match the pixel buffer's width. The product of the rest of the dimensions must match the height.
--
-- ObjC selector: @- initWithPixelBuffer:shape:@
initWithPixelBuffer_shape :: (IsMLMultiArray mlMultiArray, IsNSArray shape) => mlMultiArray -> Ptr () -> shape -> IO (Id MLMultiArray)
initWithPixelBuffer_shape mlMultiArray pixelBuffer shape =
  sendOwnedMessage mlMultiArray initWithPixelBuffer_shapeSelector pixelBuffer (toNSArray shape)

-- | Unsafe pointer to underlying buffer holding the data
--
-- ObjC selector: @- dataPointer@
dataPointer :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO (Ptr ())
dataPointer mlMultiArray =
  sendMessage mlMultiArray dataPointerSelector

-- | Type of element held
--
-- ObjC selector: @- dataType@
dataType :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO MLMultiArrayDataType
dataType mlMultiArray =
  sendMessage mlMultiArray dataTypeSelector

-- | An array containing the sizes of each dimension in the multiarray
--
-- ObjC selector: @- shape@
shape :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO (Id NSArray)
shape mlMultiArray =
  sendMessage mlMultiArray shapeSelector

-- | An array containing the stride in memory for each dimension. The element referred to by a multidimensional index is located at an offset equal to sum_d index[d]*strides[d]. This offset is in the units of the specified dataType.
--
-- ObjC selector: @- strides@
strides :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO (Id NSArray)
strides mlMultiArray =
  sendMessage mlMultiArray stridesSelector

-- | Count of total number of elements
--
-- ObjC selector: @- count@
count :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO CLong
count mlMultiArray =
  sendMessage mlMultiArray countSelector

-- | Returns the backing pixel buffer if exists, otherwise nil.
--
-- ObjC selector: @- pixelBuffer@
pixelBuffer :: IsMLMultiArray mlMultiArray => mlMultiArray -> IO (Ptr ())
pixelBuffer mlMultiArray =
  sendMessage mlMultiArray pixelBufferSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @objectAtIndexedSubscript:@
objectAtIndexedSubscriptSelector :: Selector '[CLong] (Id NSNumber)
objectAtIndexedSubscriptSelector = mkSelector "objectAtIndexedSubscript:"

-- | @Selector@ for @objectForKeyedSubscript:@
objectForKeyedSubscriptSelector :: Selector '[Id NSArray] (Id NSNumber)
objectForKeyedSubscriptSelector = mkSelector "objectForKeyedSubscript:"

-- | @Selector@ for @setObject:atIndexedSubscript:@
setObject_atIndexedSubscriptSelector :: Selector '[Id NSNumber, CLong] ()
setObject_atIndexedSubscriptSelector = mkSelector "setObject:atIndexedSubscript:"

-- | @Selector@ for @setObject:forKeyedSubscript:@
setObject_forKeyedSubscriptSelector :: Selector '[Id NSNumber, Id NSArray] ()
setObject_forKeyedSubscriptSelector = mkSelector "setObject:forKeyedSubscript:"

-- | @Selector@ for @multiArrayByConcatenatingMultiArrays:alongAxis:dataType:@
multiArrayByConcatenatingMultiArrays_alongAxis_dataTypeSelector :: Selector '[Id NSArray, CLong, MLMultiArrayDataType] (Id MLMultiArray)
multiArrayByConcatenatingMultiArrays_alongAxis_dataTypeSelector = mkSelector "multiArrayByConcatenatingMultiArrays:alongAxis:dataType:"

-- | @Selector@ for @getBytesWithHandler:@
getBytesWithHandlerSelector :: Selector '[Ptr ()] ()
getBytesWithHandlerSelector = mkSelector "getBytesWithHandler:"

-- | @Selector@ for @initWithShape:dataType:error:@
initWithShape_dataType_errorSelector :: Selector '[Id NSArray, MLMultiArrayDataType, Id NSError] (Id MLMultiArray)
initWithShape_dataType_errorSelector = mkSelector "initWithShape:dataType:error:"

-- | @Selector@ for @initWithDataPointer:shape:dataType:strides:deallocator:error:@
initWithDataPointer_shape_dataType_strides_deallocator_errorSelector :: Selector '[Ptr (), Id NSArray, MLMultiArrayDataType, Id NSArray, Ptr (), Id NSError] (Id MLMultiArray)
initWithDataPointer_shape_dataType_strides_deallocator_errorSelector = mkSelector "initWithDataPointer:shape:dataType:strides:deallocator:error:"

-- | @Selector@ for @initWithPixelBuffer:shape:@
initWithPixelBuffer_shapeSelector :: Selector '[Ptr (), Id NSArray] (Id MLMultiArray)
initWithPixelBuffer_shapeSelector = mkSelector "initWithPixelBuffer:shape:"

-- | @Selector@ for @dataPointer@
dataPointerSelector :: Selector '[] (Ptr ())
dataPointerSelector = mkSelector "dataPointer"

-- | @Selector@ for @dataType@
dataTypeSelector :: Selector '[] MLMultiArrayDataType
dataTypeSelector = mkSelector "dataType"

-- | @Selector@ for @shape@
shapeSelector :: Selector '[] (Id NSArray)
shapeSelector = mkSelector "shape"

-- | @Selector@ for @strides@
stridesSelector :: Selector '[] (Id NSArray)
stridesSelector = mkSelector "strides"

-- | @Selector@ for @count@
countSelector :: Selector '[] CLong
countSelector = mkSelector "count"

-- | @Selector@ for @pixelBuffer@
pixelBufferSelector :: Selector '[] (Ptr ())
pixelBufferSelector = mkSelector "pixelBuffer"

