{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @AVContentKeySession@.
module ObjC.AVFoundation.AVContentKeySession
  ( AVContentKeySession
  , IsAVContentKeySession(..)
  , init_
  , new
  , contentKeySessionWithKeySystem
  , contentKeySessionWithKeySystem_storageDirectoryAtURL
  , setDelegate_queue
  , expire
  , processContentKeyRequestWithIdentifier_initializationData_options
  , renewExpiringResponseDataForContentKeyRequest
  , makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler
  , invalidatePersistableContentKey_options_completionHandler
  , invalidateAllPersistableContentKeysForApp_options_completionHandler
  , pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURL
  , removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURL
  , addContentKeyRecipient
  , removeContentKeyRecipient
  , delegate
  , delegateQueue
  , storageURL
  , keySystem
  , contentProtectionSessionIdentifier
  , contentKeyRecipients
  , addContentKeyRecipientSelector
  , contentKeyRecipientsSelector
  , contentKeySessionWithKeySystemSelector
  , contentKeySessionWithKeySystem_storageDirectoryAtURLSelector
  , contentProtectionSessionIdentifierSelector
  , delegateQueueSelector
  , delegateSelector
  , expireSelector
  , initSelector
  , invalidateAllPersistableContentKeysForApp_options_completionHandlerSelector
  , invalidatePersistableContentKey_options_completionHandlerSelector
  , keySystemSelector
  , makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandlerSelector
  , newSelector
  , pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURLSelector
  , processContentKeyRequestWithIdentifier_initializationData_optionsSelector
  , removeContentKeyRecipientSelector
  , removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURLSelector
  , renewExpiringResponseDataForContentKeyRequestSelector
  , setDelegate_queueSelector
  , storageURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AVFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id AVContentKeySession)
init_ avContentKeySession =
  sendOwnedMessage avContentKeySession initSelector

-- | @+ new@
new :: IO (Id AVContentKeySession)
new  =
  do
    cls' <- getRequiredClass "AVContentKeySession"
    sendOwnedClassMessage cls' newSelector

-- | contentKeySessionWithKeySystem:
--
-- Creates a new instance of AVContentKeySession to manage a collection of media content keys.
--
-- @keySystem@ — A valid key system for retrieving keys.
--
-- Returns: A new AVContentKeySession.
--
-- This method returns an AVContentKeySession instance that is capable of managing collection of media content keys corresponding to the input keySystem. An NSInvalidArgumentException will be raised if the value of keySystem is unsupported.
--
-- ObjC selector: @+ contentKeySessionWithKeySystem:@
contentKeySessionWithKeySystem :: IsNSString keySystem => keySystem -> IO (Id AVContentKeySession)
contentKeySessionWithKeySystem keySystem =
  do
    cls' <- getRequiredClass "AVContentKeySession"
    sendClassMessage cls' contentKeySessionWithKeySystemSelector (toNSString keySystem)

-- | contentKeySessionWithKeySystem:storageDirectoryAtURL:
--
-- Creates a new instance of AVContentKeySession to manage a collection of media content keys.
--
-- @keySystem@ — A valid key system for retrieving keys.
--
-- @storageURL@ — URL to a writable directory that the session will use to facilitate expired session reports after abnormal session termination.
--
-- Returns: A new AVContentKeySession.
--
-- This method returns an AVContentKeySession instance that is capable of managing collection of media content keys corresponding to the input keySystem. An NSInvalidArgumentException will be raised if the value of keySystem is unsupported.
--
-- ObjC selector: @+ contentKeySessionWithKeySystem:storageDirectoryAtURL:@
contentKeySessionWithKeySystem_storageDirectoryAtURL :: (IsNSString keySystem, IsNSURL storageURL) => keySystem -> storageURL -> IO (Id AVContentKeySession)
contentKeySessionWithKeySystem_storageDirectoryAtURL keySystem storageURL =
  do
    cls' <- getRequiredClass "AVContentKeySession"
    sendClassMessage cls' contentKeySessionWithKeySystem_storageDirectoryAtURLSelector (toNSString keySystem) (toNSURL storageURL)

-- | setDelegate:queue:
--
-- Sets the receiver's delegate. A delegate is required to handle content key initialization.
--
-- @delegate@ — An object conforming to the AVContentKeySessionDelegate protocol.
--
-- @delegateQueue@ — A dispatch queue on which delegate methods will be invoked whenever processes requiring content keys are executed asynchronously. Passing a value of nil for the delegateQueue parameter along with a non-nil value for the delegate parameter will result in an invalid argument exception.
--
-- ObjC selector: @- setDelegate:queue:@
setDelegate_queue :: (IsAVContentKeySession avContentKeySession, IsNSObject delegateQueue) => avContentKeySession -> RawId -> delegateQueue -> IO ()
setDelegate_queue avContentKeySession delegate delegateQueue =
  sendMessage avContentKeySession setDelegate_queueSelector delegate (toNSObject delegateQueue)

-- | expire
--
-- Tells the receiver to treat the session as having been intentionally and normally expired.
--
-- When an instance of AVContentKeySession receives an expire message, all of its associated objects conforming to the AVContentKeyRecipient protocol will become inoperable. Send this message only after you have finished operating on the media data.
--
-- ObjC selector: @- expire@
expire :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO ()
expire avContentKeySession =
  sendMessage avContentKeySession expireSelector

-- | processContentKeyRequestWithIdentifier:initializationData:options:
--
-- Informs the receiver that it should attempt to instantiate a content decryption key using the specified initialization data.
--
-- @identifier@ — Container- and protocol-specific identifier to be used to obtain a key response. Either identifier or initializationData must be non-nil. Both can be non-nil, if the content protection protocol requires both.
--
-- @initializationData@ — Container- and protocol-specific data to be used to obtain a key response. Either identifier or initializationData must be non-nil. Both can be non-nil, if the content protection protocol requires both.
--
-- @options@ — Additional information necessary to obtain the key, or nil if none. See AVContentKeyRequest*Key below.
--
-- May be used to generate an AVContentKeyRequest from request initialization data already in hand, without awaiting such data during the processing of media data of an associated recipient.
--
-- ObjC selector: @- processContentKeyRequestWithIdentifier:initializationData:options:@
processContentKeyRequestWithIdentifier_initializationData_options :: (IsAVContentKeySession avContentKeySession, IsNSData initializationData, IsNSDictionary options) => avContentKeySession -> RawId -> initializationData -> options -> IO ()
processContentKeyRequestWithIdentifier_initializationData_options avContentKeySession identifier initializationData options =
  sendMessage avContentKeySession processContentKeyRequestWithIdentifier_initializationData_optionsSelector identifier (toNSData initializationData) (toNSDictionary options)

-- | renewExpiringResponseDataForContentKeyRequest:
--
-- Informs the receiver that the already provided response data for an earlier AVContentKeyRequest will imminently expire.
--
-- In response the receiver will invoke your delegate with a new content key request entreating it to renew the expiring response data, via -contentKeySession:didProvideRenewingContentKeyRequest:.
--
-- ObjC selector: @- renewExpiringResponseDataForContentKeyRequest:@
renewExpiringResponseDataForContentKeyRequest :: (IsAVContentKeySession avContentKeySession, IsAVContentKeyRequest contentKeyRequest) => avContentKeySession -> contentKeyRequest -> IO ()
renewExpiringResponseDataForContentKeyRequest avContentKeySession contentKeyRequest =
  sendMessage avContentKeySession renewExpiringResponseDataForContentKeyRequestSelector (toAVContentKeyRequest contentKeyRequest)

-- | makeSecureTokenForExpirationDateOfPersistableContentKey:completionHandler:
--
-- Creates a secure server playback context (SPC) that the client could send to the key server to obtain an expiration date for the provided persistable content key data.
--
-- @persistableContentKeyData@ — Persistable content key data that was previously created using -[AVContentKeyRequest persistableContentKeyFromKeyVendorResponse:options:error:] or obtained via AVContentKeySessionDelegate callback -contentKeySession:didUpdatePersistableContentKey:forContentKeyIdentifier:.
--
-- @handler@ — Once the secure token is ready, this block will be called with the token or an error describing the failure.
--
-- ObjC selector: @- makeSecureTokenForExpirationDateOfPersistableContentKey:completionHandler:@
makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler :: (IsAVContentKeySession avContentKeySession, IsNSData persistableContentKeyData) => avContentKeySession -> persistableContentKeyData -> Ptr () -> IO ()
makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandler avContentKeySession persistableContentKeyData handler =
  sendMessage avContentKeySession makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandlerSelector (toNSData persistableContentKeyData) handler

-- | invalidatePersistableContentKey:options:completionHandler:
--
-- Invalidates the persistable content key and creates a secure server playback context (SPC) that the client could send to the key server to verify the outcome of invalidation request.
--
-- @persistableContentKeyData@ — Persistable content key data that was previously created using -[AVContentKeyRequest persistableContentKeyFromKeyVendorResponse:options:error:] or obtained via AVContentKeySessionDelegate callback -contentKeySession:didUpdatePersistableContentKey:forContentKeyIdentifier:.
--
-- @options@ — Additional information necessary to generate the server playback context, or nil if none. See AVContentKeySessionServerPlaybackContextOption for supported options.
--
-- @handler@ — Once the server playback context is ready, this block will be called with the data or an error describing the failure.
--
-- Once invalidated, a persistable content key cannot be used to answer key requests during later playback sessions.
--
-- ObjC selector: @- invalidatePersistableContentKey:options:completionHandler:@
invalidatePersistableContentKey_options_completionHandler :: (IsAVContentKeySession avContentKeySession, IsNSData persistableContentKeyData, IsNSDictionary options) => avContentKeySession -> persistableContentKeyData -> options -> Ptr () -> IO ()
invalidatePersistableContentKey_options_completionHandler avContentKeySession persistableContentKeyData options handler =
  sendMessage avContentKeySession invalidatePersistableContentKey_options_completionHandlerSelector (toNSData persistableContentKeyData) (toNSDictionary options) handler

-- | invalidateAllPersistableContentKeysForApp:options:completionHandler:
--
-- Invalidates all persistable content keys associated with the application and creates a secure server playback context (SPC) that the client could send to the key server to verify the outcome of invalidation request.
--
-- @appIdentifier@ — An opaque identifier for the application. The contents of this identifier depend on the particular protocol in use by the entity that controls the use of the media data.
--
-- @options@ — Additional information necessary to generate the server playback context, or nil if none. See AVContentKeySessionServerPlaybackContextOption for supported options.
--
-- @handler@ — Once the server playback context is ready, this block will be called with the data or an error describing the failure.
--
-- Once invalidated, persistable content keys cannot be used to answer key requests during later playback sessions.
--
-- ObjC selector: @- invalidateAllPersistableContentKeysForApp:options:completionHandler:@
invalidateAllPersistableContentKeysForApp_options_completionHandler :: (IsAVContentKeySession avContentKeySession, IsNSData appIdentifier, IsNSDictionary options) => avContentKeySession -> appIdentifier -> options -> Ptr () -> IO ()
invalidateAllPersistableContentKeysForApp_options_completionHandler avContentKeySession appIdentifier options handler =
  sendMessage avContentKeySession invalidateAllPersistableContentKeysForApp_options_completionHandlerSelector (toNSData appIdentifier) (toNSDictionary options) handler

-- | pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:
--
-- Provides "expired session reports" for prior AVContentKeySessions created with the specified app identifier that have expired either normally or abnormally.
--
-- @appIdentifier@ — An opaque identifier for the application. The contents of this identifier depend on the particular protocol in use by the entity that controls the use of the media data.
--
-- @storageURL@ — URL to a directory previously used with one or more instances of AVContentKeySession for the storage of expired session reports.
--
-- Returns: An NSArray containing instances of NSData, each containing a pending expired session report as a property-list serialization of an NSDictionary object. The contents of expired session reports depend on the particular protocol in use by the entity that controls the use of the media data.
--
-- Note that no reports for sessions still in progress will be included.
--
-- ObjC selector: @+ pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:@
pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURL :: (IsNSData appIdentifier, IsNSURL storageURL) => appIdentifier -> storageURL -> IO (Id NSArray)
pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURL appIdentifier storageURL =
  do
    cls' <- getRequiredClass "AVContentKeySession"
    sendClassMessage cls' pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURLSelector (toNSData appIdentifier) (toNSURL storageURL)

-- | removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:
--
-- Removes expired session reports for prior AVContentKeySessions from storage. Once they have been removed, they will no longer be available via subsequent invocations of +pendingExpiredSessionReportsWithAppIdentifier:.
--
-- @expiredSessionReports@ — An array of expired session reports to be discarded.
--
-- @appIdentifier@ — An opaque identifier for the application. The contents of this identifier depend on the particular protocol in use by the entity that controls the use of the media data.
--
-- @storageURL@ — URL to a writable folder.
--
-- This method is most suitable for use only after the specified expired session reports have been sent to the entity that controls the use of the media data and the entity has acknowledged their receipt.
--
-- ObjC selector: @+ removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:@
removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURL :: (IsNSArray expiredSessionReports, IsNSData appIdentifier, IsNSURL storageURL) => expiredSessionReports -> appIdentifier -> storageURL -> IO ()
removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURL expiredSessionReports appIdentifier storageURL =
  do
    cls' <- getRequiredClass "AVContentKeySession"
    sendClassMessage cls' removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURLSelector (toNSArray expiredSessionReports) (toNSData appIdentifier) (toNSURL storageURL)

-- | addContentKeyRecipient:
--
-- Informs the receiver that the specified recipient will be used for the session.
--
-- It is an error to add recipient to sessions that have received an expire message. It is also an error to add recipients after they have already begun to process media data (e.g. after an AVURLAsset has loaded the values of any of its keys). Such errors will result in NSInternalInconsistencyExceptions. Sending this message to an AVContentKeySession is atomic.
--
-- ObjC selector: @- addContentKeyRecipient:@
addContentKeyRecipient :: IsAVContentKeySession avContentKeySession => avContentKeySession -> RawId -> IO ()
addContentKeyRecipient avContentKeySession recipient =
  sendMessage avContentKeySession addContentKeyRecipientSelector recipient

-- | removeContentKeyRecipient:
--
-- Informs the receiver that the specified recipient will no longer be used.
--
-- After the specified recipient is removed from the receiver it will become inoperable. Remove the recipient only after you have finished operating on the media data associated with it. Sending this message to an AVContentKeySession is atomic.
--
-- ObjC selector: @- removeContentKeyRecipient:@
removeContentKeyRecipient :: IsAVContentKeySession avContentKeySession => avContentKeySession -> RawId -> IO ()
removeContentKeyRecipient avContentKeySession recipient =
  sendMessage avContentKeySession removeContentKeyRecipientSelector recipient

-- | delegate
--
-- The receiver's delegate.
--
-- The value of this property is an object conforming to the AVContentKeySessionDelegate protocol. The delegate is set using the setDelegate:queue: method.
--
-- ObjC selector: @- delegate@
delegate :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO RawId
delegate avContentKeySession =
  sendMessage avContentKeySession delegateSelector

-- | delegateQueue
--
-- The dispatch queue on which all delegate methods will be invoked whenever processes requiring content keys are executed asynchronously.
--
-- The value of this property is a dispatch_queue_t. The queue is set using the setDelegate:queue: method.
--
-- ObjC selector: @- delegateQueue@
delegateQueue :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id NSObject)
delegateQueue avContentKeySession =
  sendMessage avContentKeySession delegateQueueSelector

