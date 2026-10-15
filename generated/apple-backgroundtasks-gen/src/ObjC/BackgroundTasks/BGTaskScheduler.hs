{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | BGTaskScheduler
--
-- The object you use to schedule deferrable work to be done in the background.
--
-- Generated bindings for @BGTaskScheduler@.
module ObjC.BackgroundTasks.BGTaskScheduler
  ( BGTaskScheduler
  , IsBGTaskScheduler(..)
  , init_
  , new
  , registerForTaskWithIdentifier_usingQueue_launchHandler
  , submitTaskRequest_error
  , cancelTaskRequestWithIdentifier
  , cancelAllTaskRequests
  , sharedScheduler
  , cancelAllTaskRequestsSelector
  , cancelTaskRequestWithIdentifierSelector
  , initSelector
  , newSelector
  , registerForTaskWithIdentifier_usingQueue_launchHandlerSelector
  , sharedSchedulerSelector
  , submitTaskRequest_errorSelector


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
init_ :: IsBGTaskScheduler bgTaskScheduler => bgTaskScheduler -> IO (Id BGTaskScheduler)
init_ bgTaskScheduler =
  sendOwnedMessage bgTaskScheduler initSelector

-- | @+ new@
new :: IO (Id BGTaskScheduler)
new  =
  do
    cls' <- getRequiredClass "BGTaskScheduler"
    sendOwnedClassMessage cls' newSelector

-- | Register a handler to be called for tasks that launch the app.
--
-- @identifier@ — The identifier for the task that will be handled by the provided launch handler.
--
-- @queue@ — The queue on which the launch handler and the expiration handler for the task will be called. The queue should be serial to ensure consistent ordering. If you pass nil, handlers will be called on a background queue.
--
-- @launchHandler@ — The block that will be called when the app is launched for the specified task. The block has no return value and takes a single parameter, task, a BGTask object. Assign an expiration handler to the task's expirationHandler property and call setTaskCompletedWithSuccess: when the background work is complete.
--
-- You must register launch handlers before your application finishes launching. Attempting to register a handler after launch or multiple handlers for the same identifier is an error. Although you may submit task requests from some extensions, only the host app will be launched to handle background work.
--
-- Returns: YES if the handler was registered, or NO if it was not because the provided identifier was not present in the BGTaskSchedulerPermittedIdentifiers array in the app's Info.plist.
--
-- ObjC selector: @- registerForTaskWithIdentifier:usingQueue:launchHandler:@
registerForTaskWithIdentifier_usingQueue_launchHandler :: (IsBGTaskScheduler bgTaskScheduler, IsNSString identifier, IsNSObject queue) => bgTaskScheduler -> identifier -> queue -> Ptr () -> IO Bool
registerForTaskWithIdentifier_usingQueue_launchHandler bgTaskScheduler identifier queue launchHandler =
  sendMessage bgTaskScheduler registerForTaskWithIdentifier_usingQueue_launchHandlerSelector (toNSString identifier) (toNSObject queue) launchHandler

-- | Submit a request to be launched in the background to perform work.
--
-- @taskRequest@ — The task request object representing the parameters of the background task to be scheduled.
--
-- @error@ — If an error occurs, upon return contains an error object that indicates why the request was rejected.
--
-- Submitting a task request with the same identifier as an existing request will replace that request.
--
-- Returns: YES if the request was successfully submitted, NO if there was an error
--
-- ObjC selector: @- submitTaskRequest:error:@
submitTaskRequest_error :: (IsBGTaskScheduler bgTaskScheduler, IsBGTaskRequest taskRequest, IsNSError error_) => bgTaskScheduler -> taskRequest -> error_ -> IO Bool
submitTaskRequest_error bgTaskScheduler taskRequest error_ =
  sendMessage bgTaskScheduler submitTaskRequest_errorSelector (toBGTaskRequest taskRequest) (toNSError error_)

-- | Cancel a previously submitted task request.
--
-- @identifier@ — The identifier of the previously submitted task request to cancel.
--
-- ObjC selector: @- cancelTaskRequestWithIdentifier:@
cancelTaskRequestWithIdentifier :: (IsBGTaskScheduler bgTaskScheduler, IsNSString identifier) => bgTaskScheduler -> identifier -> IO ()
cancelTaskRequestWithIdentifier bgTaskScheduler identifier =
  sendMessage bgTaskScheduler cancelTaskRequestWithIdentifierSelector (toNSString identifier)

-- | Cancel all previously submitted task requests.
--
-- ObjC selector: @- cancelAllTaskRequests@
cancelAllTaskRequests :: IsBGTaskScheduler bgTaskScheduler => bgTaskScheduler -> IO ()
cancelAllTaskRequests bgTaskScheduler =
  sendMessage bgTaskScheduler cancelAllTaskRequestsSelector

-- | @+ sharedScheduler@
sharedScheduler :: IO (Id BGTaskScheduler)
sharedScheduler  =
  do
    cls' <- getRequiredClass "BGTaskScheduler"
    sendClassMessage cls' sharedSchedulerSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id BGTaskScheduler)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id BGTaskScheduler)
newSelector = mkSelector "new"

-- | @Selector@ for @registerForTaskWithIdentifier:usingQueue:launchHandler:@
registerForTaskWithIdentifier_usingQueue_launchHandlerSelector :: Selector '[Id NSString, Id NSObject, Ptr ()] Bool
registerForTaskWithIdentifier_usingQueue_launchHandlerSelector = mkSelector "registerForTaskWithIdentifier:usingQueue:launchHandler:"

-- | @Selector@ for @submitTaskRequest:error:@
submitTaskRequest_errorSelector :: Selector '[Id BGTaskRequest, Id NSError] Bool
submitTaskRequest_errorSelector = mkSelector "submitTaskRequest:error:"

-- | @Selector@ for @cancelTaskRequestWithIdentifier:@
cancelTaskRequestWithIdentifierSelector :: Selector '[Id NSString] ()
cancelTaskRequestWithIdentifierSelector = mkSelector "cancelTaskRequestWithIdentifier:"

-- | @Selector@ for @cancelAllTaskRequests@
cancelAllTaskRequestsSelector :: Selector '[] ()
cancelAllTaskRequestsSelector = mkSelector "cancelAllTaskRequests"

-- | @Selector@ for @sharedScheduler@
sharedSchedulerSelector :: Selector '[] (Id BGTaskScheduler)
sharedSchedulerSelector = mkSelector "sharedScheduler"

