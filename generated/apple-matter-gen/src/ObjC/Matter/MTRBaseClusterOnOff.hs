{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Cluster On/Off    Attributes and commands for switching devices between 'On' and 'Off' states.
--
-- Generated bindings for @MTRBaseClusterOnOff@.
module ObjC.Matter.MTRBaseClusterOnOff
  ( MTRBaseClusterOnOff
  , IsMTRBaseClusterOnOff(..)
  , initWithDevice_endpoint_queue
  , offWithParams_completionHandler
  , offWithCompletionHandler
  , onWithParams_completionHandler
  , onWithCompletionHandler
  , toggleWithParams_completionHandler
  , toggleWithCompletionHandler
  , offWithEffectWithParams_completionHandler
  , onWithRecallGlobalSceneWithParams_completionHandler
  , onWithRecallGlobalSceneWithCompletionHandler
  , onWithTimedOffWithParams_completionHandler
  , readAttributeOnOffWithCompletionHandler
  , subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGlobalSceneControlWithCompletionHandler
  , subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOnTimeWithCompletionHandler
  , writeAttributeOnTimeWithValue_completionHandler
  , writeAttributeOnTimeWithValue_params_completionHandler
  , subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeOffWaitTimeWithCompletionHandler
  , writeAttributeOffWaitTimeWithValue_completionHandler
  , writeAttributeOffWaitTimeWithValue_params_completionHandler
  , subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeStartUpOnOffWithCompletionHandler
  , writeAttributeStartUpOnOffWithValue_completionHandler
  , writeAttributeStartUpOnOffWithValue_params_completionHandler
  , subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeGeneratedCommandListWithCompletionHandler
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAcceptedCommandListWithCompletionHandler
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeAttributeListWithCompletionHandler
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeFeatureMapWithCompletionHandler
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler
  , readAttributeClusterRevisionWithCompletionHandler
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler
  , init_
  , new
  , initSelector
  , initWithDevice_endpoint_queueSelector
  , newSelector
  , offWithCompletionHandlerSelector
  , offWithEffectWithParams_completionHandlerSelector
  , offWithParams_completionHandlerSelector
  , onWithCompletionHandlerSelector
  , onWithParams_completionHandlerSelector
  , onWithRecallGlobalSceneWithCompletionHandlerSelector
  , onWithRecallGlobalSceneWithParams_completionHandlerSelector
  , onWithTimedOffWithParams_completionHandlerSelector
  , readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAcceptedCommandListWithCompletionHandlerSelector
  , readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeAttributeListWithCompletionHandlerSelector
  , readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeClusterRevisionWithCompletionHandlerSelector
  , readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeFeatureMapWithCompletionHandlerSelector
  , readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGeneratedCommandListWithCompletionHandlerSelector
  , readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeGlobalSceneControlWithCompletionHandlerSelector
  , readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOffWaitTimeWithCompletionHandlerSelector
  , readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnOffWithCompletionHandlerSelector
  , readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeOnTimeWithCompletionHandlerSelector
  , readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector
  , readAttributeStartUpOnOffWithCompletionHandlerSelector
  , subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector
  , toggleWithCompletionHandlerSelector
  , toggleWithParams_completionHandlerSelector
  , writeAttributeOffWaitTimeWithValue_completionHandlerSelector
  , writeAttributeOffWaitTimeWithValue_params_completionHandlerSelector
  , writeAttributeOnTimeWithValue_completionHandlerSelector
  , writeAttributeOnTimeWithValue_params_completionHandlerSelector
  , writeAttributeStartUpOnOffWithValue_completionHandlerSelector
  , writeAttributeStartUpOnOffWithValue_params_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queue :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTRBaseDevice device, IsNSObject queue) => mtrBaseClusterOnOff -> device -> CUShort -> queue -> IO (Id MTRBaseClusterOnOff)
initWithDevice_endpoint_queue mtrBaseClusterOnOff device endpoint queue =
  sendOwnedMessage mtrBaseClusterOnOff initWithDevice_endpoint_queueSelector (toMTRBaseDevice device) endpoint (toNSObject queue)

-- | @- offWithParams:completionHandler:@
offWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterOffParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
offWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff offWithParams_completionHandlerSelector (toMTROnOffClusterOffParams params) completionHandler

-- | @- offWithCompletionHandler:@
offWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
offWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff offWithCompletionHandlerSelector completionHandler

-- | @- onWithParams:completionHandler:@
onWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterOnParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
onWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff onWithParams_completionHandlerSelector (toMTROnOffClusterOnParams params) completionHandler

-- | @- onWithCompletionHandler:@
onWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
onWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff onWithCompletionHandlerSelector completionHandler

-- | @- toggleWithParams:completionHandler:@
toggleWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterToggleParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
toggleWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff toggleWithParams_completionHandlerSelector (toMTROnOffClusterToggleParams params) completionHandler

-- | @- toggleWithCompletionHandler:@
toggleWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
toggleWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff toggleWithCompletionHandlerSelector completionHandler

-- | @- offWithEffectWithParams:completionHandler:@
offWithEffectWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterOffWithEffectParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
offWithEffectWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff offWithEffectWithParams_completionHandlerSelector (toMTROnOffClusterOffWithEffectParams params) completionHandler

-- | @- onWithRecallGlobalSceneWithParams:completionHandler:@
onWithRecallGlobalSceneWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterOnWithRecallGlobalSceneParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
onWithRecallGlobalSceneWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff onWithRecallGlobalSceneWithParams_completionHandlerSelector (toMTROnOffClusterOnWithRecallGlobalSceneParams params) completionHandler

-- | @- onWithRecallGlobalSceneWithCompletionHandler:@
onWithRecallGlobalSceneWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
onWithRecallGlobalSceneWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff onWithRecallGlobalSceneWithCompletionHandlerSelector completionHandler

-- | @- onWithTimedOffWithParams:completionHandler:@
onWithTimedOffWithParams_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsMTROnOffClusterOnWithTimedOffParams params) => mtrBaseClusterOnOff -> params -> Ptr () -> IO ()
onWithTimedOffWithParams_completionHandler mtrBaseClusterOnOff params completionHandler =
  sendMessage mtrBaseClusterOnOff onWithTimedOffWithParams_completionHandlerSelector (toMTROnOffClusterOnWithTimedOffParams params) completionHandler