-- | storageURL
--
-- The storage URL provided when the AVContentKeySession was created. May be nil.
--
-- URL to a writable directory; may be nil. The session will use this to facilitate expired session reports after abnormal session termination.
--
-- ObjC selector: @- storageURL@
storageURL :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id NSURL)
storageURL avContentKeySession =
  sendMessage avContentKeySession storageURLSelector

-- | keySystem
--
-- The key system used for retrieving keys
--
-- ObjC selector: @- keySystem@
keySystem :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id NSString)
keySystem avContentKeySession =
  sendMessage avContentKeySession keySystemSelector

-- | contentProtectionSessionIdentifier
--
-- An opaque identifier for the current content protection session.
--
-- May be nil. Will call the delegate's contentKeySessionContentProtectionSessionIdentifierDidChange: when the identifier changes. The protection session ID is a unique string identifier generated by the AVContentKeySession that can be used by the application to identify content key session objects.
--
-- ObjC selector: @- contentProtectionSessionIdentifier@
contentProtectionSessionIdentifier :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id NSData)
contentProtectionSessionIdentifier avContentKeySession =
  sendMessage avContentKeySession contentProtectionSessionIdentifierSelector

-- | contentKeyRecipients
--
-- The array of recipients of content keys currently associated with the AVContentKeySession.
--
-- ObjC selector: @- contentKeyRecipients@
contentKeyRecipients :: IsAVContentKeySession avContentKeySession => avContentKeySession -> IO (Id NSArray)
contentKeyRecipients avContentKeySession =
  sendMessage avContentKeySession contentKeyRecipientsSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id AVContentKeySession)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id AVContentKeySession)
