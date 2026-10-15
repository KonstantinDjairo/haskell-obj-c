{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MPSGraphLSTMDescriptor@.
module ObjC.MetalPerformanceShadersGraph.MPSGraphLSTMDescriptor
  ( MPSGraphLSTMDescriptor
  , IsMPSGraphLSTMDescriptor(..)
  , descriptor
  , reverse_
  , setReverse
  , bidirectional
  , setBidirectional
  , produceCell
  , setProduceCell
  , training
  , setTraining
  , forgetGateLast
  , setForgetGateLast
  , inputGateActivation
  , setInputGateActivation
  , forgetGateActivation
  , setForgetGateActivation
  , cellGateActivation
  , setCellGateActivation
  , outputGateActivation
  , setOutputGateActivation
  , activation
  , setActivation
  , activationSelector
  , bidirectionalSelector
  , cellGateActivationSelector
  , descriptorSelector
  , forgetGateActivationSelector
  , forgetGateLastSelector
  , inputGateActivationSelector
  , outputGateActivationSelector
  , produceCellSelector
  , reverseSelector
  , setActivationSelector
  , setBidirectionalSelector
  , setCellGateActivationSelector
  , setForgetGateActivationSelector
  , setForgetGateLastSelector
  , setInputGateActivationSelector
  , setOutputGateActivationSelector
  , setProduceCellSelector
  , setReverseSelector
  , setTrainingSelector
  , trainingSelector

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
descriptor :: IO (Id MPSGraphLSTMDescriptor)
descriptor  =
  do
    cls' <- getRequiredClass "MPSGraphLSTMDescriptor"
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
reverse_ :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO Bool
reverse_ mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor reverseSelector

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
setReverse :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> Bool -> IO ()
setReverse mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setReverseSelector value

-- | bidirectional
--
-- If set then the input sequence is traversed in both directions and the two results              are concatenated together on the channel-axis.              Default value:
--
-- NO
--
-- ObjC selector: @- bidirectional@
bidirectional :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO Bool
bidirectional mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor bidirectionalSelector

-- | bidirectional
--
-- If set then the input sequence is traversed in both directions and the two results              are concatenated together on the channel-axis.              Default value:
--
-- NO
--
-- ObjC selector: @- setBidirectional:@
setBidirectional :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> Bool -> IO ()
setBidirectional mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setBidirectionalSelector value

-- | produceCell
--
-- If set then this layer will produce the internal cell of the LSTM unit as secondary output.              Default value:
--
-- NO
--
-- ObjC selector: @- produceCell@
produceCell :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO Bool
produceCell mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor produceCellSelector

-- | produceCell
--
-- If set then this layer will produce the internal cell of the LSTM unit as secondary output.              Default value:
--
-- NO
--
-- ObjC selector: @- setProduceCell:@
setProduceCell :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> Bool -> IO ()
setProduceCell mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setProduceCellSelector value

-- | training
--
-- If set then the layer will produce training state tensor as a secondary or third output.              Default value:
--
-- NO
--
-- ObjC selector: @- training@
training :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO Bool
training mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor trainingSelector

-- | training
--
-- If set then the layer will produce training state tensor as a secondary or third output.              Default value:
--
-- NO
--
-- ObjC selector: @- setTraining:@
setTraining :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> Bool -> IO ()
setTraining mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setTrainingSelector value

-- | forgetGateLast
--
-- If set then the layer will use the gate-ordering @[ i, z, f, o ]@ instead of default @[ i, f, z, o ]@.              Default value:
--
-- NO
--
-- ObjC selector: @- forgetGateLast@
forgetGateLast :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO Bool
forgetGateLast mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor forgetGateLastSelector

-- | forgetGateLast
--
-- If set then the layer will use the gate-ordering @[ i, z, f, o ]@ instead of default @[ i, f, z, o ]@.              Default value:
--
-- NO
--
-- ObjC selector: @- setForgetGateLast:@
setForgetGateLast :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> Bool -> IO ()
setForgetGateLast mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setForgetGateLastSelector value

-- | inputGateActivation
--
-- Activation function to use with the input gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- inputGateActivation@
inputGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO MPSGraphRNNActivation
inputGateActivation mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor inputGateActivationSelector

-- | inputGateActivation
--
-- Activation function to use with the input gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- setInputGateActivation:@
setInputGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> MPSGraphRNNActivation -> IO ()
setInputGateActivation mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setInputGateActivationSelector value

-- | forgetGateActivation
--
-- Activation function to use with the forget gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- forgetGateActivation@
forgetGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO MPSGraphRNNActivation
forgetGateActivation mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor forgetGateActivationSelector

-- | forgetGateActivation
--
-- Activation function to use with the forget gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- setForgetGateActivation:@
setForgetGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> MPSGraphRNNActivation -> IO ()
setForgetGateActivation mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setForgetGateActivationSelector value

-- | cellGateActivation
--
-- Activation function to use with the cell gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- cellGateActivation@
cellGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO MPSGraphRNNActivation
cellGateActivation mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor cellGateActivationSelector

-- | cellGateActivation
--
-- Activation function to use with the cell gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- setCellGateActivation:@
setCellGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> MPSGraphRNNActivation -> IO ()
setCellGateActivation mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setCellGateActivationSelector value

-- | outputGateActivation
--
-- Activation function to use with the output gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- outputGateActivation@
outputGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO MPSGraphRNNActivation
outputGateActivation mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor outputGateActivationSelector

-- | outputGateActivation
--
-- Activation function to use with the output gate of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationSigmoid
--
-- ObjC selector: @- setOutputGateActivation:@
setOutputGateActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> MPSGraphRNNActivation -> IO ()
setOutputGateActivation mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setOutputGateActivationSelector value

-- | activation
--
-- Activation function to use with the current cell value of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- activation@
activation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> IO MPSGraphRNNActivation
activation mpsGraphLSTMDescriptor =
  sendMessage mpsGraphLSTMDescriptor activationSelector

-- | activation
--
-- Activation function to use with the current cell value of the LSTM  op.              Default value:
--
-- MPSGraphRNNActivationTanh
--
-- ObjC selector: @- setActivation:@
setActivation :: IsMPSGraphLSTMDescriptor mpsGraphLSTMDescriptor => mpsGraphLSTMDescriptor -> MPSGraphRNNActivation -> IO ()
setActivation mpsGraphLSTMDescriptor value =
  sendMessage mpsGraphLSTMDescriptor setActivationSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @descriptor@
descriptorSelector :: Selector '[] (Id MPSGraphLSTMDescriptor)
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

-- | @Selector@ for @produceCell@
produceCellSelector :: Selector '[] Bool
produceCellSelector = mkSelector "produceCell"

-- | @Selector@ for @setProduceCell:@
setProduceCellSelector :: Selector '[Bool] ()
setProduceCellSelector = mkSelector "setProduceCell:"

-- | @Selector@ for @training@
trainingSelector :: Selector '[] Bool
trainingSelector = mkSelector "training"

-- | @Selector@ for @setTraining:@
setTrainingSelector :: Selector '[Bool] ()
setTrainingSelector = mkSelector "setTraining:"

-- | @Selector@ for @forgetGateLast@
forgetGateLastSelector :: Selector '[] Bool
forgetGateLastSelector = mkSelector "forgetGateLast"

-- | @Selector@ for @setForgetGateLast:@
setForgetGateLastSelector :: Selector '[Bool] ()
setForgetGateLastSelector = mkSelector "setForgetGateLast:"

-- | @Selector@ for @inputGateActivation@
inputGateActivationSelector :: Selector '[] MPSGraphRNNActivation
inputGateActivationSelector = mkSelector "inputGateActivation"

-- | @Selector@ for @setInputGateActivation:@
setInputGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setInputGateActivationSelector = mkSelector "setInputGateActivation:"

-- | @Selector@ for @forgetGateActivation@
forgetGateActivationSelector :: Selector '[] MPSGraphRNNActivation
forgetGateActivationSelector = mkSelector "forgetGateActivation"

-- | @Selector@ for @setForgetGateActivation:@
setForgetGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setForgetGateActivationSelector = mkSelector "setForgetGateActivation:"

-- | @Selector@ for @cellGateActivation@
cellGateActivationSelector :: Selector '[] MPSGraphRNNActivation
cellGateActivationSelector = mkSelector "cellGateActivation"

-- | @Selector@ for @setCellGateActivation:@
setCellGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setCellGateActivationSelector = mkSelector "setCellGateActivation:"

-- | @Selector@ for @outputGateActivation@
outputGateActivationSelector :: Selector '[] MPSGraphRNNActivation
outputGateActivationSelector = mkSelector "outputGateActivation"

-- | @Selector@ for @setOutputGateActivation:@
setOutputGateActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setOutputGateActivationSelector = mkSelector "setOutputGateActivation:"

-- | @Selector@ for @activation@
activationSelector :: Selector '[] MPSGraphRNNActivation
activationSelector = mkSelector "activation"

-- | @Selector@ for @setActivation:@
setActivationSelector :: Selector '[MPSGraphRNNActivation] ()
setActivationSelector = mkSelector "setActivation:"