-- | @- readAttributeOnOffWithCompletionHandler:@
readAttributeOnOffWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeOnOffWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeOnOffWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnOffWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGlobalSceneControlWithCompletionHandler:@
readAttributeGlobalSceneControlWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeGlobalSceneControlWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeGlobalSceneControlWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGlobalSceneControlWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGlobalSceneControlWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOnTimeWithCompletionHandler:@
readAttributeOnTimeWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeOnTimeWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeOnTimeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOnTimeWithValue:completionHandler:@
writeAttributeOnTimeWithValue_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value) => mtrBaseClusterOnOff -> value -> Ptr () -> IO ()
writeAttributeOnTimeWithValue_completionHandler mtrBaseClusterOnOff value completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeOnTimeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOnTimeWithValue:params:completionHandler:@
writeAttributeOnTimeWithValue_params_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterOnOff -> value -> params -> Ptr () -> IO ()
writeAttributeOnTimeWithValue_params_completionHandler mtrBaseClusterOnOff value params completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeOnTimeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOnTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOnTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeOffWaitTimeWithCompletionHandler:@
readAttributeOffWaitTimeWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeOffWaitTimeWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeOffWaitTimeWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeOffWaitTimeWithValue:completionHandler:@
writeAttributeOffWaitTimeWithValue_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value) => mtrBaseClusterOnOff -> value -> Ptr () -> IO ()
writeAttributeOffWaitTimeWithValue_completionHandler mtrBaseClusterOnOff value completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeOffWaitTimeWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeOffWaitTimeWithValue:params:completionHandler:@
writeAttributeOffWaitTimeWithValue_params_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterOnOff -> value -> params -> Ptr () -> IO ()
writeAttributeOffWaitTimeWithValue_params_completionHandler mtrBaseClusterOnOff value params completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeOffWaitTimeWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeOffWaitTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeOffWaitTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeStartUpOnOffWithCompletionHandler:@
readAttributeStartUpOnOffWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeStartUpOnOffWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeStartUpOnOffWithCompletionHandlerSelector completionHandler

