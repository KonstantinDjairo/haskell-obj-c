{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @BAURLDownload@.
module ObjC.BackgroundAssets.BAURLDownload
  ( BAURLDownload
  , IsBAURLDownload(..)
  , new
  , init_
  , initWithIdentifier_request_applicationGroupIdentifier
  , initWithIdentifier_request_applicationGroupIdentifier_priority
  , initSelector
  , initWithIdentifier_request_applicationGroupIdentifierSelector
  , initWithIdentifier_request_applicationGroupIdentifier_prioritySelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.BackgroundAssets.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ new@
new :: IO (Id BAURLDownload)
new  =
  do
    cls' <- getRequiredClass "BAURLDownload"
    sendOwnedClassMessage cls' newSelector

-- | @- init@
init_ :: IsBAURLDownload baurlDownload => baurlDownload -> IO (Id BAURLDownload)
init_ baurlDownload =
  sendOwnedMessage baurlDownload initSelector

-- | Inits a download object to represent the download of a asset at a url represented in @request@
--
-- Inits a download object to represent a download of a asset at a url wrapped in @request.@ This URL most be of the scheme https. The download object then holds onto the state and callbacks for managing the states of download while the service handles.
--
-- @request@ — The request to use to start the download.
--
-- @applicationGroupIdentifier@ — The identifier of the application group that should used to store the finished download.
--
-- ObjC selector: @- initWithIdentifier:request:applicationGroupIdentifier:@
initWithIdentifier_request_applicationGroupIdentifier :: (IsBAURLDownload baurlDownload, IsNSString identifier, IsNSURLRequest request, IsNSString applicationGroupIdentifier) => baurlDownload -> identifier -> request -> applicationGroupIdentifier -> IO (Id BAURLDownload)
initWithIdentifier_request_applicationGroupIdentifier baurlDownload identifier request applicationGroupIdentifier =
  sendOwnedMessage baurlDownload initWithIdentifier_request_applicationGroupIdentifierSelector (toNSString identifier) (toNSURLRequest request) (toNSString applicationGroupIdentifier)

-- | Inits a download object to represent the download of a asset at a url represented in @request@
--
-- Inits a download object to represent a download of a asset at a url wrapped in @request.@ This URL most be of the scheme https. The download object then holds onto the state and callbacks for managing the states of download while the service handles.
--
-- @request@ — The request to use to start the download.
--
-- @applicationGroupIdentifier@ — The identifier of the application group that should used to store the finished download.
--
-- @priority@ — A unsigned integer priority between BADownloaderPriorityMin - BADownloaderPriorityMax which is used to order the downloads for this process.
--
-- ObjC selector: @- initWithIdentifier:request:applicationGroupIdentifier:priority:@
initWithIdentifier_request_applicationGroupIdentifier_priority :: (IsBAURLDownload baurlDownload, IsNSString identifier, IsNSURLRequest request, IsNSString applicationGroupIdentifier) => baurlDownload -> identifier -> request -> applicationGroupIdentifier -> CLong -> IO (Id BAURLDownload)
initWithIdentifier_request_applicationGroupIdentifier_priority baurlDownload identifier request applicationGroupIdentifier priority =
  sendOwnedMessage baurlDownload initWithIdentifier_request_applicationGroupIdentifier_prioritySelector (toNSString identifier) (toNSURLRequest request) (toNSString applicationGroupIdentifier) priority

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id BAURLDownload)
newSelector = mkSelector "new"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id BAURLDownload)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithIdentifier:request:applicationGroupIdentifier:@
initWithIdentifier_request_applicationGroupIdentifierSelector :: Selector '[Id NSString, Id NSURLRequest, Id NSString] (Id BAURLDownload)
initWithIdentifier_request_applicationGroupIdentifierSelector = mkSelector "initWithIdentifier:request:applicationGroupIdentifier:"

-- | @Selector@ for @initWithIdentifier:request:applicationGroupIdentifier:priority:@
initWithIdentifier_request_applicationGroupIdentifier_prioritySelector :: Selector '[Id NSString, Id NSURLRequest, Id NSString, CLong] (Id BAURLDownload)
initWithIdentifier_request_applicationGroupIdentifier_prioritySelector = mkSelector "initWithIdentifier:request:applicationGroupIdentifier:priority:"

