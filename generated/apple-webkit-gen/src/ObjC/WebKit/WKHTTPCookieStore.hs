{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | A WKHTTPCookieStore object allows managing the HTTP cookies associated with a particular WKWebsiteDataStore.
--
-- Generated bindings for @WKHTTPCookieStore@.
module ObjC.WebKit.WKHTTPCookieStore
  ( WKHTTPCookieStore
  , IsWKHTTPCookieStore(..)
  , init_
  , setCookie_completionHandler
  , deleteCookie_completionHandler
  , addObserver
  , removeObserver
  , addObserverSelector
  , deleteCookie_completionHandlerSelector
  , initSelector
  , removeObserverSelector
  , setCookie_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.WebKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsWKHTTPCookieStore wkhttpCookieStore => wkhttpCookieStore -> IO (Id WKHTTPCookieStore)
init_ wkhttpCookieStore =
  sendOwnedMessage wkhttpCookieStore initSelector

-- | Set a cookie.
--
-- @cookie@ — The cookie to set.
--
-- @completionHandler@ — A block to invoke once the cookie has been stored.
--
-- ObjC selector: @- setCookie:completionHandler:@
setCookie_completionHandler :: (IsWKHTTPCookieStore wkhttpCookieStore, IsNSHTTPCookie cookie) => wkhttpCookieStore -> cookie -> Ptr () -> IO ()
setCookie_completionHandler wkhttpCookieStore cookie completionHandler =
  sendMessage wkhttpCookieStore setCookie_completionHandlerSelector (toNSHTTPCookie cookie) completionHandler

-- | Delete the specified cookie.
--
-- @completionHandler@ — A block to invoke once the cookie has been deleted.
--
-- ObjC selector: @- deleteCookie:completionHandler:@
deleteCookie_completionHandler :: (IsWKHTTPCookieStore wkhttpCookieStore, IsNSHTTPCookie cookie) => wkhttpCookieStore -> cookie -> Ptr () -> IO ()
deleteCookie_completionHandler wkhttpCookieStore cookie completionHandler =
  sendMessage wkhttpCookieStore deleteCookie_completionHandlerSelector (toNSHTTPCookie cookie) completionHandler

-- | Adds a WKHTTPCookieStoreObserver object with the cookie store.
--
-- @observer@ — The observer object to add.
--
-- The observer is not retained by the receiver. It is your responsibility to unregister the observer before it becomes invalid.
--
-- ObjC selector: @- addObserver:@
addObserver :: IsWKHTTPCookieStore wkhttpCookieStore => wkhttpCookieStore -> RawId -> IO ()
addObserver wkhttpCookieStore observer =
  sendMessage wkhttpCookieStore addObserverSelector observer

-- | Removes a WKHTTPCookieStoreObserver object from the cookie store.
--
-- @observer@ — The observer to remove.
--
-- ObjC selector: @- removeObserver:@
removeObserver :: IsWKHTTPCookieStore wkhttpCookieStore => wkhttpCookieStore -> RawId -> IO ()
removeObserver wkhttpCookieStore observer =
  sendMessage wkhttpCookieStore removeObserverSelector observer

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id WKHTTPCookieStore)
initSelector = mkSelector "init"

-- | @Selector@ for @setCookie:completionHandler:@
setCookie_completionHandlerSelector :: Selector '[Id NSHTTPCookie, Ptr ()] ()
setCookie_completionHandlerSelector = mkSelector "setCookie:completionHandler:"

-- | @Selector@ for @deleteCookie:completionHandler:@
deleteCookie_completionHandlerSelector :: Selector '[Id NSHTTPCookie, Ptr ()] ()
deleteCookie_completionHandlerSelector = mkSelector "deleteCookie:completionHandler:"

-- | @Selector@ for @addObserver:@
addObserverSelector :: Selector '[RawId] ()
addObserverSelector = mkSelector "addObserver:"

-- | @Selector@ for @removeObserver:@
removeObserverSelector :: Selector '[RawId] ()
removeObserverSelector = mkSelector "removeObserver:"

