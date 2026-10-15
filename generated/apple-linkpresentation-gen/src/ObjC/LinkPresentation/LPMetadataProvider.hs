{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | An LPMetadataProvider object retrieves metadata for a given URL.
--
-- An instance of LPMetadataProvider can only be asked to retrieve metadata once; a new instance should be created for each request.
--
-- A client must have the com.apple.security.network.client entitlement in order to be able to use LPMetadataProvider for remote URLs.
--
-- See: @LPLinkMetadata@
--
-- Generated bindings for @LPMetadataProvider@.
module ObjC.LinkPresentation.LPMetadataProvider
  ( LPMetadataProvider
  , IsLPMetadataProvider(..)
  , startFetchingMetadataForURL_completionHandler
  , startFetchingMetadataForRequest_completionHandler
  , cancel
  , shouldFetchSubresources
  , setShouldFetchSubresources
  , timeout
  , setTimeout
  , cancelSelector
  , setShouldFetchSubresourcesSelector
  , setTimeoutSelector
  , shouldFetchSubresourcesSelector
  , startFetchingMetadataForRequest_completionHandlerSelector
  , startFetchingMetadataForURL_completionHandlerSelector
  , timeoutSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.LinkPresentation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Fetch metadata for the given URL.
--
-- The completion handler will be called on a non-main queue.
--
-- File URLs returned in the resultant LPLinkMetadata will be deleted when the completion handler returns.
--
-- An exception will be thrown if this is called more than once on a particular LPMetadataProvider instance.
--
-- ObjC selector: @- startFetchingMetadataForURL:completionHandler:@
startFetchingMetadataForURL_completionHandler :: (IsLPMetadataProvider lpMetadataProvider, IsNSURL url) => lpMetadataProvider -> url -> Ptr () -> IO ()
startFetchingMetadataForURL_completionHandler lpMetadataProvider url completionHandler =
  sendMessage lpMetadataProvider startFetchingMetadataForURL_completionHandlerSelector (toNSURL url) completionHandler

-- | Fetch metadata for the given NSURLRequest.
--
-- The completion handler will be called on a non-main queue.
--
-- File URLs returned in the resultant LPLinkMetadata will be deleted when the completion handler returns.
--
-- An exception will be thrown if this is called more than once on a particular LPMetadataProvider instance.
--
-- ObjC selector: @- startFetchingMetadataForRequest:completionHandler:@
startFetchingMetadataForRequest_completionHandler :: (IsLPMetadataProvider lpMetadataProvider, IsNSURLRequest request) => lpMetadataProvider -> request -> Ptr () -> IO ()
startFetchingMetadataForRequest_completionHandler lpMetadataProvider request completionHandler =
  sendMessage lpMetadataProvider startFetchingMetadataForRequest_completionHandlerSelector (toNSURLRequest request) completionHandler

-- | Cancel a metadata request.
--
-- If the request had not already completed, the completion handler will be invoked with the error code @LPErrorMetadataFetchCancelled@.
--
-- ObjC selector: @- cancel@
cancel :: IsLPMetadataProvider lpMetadataProvider => lpMetadataProvider -> IO ()
cancel lpMetadataProvider =
  sendMessage lpMetadataProvider cancelSelector

-- | A boolean value indicating whether LPMetadataProvider should download secondary resources specified by the metadata, like the icon, image, or video. If shouldFetchSubresources is set to @NO@, the returned LPLinkMetadata object will consist only of metadata retrieved from the main resource.
--
-- The default value is @YES@.
--
-- ObjC selector: @- shouldFetchSubresources@
shouldFetchSubresources :: IsLPMetadataProvider lpMetadataProvider => lpMetadataProvider -> IO Bool
shouldFetchSubresources lpMetadataProvider =
  sendMessage lpMetadataProvider shouldFetchSubresourcesSelector

-- | A boolean value indicating whether LPMetadataProvider should download secondary resources specified by the metadata, like the icon, image, or video. If shouldFetchSubresources is set to @NO@, the returned LPLinkMetadata object will consist only of metadata retrieved from the main resource.
--
-- The default value is @YES@.
--
-- ObjC selector: @- setShouldFetchSubresources:@
setShouldFetchSubresources :: IsLPMetadataProvider lpMetadataProvider => lpMetadataProvider -> Bool -> IO ()
setShouldFetchSubresources lpMetadataProvider value =
  sendMessage lpMetadataProvider setShouldFetchSubresourcesSelector value

-- | The time interval after which the request will automatically fail if it has not already completed.
--
-- If the timeout is reached, no metadata is returned; the completion handler will be invoked with the error code @LPErrorMetadataFetchTimedOut@.
--
-- The default timeout is 30 seconds.
--
-- ObjC selector: @- timeout@
timeout :: IsLPMetadataProvider lpMetadataProvider => lpMetadataProvider -> IO CDouble
timeout lpMetadataProvider =
  sendMessage lpMetadataProvider timeoutSelector

-- | The time interval after which the request will automatically fail if it has not already completed.
--
-- If the timeout is reached, no metadata is returned; the completion handler will be invoked with the error code @LPErrorMetadataFetchTimedOut@.
--
-- The default timeout is 30 seconds.
--
-- ObjC selector: @- setTimeout:@
setTimeout :: IsLPMetadataProvider lpMetadataProvider => lpMetadataProvider -> CDouble -> IO ()
setTimeout lpMetadataProvider value =
  sendMessage lpMetadataProvider setTimeoutSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @startFetchingMetadataForURL:completionHandler:@
startFetchingMetadataForURL_completionHandlerSelector :: Selector '[Id NSURL, Ptr ()] ()
startFetchingMetadataForURL_completionHandlerSelector = mkSelector "startFetchingMetadataForURL:completionHandler:"

-- | @Selector@ for @startFetchingMetadataForRequest:completionHandler:@
startFetchingMetadataForRequest_completionHandlerSelector :: Selector '[Id NSURLRequest, Ptr ()] ()
startFetchingMetadataForRequest_completionHandlerSelector = mkSelector "startFetchingMetadataForRequest:completionHandler:"

-- | @Selector@ for @cancel@
cancelSelector :: Selector '[] ()
cancelSelector = mkSelector "cancel"

-- | @Selector@ for @shouldFetchSubresources@
shouldFetchSubresourcesSelector :: Selector '[] Bool
shouldFetchSubresourcesSelector = mkSelector "shouldFetchSubresources"

-- | @Selector@ for @setShouldFetchSubresources:@
setShouldFetchSubresourcesSelector :: Selector '[Bool] ()
setShouldFetchSubresourcesSelector = mkSelector "setShouldFetchSubresources:"

-- | @Selector@ for @timeout@
timeoutSelector :: Selector '[] CDouble
timeoutSelector = mkSelector "timeout"

-- | @Selector@ for @setTimeout:@
setTimeoutSelector :: Selector '[CDouble] ()
setTimeoutSelector = mkSelector "setTimeout:"

