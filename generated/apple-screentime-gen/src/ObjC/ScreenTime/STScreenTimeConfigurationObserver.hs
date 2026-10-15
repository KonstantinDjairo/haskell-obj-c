{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @STScreenTimeConfigurationObserver@.
module ObjC.ScreenTime.STScreenTimeConfigurationObserver
  ( STScreenTimeConfigurationObserver
  , IsSTScreenTimeConfigurationObserver(..)
  , initWithUpdateQueue
  , startObserving
  , stopObserving
  , init_
  , new
  , configuration
  , configurationSelector
  , initSelector
  , initWithUpdateQueueSelector
  , newSelector
  , startObservingSelector
  , stopObservingSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenTime.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithUpdateQueue:@
initWithUpdateQueue :: (IsSTScreenTimeConfigurationObserver stScreenTimeConfigurationObserver, IsNSObject updateQueue) => stScreenTimeConfigurationObserver -> updateQueue -> IO (Id STScreenTimeConfigurationObserver)
initWithUpdateQueue stScreenTimeConfigurationObserver updateQueue =
  sendOwnedMessage stScreenTimeConfigurationObserver initWithUpdateQueueSelector (toNSObject updateQueue)

-- | @- startObserving@
startObserving :: IsSTScreenTimeConfigurationObserver stScreenTimeConfigurationObserver => stScreenTimeConfigurationObserver -> IO ()
startObserving stScreenTimeConfigurationObserver =
  sendMessage stScreenTimeConfigurationObserver startObservingSelector

-- | @- stopObserving@
stopObserving :: IsSTScreenTimeConfigurationObserver stScreenTimeConfigurationObserver => stScreenTimeConfigurationObserver -> IO ()
stopObserving stScreenTimeConfigurationObserver =
  sendMessage stScreenTimeConfigurationObserver stopObservingSelector

-- | @- init@
init_ :: IsSTScreenTimeConfigurationObserver stScreenTimeConfigurationObserver => stScreenTimeConfigurationObserver -> IO (Id STScreenTimeConfigurationObserver)
init_ stScreenTimeConfigurationObserver =
  sendOwnedMessage stScreenTimeConfigurationObserver initSelector

-- | @+ new@
new :: IO (Id STScreenTimeConfigurationObserver)
new  =
  do
    cls' <- getRequiredClass "STScreenTimeConfigurationObserver"
    sendOwnedClassMessage cls' newSelector

-- | The current Screen Time configuration.
--
-- The configuration's properties are automatically updated via KVO on the update queue.
--
-- ObjC selector: @- configuration@
configuration :: IsSTScreenTimeConfigurationObserver stScreenTimeConfigurationObserver => stScreenTimeConfigurationObserver -> IO (Id STScreenTimeConfiguration)
configuration stScreenTimeConfigurationObserver =
  sendMessage stScreenTimeConfigurationObserver configurationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithUpdateQueue:@
initWithUpdateQueueSelector :: Selector '[Id NSObject] (Id STScreenTimeConfigurationObserver)
initWithUpdateQueueSelector = mkSelector "initWithUpdateQueue:"

-- | @Selector@ for @startObserving@
startObservingSelector :: Selector '[] ()
startObservingSelector = mkSelector "startObserving"

-- | @Selector@ for @stopObserving@
stopObservingSelector :: Selector '[] ()
stopObservingSelector = mkSelector "stopObserving"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id STScreenTimeConfigurationObserver)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id STScreenTimeConfigurationObserver)
newSelector = mkSelector "new"

-- | @Selector@ for @configuration@
configurationSelector :: Selector '[] (Id STScreenTimeConfiguration)
configurationSelector = mkSelector "configuration"

