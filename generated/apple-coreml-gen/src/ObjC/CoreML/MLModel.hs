{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MLModel
--
-- Construct a model and evaluate on a specific set of input features. Inputs and outputs are accessed via the MLFeatureProvider protocol. Returns a model or nil if there is an error.
--
-- Generated bindings for @MLModel@.
module ObjC.CoreML.MLModel
  ( MLModel
  , IsMLModel(..)
  , modelWithContentsOfURL_error
  , modelWithContentsOfURL_configuration_error
  , loadContentsOfURL_configuration_completionHandler
  , predictionFromFeatures_error
  , predictionFromFeatures_options_error
  , predictionsFromBatch_error
  , predictionsFromBatch_options_error
  , parameterValueForKey_error
  , loadModelAsset_configuration_completionHandler
  , compileModelAtURL_error
  , compileModelAtURL_completionHandler
  , modelDescription
  , configuration
  , compileModelAtURL_completionHandlerSelector
  , compileModelAtURL_errorSelector
  , configurationSelector
  , loadContentsOfURL_configuration_completionHandlerSelector
  , loadModelAsset_configuration_completionHandlerSelector
  , modelDescriptionSelector
  , modelWithContentsOfURL_configuration_errorSelector
  , modelWithContentsOfURL_errorSelector
  , parameterValueForKey_errorSelector
  , predictionFromFeatures_errorSelector
  , predictionFromFeatures_options_errorSelector
  , predictionsFromBatch_errorSelector
  , predictionsFromBatch_options_errorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreML.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Construct a model with a default MLModelConfiguration object
--
-- ObjC selector: @+ modelWithContentsOfURL:error:@
modelWithContentsOfURL_error :: (IsNSURL url, IsNSError error_) => url -> error_ -> IO (Id MLModel)
modelWithContentsOfURL_error url error_ =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' modelWithContentsOfURL_errorSelector (toNSURL url) (toNSError error_)

-- | Construct a model given the location of its on-disk representation. Returns nil on error.
--
-- ObjC selector: @+ modelWithContentsOfURL:configuration:error:@
modelWithContentsOfURL_configuration_error :: (IsNSURL url, IsMLModelConfiguration configuration, IsNSError error_) => url -> configuration -> error_ -> IO (Id MLModel)
modelWithContentsOfURL_configuration_error url configuration error_ =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' modelWithContentsOfURL_configuration_errorSelector (toNSURL url) (toMLModelConfiguration configuration) (toNSError error_)

-- | Construct a model asynchronously given the location of its on-disk representation and configuration.
--
-- Model loading may take time when the model content is not immediately available (e.g. encrypted model). Use this factory method especially when the caller is on the main thread.
--
-- @url@ — the location of its on-disk representation (.mlmodelc directory).
--
-- @configuration@ — The model configuration
--
-- @handler@ — When the model load completes successfully or unsuccessfully, the completion handler is invoked with a valid MLModel instance or NSError object.
--
-- ObjC selector: @+ loadContentsOfURL:configuration:completionHandler:@
loadContentsOfURL_configuration_completionHandler :: (IsNSURL url, IsMLModelConfiguration configuration) => url -> configuration -> Ptr () -> IO ()
loadContentsOfURL_configuration_completionHandler url configuration handler =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' loadContentsOfURL_configuration_completionHandlerSelector (toNSURL url) (toMLModelConfiguration configuration) handler

-- | All models can predict on a specific set of input features.
--
-- ObjC selector: @- predictionFromFeatures:error:@
predictionFromFeatures_error :: (IsMLModel mlModel, IsNSError error_) => mlModel -> RawId -> error_ -> IO RawId
predictionFromFeatures_error mlModel input error_ =
  sendMessage mlModel predictionFromFeatures_errorSelector input (toNSError error_)

-- | Prediction with explicit options
--
-- ObjC selector: @- predictionFromFeatures:options:error:@
predictionFromFeatures_options_error :: (IsMLModel mlModel, IsMLPredictionOptions options, IsNSError error_) => mlModel -> RawId -> options -> error_ -> IO RawId
predictionFromFeatures_options_error mlModel input options error_ =
  sendMessage mlModel predictionFromFeatures_options_errorSelector input (toMLPredictionOptions options) (toNSError error_)

-- | Batch prediction without explicit options
--
-- ObjC selector: @- predictionsFromBatch:error:@
predictionsFromBatch_error :: (IsMLModel mlModel, IsNSError error_) => mlModel -> RawId -> error_ -> IO RawId
predictionsFromBatch_error mlModel inputBatch error_ =
  sendMessage mlModel predictionsFromBatch_errorSelector inputBatch (toNSError error_)

-- | Batch prediction with explicit options
--
-- ObjC selector: @- predictionsFromBatch:options:error:@
predictionsFromBatch_options_error :: (IsMLModel mlModel, IsMLPredictionOptions options, IsNSError error_) => mlModel -> RawId -> options -> error_ -> IO RawId
predictionsFromBatch_options_error mlModel inputBatch options error_ =
  sendMessage mlModel predictionsFromBatch_options_errorSelector inputBatch (toMLPredictionOptions options) (toNSError error_)

-- | Provides value for the given parameter. Returns nil on error.
--
-- ObjC selector: @- parameterValueForKey:error:@
parameterValueForKey_error :: (IsMLModel mlModel, IsMLParameterKey key, IsNSError error_) => mlModel -> key -> error_ -> IO RawId
parameterValueForKey_error mlModel key error_ =
  sendMessage mlModel parameterValueForKey_errorSelector (toMLParameterKey key) (toNSError error_)

-- | Construct a model asynchronously from a compiled model asset.
--
-- @asset@ — Compiled model asset derived from in-memory or on-disk Core ML model
--
-- @configuration@ — Model configuration that hold options for loading a model
--
-- @handler@ — When the model load completes successfully or unsuccessfully, the completion handler is invoked with a valid MLModel instance or NSError object.
--
-- ObjC selector: @+ loadModelAsset:configuration:completionHandler:@
loadModelAsset_configuration_completionHandler :: (IsMLModelAsset asset, IsMLModelConfiguration configuration) => asset -> configuration -> Ptr () -> IO ()
loadModelAsset_configuration_completionHandler asset configuration handler =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' loadModelAsset_configuration_completionHandlerSelector (toMLModelAsset asset) (toMLModelConfiguration configuration) handler

-- | Compile a .mlmodel for this device
--
-- @modelURL@ — URL file path to .mlmodel file you wish to compile
--
-- @error@ — Any errors are surfaced here
--
-- a URL to the compiled .mlmodelc directory if successful The model is compiled to a temporary location on disk You must move the compiled model to a permanent location if you wish to keep it
--
-- The returned model can be loaded using:
--
-- [MLModel modelWithContentsOfURL:error:]
--
-- ObjC selector: @+ compileModelAtURL:error:@
compileModelAtURL_error :: (IsNSURL modelURL, IsNSError error_) => modelURL -> error_ -> IO (Id NSURL)
compileModelAtURL_error modelURL error_ =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' compileModelAtURL_errorSelector (toNSURL modelURL) (toNSError error_)

-- | Compile a .mlmodel or .mlpackage for this device. Perform the compilation asynchronously.
--
-- @modelURL@ — URL file path to .mlmodel file you wish to compile
--
-- @handler@ — When the model compilation completes successfully  the completion handler is invoked with a valid URL to the compiled .mlmodelc directory. On failure, signified by nil  compiledModelURL, the NSError object is populated.
--
-- The model is compiled to a temporary location in the file system. You must move the compiled model to a permanent location if you wish to keep it. Then the model can be loaded using the returned URL:
--
-- [MLModel modelWithContentsOfURL:error:]
--
-- ObjC selector: @+ compileModelAtURL:completionHandler:@
compileModelAtURL_completionHandler :: IsNSURL modelURL => modelURL -> Ptr () -> IO ()
compileModelAtURL_completionHandler modelURL handler =
  do
    cls' <- getRequiredClass "MLModel"
    sendClassMessage cls' compileModelAtURL_completionHandlerSelector (toNSURL modelURL) handler

-- | A model holds a description of its required inputs and expected outputs.
--
-- ObjC selector: @- modelDescription@
modelDescription :: IsMLModel mlModel => mlModel -> IO (Id MLModelDescription)
modelDescription mlModel =
  sendMessage mlModel modelDescriptionSelector

-- | The load-time parameters used to instantiate this MLModel object.
--
-- ObjC selector: @- configuration@
configuration :: IsMLModel mlModel => mlModel -> IO (Id MLModelConfiguration)
configuration mlModel =
  sendMessage mlModel configurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @modelWithContentsOfURL:error:@
modelWithContentsOfURL_errorSelector :: Selector '[Id NSURL, Id NSError] (Id MLModel)
modelWithContentsOfURL_errorSelector = mkSelector "modelWithContentsOfURL:error:"

-- | @Selector@ for @modelWithContentsOfURL:configuration:error:@
modelWithContentsOfURL_configuration_errorSelector :: Selector '[Id NSURL, Id MLModelConfiguration, Id NSError] (Id MLModel)
modelWithContentsOfURL_configuration_errorSelector = mkSelector "modelWithContentsOfURL:configuration:error:"

-- | @Selector@ for @loadContentsOfURL:configuration:completionHandler:@
loadContentsOfURL_configuration_completionHandlerSelector :: Selector '[Id NSURL, Id MLModelConfiguration, Ptr ()] ()
loadContentsOfURL_configuration_completionHandlerSelector = mkSelector "loadContentsOfURL:configuration:completionHandler:"

-- | @Selector@ for @predictionFromFeatures:error:@
predictionFromFeatures_errorSelector :: Selector '[RawId, Id NSError] RawId
predictionFromFeatures_errorSelector = mkSelector "predictionFromFeatures:error:"

-- | @Selector@ for @predictionFromFeatures:options:error:@
predictionFromFeatures_options_errorSelector :: Selector '[RawId, Id MLPredictionOptions, Id NSError] RawId
predictionFromFeatures_options_errorSelector = mkSelector "predictionFromFeatures:options:error:"

-- | @Selector@ for @predictionsFromBatch:error:@
predictionsFromBatch_errorSelector :: Selector '[RawId, Id NSError] RawId
predictionsFromBatch_errorSelector = mkSelector "predictionsFromBatch:error:"

-- | @Selector@ for @predictionsFromBatch:options:error:@
predictionsFromBatch_options_errorSelector :: Selector '[RawId, Id MLPredictionOptions, Id NSError] RawId
predictionsFromBatch_options_errorSelector = mkSelector "predictionsFromBatch:options:error:"

-- | @Selector@ for @parameterValueForKey:error:@
parameterValueForKey_errorSelector :: Selector '[Id MLParameterKey, Id NSError] RawId
parameterValueForKey_errorSelector = mkSelector "parameterValueForKey:error:"

-- | @Selector@ for @loadModelAsset:configuration:completionHandler:@
loadModelAsset_configuration_completionHandlerSelector :: Selector '[Id MLModelAsset, Id MLModelConfiguration, Ptr ()] ()
loadModelAsset_configuration_completionHandlerSelector = mkSelector "loadModelAsset:configuration:completionHandler:"

-- | @Selector@ for @compileModelAtURL:error:@
compileModelAtURL_errorSelector :: Selector '[Id NSURL, Id NSError] (Id NSURL)
compileModelAtURL_errorSelector = mkSelector "compileModelAtURL:error:"

-- | @Selector@ for @compileModelAtURL:completionHandler:@
compileModelAtURL_completionHandlerSelector :: Selector '[Id NSURL, Ptr ()] ()
compileModelAtURL_completionHandlerSelector = mkSelector "compileModelAtURL:completionHandler:"

-- | @Selector@ for @modelDescription@
modelDescriptionSelector :: Selector '[] (Id MLModelDescription)
modelDescriptionSelector = mkSelector "modelDescription"

-- | @Selector@ for @configuration@
configurationSelector :: Selector '[] (Id MLModelConfiguration)
configurationSelector = mkSelector "configuration"