-- | @- writeAttributeStartUpOnOffWithValue:completionHandler:@
writeAttributeStartUpOnOffWithValue_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value) => mtrBaseClusterOnOff -> value -> Ptr () -> IO ()
writeAttributeStartUpOnOffWithValue_completionHandler mtrBaseClusterOnOff value completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeStartUpOnOffWithValue_completionHandlerSelector (toNSNumber value) completionHandler

-- | @- writeAttributeStartUpOnOffWithValue:params:completionHandler:@
writeAttributeStartUpOnOffWithValue_params_completionHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber value, IsMTRWriteParams params) => mtrBaseClusterOnOff -> value -> params -> Ptr () -> IO ()
writeAttributeStartUpOnOffWithValue_params_completionHandler mtrBaseClusterOnOff value params completionHandler =
  sendMessage mtrBaseClusterOnOff writeAttributeStartUpOnOffWithValue_params_completionHandlerSelector (toNSNumber value) (toMTRWriteParams params) completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeStartUpOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeStartUpOnOffWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeGeneratedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeAcceptedCommandListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeAttributeListWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeAttributeListWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeFeatureMapWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeFeatureMapWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandler :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> Ptr () -> IO ()
readAttributeClusterRevisionWithCompletionHandler mtrBaseClusterOnOff completionHandler =
  sendMessage mtrBaseClusterOnOff readAttributeClusterRevisionWithCompletionHandlerSelector completionHandler

-- | This API does not support setting autoResubscribe to NO in the MTRSubscribeParams.
--
-- ObjC selector: @- subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler :: (IsMTRBaseClusterOnOff mtrBaseClusterOnOff, IsNSNumber minInterval, IsNSNumber maxInterval, IsMTRSubscribeParams params) => mtrBaseClusterOnOff -> minInterval -> maxInterval -> params -> Ptr () -> Ptr () -> IO ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandler mtrBaseClusterOnOff minInterval maxInterval params subscriptionEstablishedHandler reportHandler =
  sendMessage mtrBaseClusterOnOff subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector (toNSNumber minInterval) (toNSNumber maxInterval) (toMTRSubscribeParams params) subscriptionEstablishedHandler reportHandler

-- | @+ readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler :: (IsMTRAttributeCacheContainer attributeCacheContainer, IsNSNumber endpoint, IsNSObject queue) => attributeCacheContainer -> endpoint -> queue -> Ptr () -> IO ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandler attributeCacheContainer endpoint queue completionHandler =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendClassMessage cls' readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector (toMTRAttributeCacheContainer attributeCacheContainer) (toNSNumber endpoint) (toNSObject queue) completionHandler

-- | @- init@
init_ :: IsMTRBaseClusterOnOff mtrBaseClusterOnOff => mtrBaseClusterOnOff -> IO (Id MTRBaseClusterOnOff)
init_ mtrBaseClusterOnOff =
  sendOwnedMessage mtrBaseClusterOnOff initSelector

-- | @+ new@
new :: IO (Id MTRBaseClusterOnOff)
new  =
  do
    cls' <- getRequiredClass "MTRBaseClusterOnOff"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithDevice:endpoint:queue:@