newSelector = mkSelector "new"

-- | @Selector@ for @contentKeySessionWithKeySystem:@
contentKeySessionWithKeySystemSelector :: Selector '[Id NSString] (Id AVContentKeySession)
contentKeySessionWithKeySystemSelector = mkSelector "contentKeySessionWithKeySystem:"

-- | @Selector@ for @contentKeySessionWithKeySystem:storageDirectoryAtURL:@
contentKeySessionWithKeySystem_storageDirectoryAtURLSelector :: Selector '[Id NSString, Id NSURL] (Id AVContentKeySession)
contentKeySessionWithKeySystem_storageDirectoryAtURLSelector = mkSelector "contentKeySessionWithKeySystem:storageDirectoryAtURL:"

-- | @Selector@ for @setDelegate:queue:@
setDelegate_queueSelector :: Selector '[RawId, Id NSObject] ()
setDelegate_queueSelector = mkSelector "setDelegate:queue:"

-- | @Selector@ for @expire@
expireSelector :: Selector '[] ()
expireSelector = mkSelector "expire"

-- | @Selector@ for @processContentKeyRequestWithIdentifier:initializationData:options:@
processContentKeyRequestWithIdentifier_initializationData_optionsSelector :: Selector '[RawId, Id NSData, Id NSDictionary] ()
processContentKeyRequestWithIdentifier_initializationData_optionsSelector = mkSelector "processContentKeyRequestWithIdentifier:initializationData:options:"

