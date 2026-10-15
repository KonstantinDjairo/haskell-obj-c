{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | PKPushRegistry
--
-- An instance of this class can be used to register for 3rd party notifications. The supported push                notification types are listed above as PKPushType constants.
--
-- Generated bindings for @PKPushRegistry@.
module ObjC.PushKit.PKPushRegistry
  ( PKPushRegistry
  , IsPKPushRegistry(..)
  , pushTokenForType
  , initWithQueue
  , init_
  , delegate
  , setDelegate
  , desiredPushTypes
  , setDesiredPushTypes
  , delegateSelector
  , desiredPushTypesSelector
  , initSelector
  , initWithQueueSelector
  , pushTokenForTypeSelector
  , setDelegateSelector
  , setDesiredPushTypesSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PushKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | pushTokenForType:
--
-- Access the locally cached push token for a specified PKPushType.
--
-- A push token returned here has previously been given to the delegate via handlePushTokenUpdate:forType:                callback.
--
-- @type@ — This is a PKPushType constant that is already in desiredPushTypes.
--
-- Returns: Returns the push token that can be used to send pushes to the device for the specified PKPushType.                Returns nil if no push token is available for this PKPushType at the time of invocation.
--
-- ObjC selector: @- pushTokenForType:@
pushTokenForType :: (IsPKPushRegistry pkPushRegistry, IsNSString type_) => pkPushRegistry -> type_ -> IO (Id NSData)
pushTokenForType pkPushRegistry type_ =
  sendMessage pkPushRegistry pushTokenForTypeSelector (toNSString type_)

-- | initWithQueue:
--
-- Instantiates a PKPushRegistry with a delegate callback dispatch queue.
--
-- @queue@ — All delegate callbacks are performed asynchronously by PKPushRegistry on this queue.
--
-- Returns: A PKPushRegistry instance that can be used to register for push tokens and notifications for supported                push types.
--
-- ObjC selector: @- initWithQueue:@
initWithQueue :: (IsPKPushRegistry pkPushRegistry, IsNSObject queue) => pkPushRegistry -> queue -> IO (Id PKPushRegistry)
initWithQueue pkPushRegistry queue =
  sendOwnedMessage pkPushRegistry initWithQueueSelector (toNSObject queue)

-- | init
--
-- Unavailable, use -initWithQueue: instead.
--
-- ObjC selector: @- init@
init_ :: IsPKPushRegistry pkPushRegistry => pkPushRegistry -> IO (Id PKPushRegistry)
init_ pkPushRegistry =
  sendOwnedMessage pkPushRegistry initSelector

-- | delegate
--
-- Setting a delegate is required to receive device push tokens and incoming pushes.
--
-- ObjC selector: @- delegate@
delegate :: IsPKPushRegistry pkPushRegistry => pkPushRegistry -> IO RawId
delegate pkPushRegistry =
  sendMessage pkPushRegistry delegateSelector

-- | delegate
--
-- Setting a delegate is required to receive device push tokens and incoming pushes.
--
-- ObjC selector: @- setDelegate:@
setDelegate :: IsPKPushRegistry pkPushRegistry => pkPushRegistry -> RawId -> IO ()
setDelegate pkPushRegistry value =
  sendMessage pkPushRegistry setDelegateSelector value

-- | desiredPushTypes
--
-- An app requests registration for various types of pushes by setting this NSSet to the desired                PKPushType constants. Push tokens and notifications will be delivered via delegate callback.
--
-- ObjC selector: @- desiredPushTypes@
desiredPushTypes :: IsPKPushRegistry pkPushRegistry => pkPushRegistry -> IO (Id NSSet)
desiredPushTypes pkPushRegistry =
  sendMessage pkPushRegistry desiredPushTypesSelector

-- | desiredPushTypes
--
-- An app requests registration for various types of pushes by setting this NSSet to the desired                PKPushType constants. Push tokens and notifications will be delivered via delegate callback.
--
-- ObjC selector: @- setDesiredPushTypes:@
setDesiredPushTypes :: (IsPKPushRegistry pkPushRegistry, IsNSSet value) => pkPushRegistry -> value -> IO ()
setDesiredPushTypes pkPushRegistry value =
  sendMessage pkPushRegistry setDesiredPushTypesSelector (toNSSet value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @pushTokenForType:@
pushTokenForTypeSelector :: Selector '[Id NSString] (Id NSData)
pushTokenForTypeSelector = mkSelector "pushTokenForType:"

-- | @Selector@ for @initWithQueue:@
initWithQueueSelector :: Selector '[Id NSObject] (Id PKPushRegistry)
initWithQueueSelector = mkSelector "initWithQueue:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id PKPushRegistry)
initSelector = mkSelector "init"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @setDelegate:@
setDelegateSelector :: Selector '[RawId] ()
setDelegateSelector = mkSelector "setDelegate:"

-- | @Selector@ for @desiredPushTypes@
desiredPushTypesSelector :: Selector '[] (Id NSSet)
desiredPushTypesSelector = mkSelector "desiredPushTypes"

-- | @Selector@ for @setDesiredPushTypes:@
setDesiredPushTypesSelector :: Selector '[Id NSSet] ()
setDesiredPushTypesSelector = mkSelector "setDesiredPushTypes:"