initWithDevice_endpoint_queueSelector :: Selector '[Id MTRBaseDevice, CUShort, Id NSObject] (Id MTRBaseClusterOnOff)
initWithDevice_endpoint_queueSelector = mkSelector "initWithDevice:endpoint:queue:"

-- | @Selector@ for @offWithParams:completionHandler:@
offWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterOffParams, Ptr ()] ()
offWithParams_completionHandlerSelector = mkSelector "offWithParams:completionHandler:"

-- | @Selector@ for @offWithCompletionHandler:@
offWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
offWithCompletionHandlerSelector = mkSelector "offWithCompletionHandler:"

-- | @Selector@ for @onWithParams:completionHandler:@
onWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterOnParams, Ptr ()] ()
onWithParams_completionHandlerSelector = mkSelector "onWithParams:completionHandler:"

-- | @Selector@ for @onWithCompletionHandler:@
onWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
onWithCompletionHandlerSelector = mkSelector "onWithCompletionHandler:"

-- | @Selector@ for @toggleWithParams:completionHandler:@
toggleWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterToggleParams, Ptr ()] ()
toggleWithParams_completionHandlerSelector = mkSelector "toggleWithParams:completionHandler:"

-- | @Selector@ for @toggleWithCompletionHandler:@
toggleWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
toggleWithCompletionHandlerSelector = mkSelector "toggleWithCompletionHandler:"

-- | @Selector@ for @offWithEffectWithParams:completionHandler:@
offWithEffectWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterOffWithEffectParams, Ptr ()] ()
offWithEffectWithParams_completionHandlerSelector = mkSelector "offWithEffectWithParams:completionHandler:"

-- | @Selector@ for @onWithRecallGlobalSceneWithParams:completionHandler:@
onWithRecallGlobalSceneWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterOnWithRecallGlobalSceneParams, Ptr ()] ()
onWithRecallGlobalSceneWithParams_completionHandlerSelector = mkSelector "onWithRecallGlobalSceneWithParams:completionHandler:"

-- | @Selector@ for @onWithRecallGlobalSceneWithCompletionHandler:@
onWithRecallGlobalSceneWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
onWithRecallGlobalSceneWithCompletionHandlerSelector = mkSelector "onWithRecallGlobalSceneWithCompletionHandler:"

-- | @Selector@ for @onWithTimedOffWithParams:completionHandler:@
onWithTimedOffWithParams_completionHandlerSelector :: Selector '[Id MTROnOffClusterOnWithTimedOffParams, Ptr ()] ()
onWithTimedOffWithParams_completionHandlerSelector = mkSelector "onWithTimedOffWithParams:completionHandler:"

-- | @Selector@ for @readAttributeOnOffWithCompletionHandler:@
readAttributeOnOffWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnOffWithCompletionHandlerSelector = mkSelector "readAttributeOnOffWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnOffWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnOffWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGlobalSceneControlWithCompletionHandler:@
readAttributeGlobalSceneControlWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeGlobalSceneControlWithCompletionHandlerSelector = mkSelector "readAttributeGlobalSceneControlWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeGlobalSceneControlWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGlobalSceneControlWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGlobalSceneControlWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGlobalSceneControlWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGlobalSceneControlWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGlobalSceneControlWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOnTimeWithCompletionHandler:@
readAttributeOnTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOnTimeWithCompletionHandlerSelector = mkSelector "readAttributeOnTimeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOnTimeWithValue:completionHandler:@
writeAttributeOnTimeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOnTimeWithValue_completionHandlerSelector = mkSelector "writeAttributeOnTimeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOnTimeWithValue:params:completionHandler:@
writeAttributeOnTimeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOnTimeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOnTimeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOnTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOnTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOnTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOnTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOnTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOnTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeOffWaitTimeWithCompletionHandler:@
readAttributeOffWaitTimeWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeOffWaitTimeWithCompletionHandlerSelector = mkSelector "readAttributeOffWaitTimeWithCompletionHandler:"

