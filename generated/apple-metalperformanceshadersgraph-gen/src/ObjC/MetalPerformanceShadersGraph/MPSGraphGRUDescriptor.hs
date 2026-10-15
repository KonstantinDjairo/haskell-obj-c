{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphGRUDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphGRUDescriptor
  ( MPSGraphGRUDescriptor
  , IsMPSGraphGRUDescriptor(..)
  , descriptor
  , reverse_
  , setReverse
  , bidirectional
  , setBidirectional
  , training
  , setTraining
  , resetGateFirst
  , setResetGateFirst
  , resetAfter
  , setResetAfter
  , flipZ
  , setFlipZ
  , updateGateActivation
  , setUpdateGateActivation
  , resetGateActivation
  , setResetGateActivation
  , outputGateActivation
  , setOutputGateActivation
  , bidirectionalSelector
  , descriptorSelector
  , flipZSelector
  , outputGateActivationSelector
  , resetAfterSelector
  , resetGateActivationSelector
  , resetGateFirstSelector
  , reverseSelector
  , setBidirectionalSelector
  , setFlipZSelector
  , setOutputGateActivationSelector
  , setResetAfterSelector
  , setResetGateActivationSelector
  , setResetGateFirstSelector
  , setReverseSelector
  , setTrainingSelector
  , setUpdateGateActivationSelector
  , trainingSelector
  , updateGateActivationSelector

  -- * Enum types
  , MPSGraphRNNActivation(MPSGraphRNNActivation)
  , pattern MPSGraphRNNActivationNone
  , pattern MPSGraphRNNActivationRelu
  , pattern MPSGraphRNNActivationTanh
  , pattern MPSGraphRNNActivationSigmoid
  , pattern MPSGraphRNNActivationHardSigmoid

  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MetalPerformanceShadersGraph.Internal.Classes
import ObjC.MetalPerformanceShadersGraph.Internal.Enums
import ObjC.Foundation.Internal.Classes

-- | @+ descriptor@
descriptor :: IO (Id MPSGraphGRUDescriptor)
descriptor  =
  do
    cls' <- getRequiredClass "MPSGraphGRUDescriptor"
    sendClassMessage cls' descriptorSelector

-- | reverse
--
-- If set then the input sequence is passed in reverse time order to the layer.              Note: Ignored when
--
-- bidirectional = YES
--
-- .              Default value:
--
-- NO
--
-- ObjC selector: @- reverse@
reverse_ :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
reverse_ mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor reverseSelector

-- | reverse
--
-- If set then the input sequence is passed in reverse time order to the layer.              Note: Ignored when
--
-- bidirectional = YES
--
-- .              Default value:
--
-- NO
--
-- ObjC selector: @- setReverse:@
setReverse :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setReverse mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setReverseSelector value

-- | bidirectional
--
-- If set then the input sequence is traversed in both directions and the two results              are concatenated together on the channel-axis.              Default value:
--
-- NO
--
-- ObjC selector: @- bidirectional@
bidirectional :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
bidirectional mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor bidirectionalSelector

-- | bidirectional
--
-- If set then the input sequence is traversed in both directions and the two results              are concatenated together on the channel-axis.              Default value:
--
-- NO
--
-- ObjC selector: @- setBidirectional:@
setBidirectional :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setBidirectional mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setBidirectionalSelector value

-- | training
--
-- If set then the layer will produce training state tensor as a secondary or third output.              Default value:
--
-- NO
--
-- ObjC selector: @- training@
training :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
training mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor trainingSelector

-- | training
--
-- If set then the layer will produce training state tensor as a secondary or third output.              Default value:
--
-- NO
--
-- ObjC selector: @- setTraining:@
setTraining :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setTraining mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setTrainingSelector value

-- | resetGateFirst
--
-- If set then the layer will use the gate-ordering @[ r, z, o ]@ instead of default @[ z, r, o ]@.              Default value:
--
-- NO
--
-- ObjC selector: @- resetGateFirst@
resetGateFirst :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
resetGateFirst mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor resetGateFirstSelector

-- | resetGateFirst
--
-- If set then the layer will use the gate-ordering @[ r, z, o ]@ instead of default @[ z, r, o ]@.              Default value:
--
-- NO
--
-- ObjC selector: @- setResetGateFirst:@
setResetGateFirst :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setResetGateFirst mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setResetGateFirstSelector value

-- | resetAfter
--
-- If set then the layer will compute the intermediate value as @c[t] = ( b + (h[t-1] m ) R^T) r[t]@.              Otherwise it's computed as @c[t] = (h[t-1] r[t] m) R^T@.              Default value:
--
-- NO
--
-- ObjC selector: @- resetAfter@
resetAfter :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
resetAfter mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor resetAfterSelector

-- | resetAfter
--
-- If set then the layer will compute the intermediate value as @c[t] = ( b + (h[t-1] m ) R^T) r[t]@.              Otherwise it's computed as @c[t] = (h[t-1] r[t] m) R^T@.              Default value:
--
-- NO
--
-- ObjC selector: @- setResetAfter:@
setResetAfter :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setResetAfter mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setResetAfterSelector value

-- | flipZ
--
-- If set then the layer will compute the final value as @h[t] = z[t] h[t-1] + (1-z[t]) o[t]@.              Otherwise it's computed as @h[t] = (1-z[t]) h[t-1] + z[t] o[t]@.              Default value:
--
-- NO
--
-- ObjC selector: @- flipZ@
flipZ :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO Bool
flipZ mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor flipZSelector

-- | flipZ
--
-- If set then the layer will compute the final value as @h[t] = z[t] h[t-1] + (1-z[t]) o[t]@.              Otherwise it's computed as @h[t] = (1-z[t]) h[t-1] + z[t] o[t]@.              Default value:
--
-- NO
--
-- ObjC selector: @- setFlipZ:@
setFlipZ :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> Bool -> IO ()
setFlipZ mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setFlipZSelector value

-- | updateGateActivation
--
-- Activation function to use with the z-gate of the GRU  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- updateGateActivation@
updateGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO MPSGraphRNNActivation
updateGateActivation mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor updateGateActivationSelector

-- | updateGateActivation
--
-- Activation function to use with the z-gate of the GRU  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- setUpdateGateActivation:@
setUpdateGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> MPSGraphRNNActivation -> IO ()
setUpdateGateActivation mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setUpdateGateActivationSelector value

-- | resetGateActivation
--
-- Activation function to use with the r-gate of the GRU  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- resetGateActivation@
resetGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO MPSGraphRNNActivation
resetGateActivation mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor resetGateActivationSelector

-- | resetGateActivation
--
-- Activation function to use with the r-gate of the GRU  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- setResetGateActivation:@
setResetGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> MPSGraphRNNActivation -> IO ()
setResetGateActivation mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setResetGateActivationSelector value

-- | outputGateActivation
--
-- Activation function to use with the o-gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- outputGateActivation@
outputGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> IO MPSGraphRNNActivation
outputGateActivation mpsGraphGRUDescriptor =
  sendMessage mpsGraphGRUDescriptor outputGateActivationSelector

-- | outputGateActivation
--
-- Activation function to use with the o-gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- setOutputGateActivation:@
setOutputGateActivation :: IsMPSGraphGRUDescriptor mpsGraphGRUDescriptor => mpsGraphGRUDescriptor -> MPSGraphRNNActivation -> IO ()
setOutputGateActivation mpsGraphGRUDescriptor value =
  sendMessage mpsGraphGRUDescriptor setOutputGateActivationSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptor@
descriptorSelector :: Selector '[] (Id MPSGraphGRUDescriptor)
descriptorSelector = mkSelector "descriptor"

-- | @Selector@ for @reverse@
reverseSelector :: Selector '[] Bool
reverseSelector = mkSelector "reverse"

-- | @Selector@ for @setReverse:@
setReverseSelector :: Selector '[Bool] ()
setReverseSelector = mkSelector "setReverse:"

-- | @Selector@ for @bidirectional@
bidirectionalSelector :: Selector '[] Bool
bidirectionalSelector = mkSelector "bidirectional"

-- | @Selector@ for @setBidirectional:@
setBidirectionalSelector :: Selector '[Bool] ()
setBidirectionalSelector = mkSelector "setBidirectional:"

-- | @Selector@ for @training@
trainingSelector :: Selector '[] Bool
trainingSelector = mkSelector "training"

-- | @Selector@ for @setTraining:@
setTrainingSelector :: Selector '[Bool] ()
setTrainingSelector = mkSelector "setTraining:"

-- | @Selector@ for @resetGateFirst@
resetGateFirstSelector :: Selector '[] Bool
resetGateFirstSelector = mkSelector "resetGateFirst"

-- | @Selector@ for @setResetGateFirst:@
setResetGateFirstSelector :: Selector '[Bool] ()
setResetGateFirstSelector = mkSelector "setResetGateFirst:"

-- | @Selector@ for @resetAfter@
resetAfterSelector :: Selector '[] Bool
resetAfterSelector = mkSelector "resetAfter"

-- | @Selector@ for @setResetAfter:@
setResetAfterSelector :: Selector '[Bool] ()
setResetAfterSelector = mkSelector "setResetAfter:"

-- | @Selector@ for @flipZ@
flipZSelector :: Selector '[] Bool
flipZSelector = mkSelector "flipZ"

-- | @Selector@ for @setFlipZ:@
setFlipZSelector :: Selector '[Bool] ()
setFlipZSelector = mkSelector "setFlipZ:"

-- | @Selector@ for @updateGateActivation@
updateGateActivationSelector :: Selector '[] MPSGraphRNNActivation
updateGateActivationSelector = mkSelector "updateGateActivation"

-- | @Selector@ for @setUpdateGateActivation:@
setUpdateGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setUpdateGateActivationSelector = mkSelector "setUpdateGateActivation:"

-- | @Selector@ for @resetGateActivation@
resetGateActivationSelector :: Selector '[] MPSGraphRNNActivation
resetGateActivationSelector = mkSelector "resetGateActivation"

-- | @Selector@ for @setResetGateActivation:@
setResetGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setResetGateActivationSelector = mkSelector "setResetGateActivation:"

-- | @Selector@ for @outputGateActivation@
outputGateActivationSelector :: Selector '[] MPSGraphRNNActivation
outputGateActivationSelector = mkSelector "outputGateActivation"

-- | @Selector@ for @setOutputGateActivation:@
setOutputGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setOutputGateActivationSelector = mkSelector "setOutputGateActivation:"