-- | @Selector@ for @renewExpiringResponseDataForContentKeyRequest:@
renewExpiringResponseDataForContentKeyRequestSelector :: Selector '[Id AVContentKeyRequest] ()
renewExpiringResponseDataForContentKeyRequestSelector = mkSelector "renewExpiringResponseDataForContentKeyRequest:"

-- | @Selector@ for @makeSecureTokenForExpirationDateOfPersistableContentKey:completionHandler:@
makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandlerSelector :: Selector '[Id NSData, Ptr ()] ()
makeSecureTokenForExpirationDateOfPersistableContentKey_completionHandlerSelector = mkSelector "makeSecureTokenForExpirationDateOfPersistableContentKey:completionHandler:"

-- | @Selector@ for @invalidatePersistableContentKey:options:completionHandler:@
invalidatePersistableContentKey_options_completionHandlerSelector :: Selector '[Id NSData, Id NSDictionary, Ptr ()] ()
invalidatePersistableContentKey_options_completionHandlerSelector = mkSelector "invalidatePersistableContentKey:options:completionHandler:"

-- | @Selector@ for @invalidateAllPersistableContentKeysForApp:options:completionHandler:@
invalidateAllPersistableContentKeysForApp_options_completionHandlerSelector :: Selector '[Id NSData, Id NSDictionary, Ptr ()] ()
invalidateAllPersistableContentKeysForApp_options_completionHandlerSelector = mkSelector "invalidateAllPersistableContentKeysForApp:options:completionHandler:"