-- | @Selector@ for @writeAttributeOffWaitTimeWithValue:completionHandler:@
writeAttributeOffWaitTimeWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeOffWaitTimeWithValue_completionHandlerSelector = mkSelector "writeAttributeOffWaitTimeWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeOffWaitTimeWithValue:params:completionHandler:@
writeAttributeOffWaitTimeWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeOffWaitTimeWithValue_params_completionHandlerSelector = mkSelector "writeAttributeOffWaitTimeWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeOffWaitTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeOffWaitTimeWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeOffWaitTimeWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeOffWaitTimeWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeOffWaitTimeWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeOffWaitTimeWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeStartUpOnOffWithCompletionHandler:@
readAttributeStartUpOnOffWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeStartUpOnOffWithCompletionHandlerSelector = mkSelector "readAttributeStartUpOnOffWithCompletionHandler:"

-- | @Selector@ for @writeAttributeStartUpOnOffWithValue:completionHandler:@
writeAttributeStartUpOnOffWithValue_completionHandlerSelector :: Selector '[Id NSNumber, Ptr ()] ()
writeAttributeStartUpOnOffWithValue_completionHandlerSelector = mkSelector "writeAttributeStartUpOnOffWithValue:completionHandler:"

-- | @Selector@ for @writeAttributeStartUpOnOffWithValue:params:completionHandler:@
writeAttributeStartUpOnOffWithValue_params_completionHandlerSelector :: Selector '[Id NSNumber, Id MTRWriteParams, Ptr ()] ()
writeAttributeStartUpOnOffWithValue_params_completionHandlerSelector = mkSelector "writeAttributeStartUpOnOffWithValue:params:completionHandler:"

-- | @Selector@ for @subscribeAttributeStartUpOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeStartUpOnOffWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeStartUpOnOffWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeStartUpOnOffWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeStartUpOnOffWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeStartUpOnOffWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithCompletionHandler:@
readAttributeGeneratedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeGeneratedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeGeneratedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeGeneratedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeGeneratedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeGeneratedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithCompletionHandler:@
readAttributeAcceptedCommandListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAcceptedCommandListWithCompletionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAcceptedCommandListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAcceptedCommandListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAcceptedCommandListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAcceptedCommandListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeAttributeListWithCompletionHandler:@
readAttributeAttributeListWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeAttributeListWithCompletionHandlerSelector = mkSelector "readAttributeAttributeListWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeAttributeListWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeAttributeListWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeAttributeListWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeAttributeListWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithCompletionHandler:@
readAttributeFeatureMapWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeFeatureMapWithCompletionHandlerSelector = mkSelector "readAttributeFeatureMapWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeFeatureMapWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeFeatureMapWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeFeatureMapWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeFeatureMapWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithCompletionHandler:@
readAttributeClusterRevisionWithCompletionHandlerSelector :: Selector '[Ptr ()] ()
readAttributeClusterRevisionWithCompletionHandlerSelector = mkSelector "readAttributeClusterRevisionWithCompletionHandler:"

-- | @Selector@ for @subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:@
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector :: Selector '[Id NSNumber, Id NSNumber, Id MTRSubscribeParams, Ptr (), Ptr ()] ()
subscribeAttributeClusterRevisionWithMinInterval_maxInterval_params_subscriptionEstablished_reportHandlerSelector = mkSelector "subscribeAttributeClusterRevisionWithMinInterval:maxInterval:params:subscriptionEstablished:reportHandler:"

-- | @Selector@ for @readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:@
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector :: Selector '[Id MTRAttributeCacheContainer, Id NSNumber, Id NSObject, Ptr ()] ()
readAttributeClusterRevisionWithAttributeCache_endpoint_queue_completionHandlerSelector = mkSelector "readAttributeClusterRevisionWithAttributeCache:endpoint:queue:completionHandler:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRBaseClusterOnOff)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MTRBaseClusterOnOff)
newSelector = mkSelector "new"

