{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | CKFetchNotificationChangesOperation
--
-- An operation that fetches all notification changes.
--
-- If a change token from a previous @CKFetchNotificationChangesOperation@ is passed in, only the notifications that have changed since that token will be fetched.  If this is your first fetch, pass nil for the change token.  Change tokens are opaque tokens and clients should not infer any behavior based on their content.
--
-- Generated bindings for @CKFetchNotificationChangesOperation@.
module ObjC.CloudKit.CKFetchNotificationChangesOperation
  ( CKFetchNotificationChangesOperation
  , IsCKFetchNotificationChangesOperation(..)
  , init_
  , initWithPreviousServerChangeToken
  , previousServerChangeToken
  , setPreviousServerChangeToken
  , resultsLimit
  , setResultsLimit
  , moreComing
  , notificationChangedBlock
  , setNotificationChangedBlock
  , fetchNotificationChangesCompletionBlock
  , setFetchNotificationChangesCompletionBlock
  , fetchNotificationChangesCompletionBlockSelector
  , initSelector
  , initWithPreviousServerChangeTokenSelector
  , moreComingSelector
  , notificationChangedBlockSelector
  , previousServerChangeTokenSelector
  , resultsLimitSelector
  , setFetchNotificationChangesCompletionBlockSelector
  , setNotificationChangedBlockSelector
  , setPreviousServerChangeTokenSelector
  , setResultsLimitSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CloudKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO (Id CKFetchNotificationChangesOperation)
init_ ckFetchNotificationChangesOperation =
  sendOwnedMessage ckFetchNotificationChangesOperation initSelector

-- | @- initWithPreviousServerChangeToken:@
initWithPreviousServerChangeToken :: (IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation, IsCKServerChangeToken previousServerChangeToken) => ckFetchNotificationChangesOperation -> previousServerChangeToken -> IO (Id CKFetchNotificationChangesOperation)
initWithPreviousServerChangeToken ckFetchNotificationChangesOperation previousServerChangeToken =
  sendOwnedMessage ckFetchNotificationChangesOperation initWithPreviousServerChangeTokenSelector (toCKServerChangeToken previousServerChangeToken)

-- | @- previousServerChangeToken@
previousServerChangeToken :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO (Id CKServerChangeToken)
previousServerChangeToken ckFetchNotificationChangesOperation =
  sendMessage ckFetchNotificationChangesOperation previousServerChangeTokenSelector

-- | @- setPreviousServerChangeToken:@
setPreviousServerChangeToken :: (IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation, IsCKServerChangeToken value) => ckFetchNotificationChangesOperation -> value -> IO ()
setPreviousServerChangeToken ckFetchNotificationChangesOperation value =
  sendMessage ckFetchNotificationChangesOperation setPreviousServerChangeTokenSelector (toCKServerChangeToken value)

-- | @- resultsLimit@
resultsLimit :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO CULong
resultsLimit ckFetchNotificationChangesOperation =
  sendMessage ckFetchNotificationChangesOperation resultsLimitSelector

-- | @- setResultsLimit:@
setResultsLimit :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> CULong -> IO ()
setResultsLimit ckFetchNotificationChangesOperation value =
  sendMessage ckFetchNotificationChangesOperation setResultsLimitSelector value

-- | If true, then the server wasn't able to return all the changes in this response.
--
-- Will be set before @fetchNotificationChangesCompletionBlock@ is called.  Another @CKFetchNotificationChangesOperation@ operation should be run with the updated @serverChangeToken@ token from this operation.
--
-- ObjC selector: @- moreComing@
moreComing :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO Bool
moreComing ckFetchNotificationChangesOperation =
  sendMessage ckFetchNotificationChangesOperation moreComingSelector

-- | Called once for each updated notification fetch from the server
--
-- Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- notificationChangedBlock@
notificationChangedBlock :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO (Ptr ())
notificationChangedBlock ckFetchNotificationChangesOperation =
  sendMessage ckFetchNotificationChangesOperation notificationChangedBlockSelector

-- | Called once for each updated notification fetch from the server
--
-- Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- setNotificationChangedBlock:@
setNotificationChangedBlock :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> Ptr () -> IO ()
setNotificationChangedBlock ckFetchNotificationChangesOperation value =
  sendMessage ckFetchNotificationChangesOperation setNotificationChangedBlockSelector value

-- | This block is called when the operation completes.
--
-- Clients are responsible for saving the change token at the end of the operation and passing it in to the next call to @CKFetchNotificationChangesOperation.@  Note that a fetch can fail partway. If that happens, an updated change token may be returned in the completion block so that already fetched notifications don't need to be re-downloaded on a subsequent operation.  If the server returns a @CKErrorChangeTokenExpired@ error, the @previousServerChangeToken@ value was too old and the client should toss its local cache and re-fetch notification changes starting with a nil @previousServerChangeToken.@  Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- fetchNotificationChangesCompletionBlock@
fetchNotificationChangesCompletionBlock :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> IO (Ptr ())
fetchNotificationChangesCompletionBlock ckFetchNotificationChangesOperation =
  sendMessage ckFetchNotificationChangesOperation fetchNotificationChangesCompletionBlockSelector

-- | This block is called when the operation completes.
--
-- Clients are responsible for saving the change token at the end of the operation and passing it in to the next call to @CKFetchNotificationChangesOperation.@  Note that a fetch can fail partway. If that happens, an updated change token may be returned in the completion block so that already fetched notifications don't need to be re-downloaded on a subsequent operation.  If the server returns a @CKErrorChangeTokenExpired@ error, the @previousServerChangeToken@ value was too old and the client should toss its local cache and re-fetch notification changes starting with a nil @previousServerChangeToken.@  Each @CKOperation@ instance has a private serial queue. This queue is used for all callback block invocations.
--
-- ObjC selector: @- setFetchNotificationChangesCompletionBlock:@
setFetchNotificationChangesCompletionBlock :: IsCKFetchNotificationChangesOperation ckFetchNotificationChangesOperation => ckFetchNotificationChangesOperation -> Ptr () -> IO ()
setFetchNotificationChangesCompletionBlock ckFetchNotificationChangesOperation value =
  sendMessage ckFetchNotificationChangesOperation setFetchNotificationChangesCompletionBlockSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id CKFetchNotificationChangesOperation)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithPreviousServerChangeToken:@
initWithPreviousServerChangeTokenSelector :: Selector '[Id CKServerChangeToken] (Id CKFetchNotificationChangesOperation)
initWithPreviousServerChangeTokenSelector = mkSelector "initWithPreviousServerChangeToken:"

-- | @Selector@ for @previousServerChangeToken@
previousServerChangeTokenSelector :: Selector '[] (Id CKServerChangeToken)
previousServerChangeTokenSelector = mkSelector "previousServerChangeToken"

-- | @Selector@ for @setPreviousServerChangeToken:@
setPreviousServerChangeTokenSelector :: Selector '[Id CKServerChangeToken] ()
setPreviousServerChangeTokenSelector = mkSelector "setPreviousServerChangeToken:"

-- | @Selector@ for @resultsLimit@
resultsLimitSelector :: Selector '[] CULong
resultsLimitSelector = mkSelector "resultsLimit"

-- | @Selector@ for @setResultsLimit:@
setResultsLimitSelector :: Selector '[CULong] ()
setResultsLimitSelector = mkSelector "setResultsLimit:"

-- | @Selector@ for @moreComing@
moreComingSelector :: Selector '[] Bool
moreComingSelector = mkSelector "moreComing"

-- | @Selector@ for @notificationChangedBlock@
notificationChangedBlockSelector :: Selector '[] (Ptr ())
notificationChangedBlockSelector = mkSelector "notificationChangedBlock"

-- | @Selector@ for @setNotificationChangedBlock:@
setNotificationChangedBlockSelector :: Selector '[Ptr ()] ()
setNotificationChangedBlockSelector = mkSelector "setNotificationChangedBlock:"

-- | @Selector@ for @fetchNotificationChangesCompletionBlock@
fetchNotificationChangesCompletionBlockSelector :: Selector '[] (Ptr ())
fetchNotificationChangesCompletionBlockSelector = mkSelector "fetchNotificationChangesCompletionBlock"

-- | @Selector@ for @setFetchNotificationChangesCompletionBlock:@
setFetchNotificationChangesCompletionBlockSelector :: Selector '[Ptr ()] ()
setFetchNotificationChangesCompletionBlockSelector = mkSelector "setFetchNotificationChangesCompletionBlock:"