-- | @Selector@ for @pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:@
pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURLSelector :: Selector '[Id NSData, Id NSURL] (Id NSArray)
pendingExpiredSessionReportsWithAppIdentifier_storageDirectoryAtURLSelector = mkSelector "pendingExpiredSessionReportsWithAppIdentifier:storageDirectoryAtURL:"

-- | @Selector@ for @removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:@
removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURLSelector :: Selector '[Id NSArray, Id NSData, Id NSURL] ()
removePendingExpiredSessionReports_withAppIdentifier_storageDirectoryAtURLSelector = mkSelector "removePendingExpiredSessionReports:withAppIdentifier:storageDirectoryAtURL:"

-- | @Selector@ for @addContentKeyRecipient:@
addContentKeyRecipientSelector :: Selector '[RawId] ()
addContentKeyRecipientSelector = mkSelector "addContentKeyRecipient:"

-- | @Selector@ for @removeContentKeyRecipient:@
removeContentKeyRecipientSelector :: Selector '[RawId] ()
removeContentKeyRecipientSelector = mkSelector "removeContentKeyRecipient:"

-- | @Selector@ for @delegate@
delegateSelector :: Selector '[] RawId
delegateSelector = mkSelector "delegate"

-- | @Selector@ for @delegateQueue@
delegateQueueSelector :: Selector '[] (Id NSObject)
delegateQueueSelector = mkSelector "delegateQueue"

-- | @Selector@ for @storageURL@
storageURLSelector :: Selector '[] (Id NSURL)
storageURLSelector = mkSelector "storageURL"

-- | @Selector@ for @keySystem@
keySystemSelector :: Selector '[] (Id NSString)
keySystemSelector = mkSelector "keySystem"

-- | @Selector@ for @contentProtectionSessionIdentifier@
contentProtectionSessionIdentifierSelector :: Selector '[] (Id NSData)
contentProtectionSessionIdentifierSelector = mkSelector "contentProtectionSessionIdentifier"

-- | @Selector@ for @contentKeyRecipients@
contentKeyRecipientsSelector :: Selector '[] (Id NSArray)
contentKeyRecipientsSelector = mkSelector "contentKeyRecipients"

