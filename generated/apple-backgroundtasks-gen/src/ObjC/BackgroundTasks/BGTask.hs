{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An abstract class that represents the background work for which the app was launched to handle.
--
-- Subclasses of this type are created by the system and should not be directly instantiated.
--
-- Generated bindings for @BGTask@.
module ObjC.BackgroundTasks.BGTask
  ( BGTask
  , IsBGTask(..)
  , init_
  , new
  , setTaskCompletedWithSuccess
  , identifier
  , expirationHandler
  , setExpirationHandler
  , expirationHandlerSelector
  , identifierSelector
  , initSelector
  , newSelector
  , setExpirationHandlerSelector
  , setTaskCompletedWithSuccessSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.BackgroundTasks.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsBGTask bgTask => bgTask -> IO (Id BGTask)
init_ bgTask =
  sendOwnedMessage bgTask initSelector

-- | @- new@
new :: IsBGTask bgTask => bgTask -> IO (Id BGTask)
new bgTask =
  sendOwnedMessage bgTask newSelector

-- | Marks this task as complete.
--
-- Call this method as soon as the background work associated with this task is complete. The system provides your app with a limited amount of time to finish the task. If you do not call setTaskCompletedWithSuccess: on the task, the system continues to run in the background until all the available time is consumed, wasting battery power. The system suspends the app as soon as all background tasks are complete.
--
-- @success@ — Whether the task was completed successfully. If the task was unsuccessful, you may request the system to try again later by submitting a new task request to the scheduler before calling this method.
--
-- ObjC selector: @- setTaskCompletedWithSuccess:@
setTaskCompletedWithSuccess :: IsBGTask bgTask => bgTask -> Bool -> IO ()
setTaskCompletedWithSuccess bgTask success =
  sendMessage bgTask setTaskCompletedWithSuccessSelector success

-- | The identifier associated with the request used to schedule this background work.
--
-- ObjC selector: @- identifier@
identifier :: IsBGTask bgTask => bgTask -> IO (Id NSString)
identifier bgTask =
  sendMessage bgTask identifierSelector

-- | Called by the system shortly before your app's background time expires.
--
-- There is a limit to how long your app has to perform its background work, and your work may need to be interrupted if system conditions change. Assign a handler to this property to cancel any ongoing tasks, perform any needed cleanup, and then call setTaskCompletedWithSuccess: to signal completion to the system and allow your app to be suspended.This property is cleared after it is called by the system or when setTaskCompletedWithSuccess: is called. This is to mitigate the impact of a retain cycle created by referencing the BGTask instance inside this block.
--
-- ObjC selector: @- expirationHandler@
expirationHandler :: IsBGTask bgTask => bgTask -> IO (Ptr ())
expirationHandler bgTask =
  sendMessage bgTask expirationHandlerSelector

-- | Called by the system shortly before your app's background time expires.
--
-- There is a limit to how long your app has to perform its background work, and your work may need to be interrupted if system conditions change. Assign a handler to this property to cancel any ongoing tasks, perform any needed cleanup, and then call setTaskCompletedWithSuccess: to signal completion to the system and allow your app to be suspended.This property is cleared after it is called by the system or when setTaskCompletedWithSuccess: is called. This is to mitigate the impact of a retain cycle created by referencing the BGTask instance inside this block.
--
-- ObjC selector: @- setExpirationHandler:@
setExpirationHandler :: IsBGTask bgTask => bgTask -> Ptr () -> IO ()
setExpirationHandler bgTask value =
  sendMessage bgTask setExpirationHandlerSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id BGTask)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id BGTask)
newSelector = mkSelector "new"

-- | @Selector@ for @setTaskCompletedWithSuccess:@
setTaskCompletedWithSuccessSelector :: Selector '[Bool] ()
setTaskCompletedWithSuccessSelector = mkSelector "setTaskCompletedWithSuccess:"

-- | @Selector@ for @identifier@
identifierSelector :: Selector '[] (Id NSString)
identifierSelector = mkSelector "identifier"

-- | @Selector@ for @expirationHandler@
expirationHandlerSelector :: Selector '[] (Ptr ())
expirationHandlerSelector = mkSelector "expirationHandler"

-- | @Selector@ for @setExpirationHandler:@
setExpirationHandlerSelector :: Selector '[Ptr ()] ()
setExpirationHandlerSelector = mkSelector "setExpirationHandler:"

