{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @STWebHistory@.
module ObjC.ScreenTime.STWebHistory
  ( STWebHistory
  , IsSTWebHistory(..)
  , initWithBundleIdentifier_error
  , deleteHistoryForURL
  , deleteHistoryDuringInterval
  , deleteAllHistory
  , deleteAllHistorySelector
  , deleteHistoryDuringIntervalSelector
  , deleteHistoryForURLSelector
  , initWithBundleIdentifier_errorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScreenTime.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Creates a web history that will delete web usage for the given bundle identifier.
--
-- Using a bundle identifier other than @NSBundle.mainBundle.bundleIdentifier@ is only supported for web browsers that have been properly registered with Screen Time.
--
-- @bundleIdentifier@ — Used to facilitate deletion of a parent web browser's history from one of its helper processes or extensions.
--
-- @error@ — Any error that occurred during initialization.
--
-- ObjC selector: @- initWithBundleIdentifier:error:@
initWithBundleIdentifier_error :: (IsSTWebHistory stWebHistory, IsNSString bundleIdentifier, IsNSError error_) => stWebHistory -> bundleIdentifier -> error_ -> IO (Id STWebHistory)
initWithBundleIdentifier_error stWebHistory bundleIdentifier error_ =
  sendOwnedMessage stWebHistory initWithBundleIdentifier_errorSelector (toNSString bundleIdentifier) (toNSError error_)

-- | @url@ — The URL for which to delete Screen Time usage history. The full URL is used, i.e. the scheme, path, et al. are significant.
--
-- ObjC selector: @- deleteHistoryForURL:@
deleteHistoryForURL :: (IsSTWebHistory stWebHistory, IsNSURL url) => stWebHistory -> url -> IO ()
deleteHistoryForURL stWebHistory url =
  sendMessage stWebHistory deleteHistoryForURLSelector (toNSURL url)

-- | @- deleteHistoryDuringInterval:@
deleteHistoryDuringInterval :: (IsSTWebHistory stWebHistory, IsNSDateInterval interval) => stWebHistory -> interval -> IO ()
deleteHistoryDuringInterval stWebHistory interval =
  sendMessage stWebHistory deleteHistoryDuringIntervalSelector (toNSDateInterval interval)

-- | @- deleteAllHistory@
deleteAllHistory :: IsSTWebHistory stWebHistory => stWebHistory -> IO ()
deleteAllHistory stWebHistory =
  sendMessage stWebHistory deleteAllHistorySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithBundleIdentifier:error:@
initWithBundleIdentifier_errorSelector :: Selector '[Id NSString, Id NSError] (Id STWebHistory)
initWithBundleIdentifier_errorSelector = mkSelector "initWithBundleIdentifier:error:"

-- | @Selector@ for @deleteHistoryForURL:@
deleteHistoryForURLSelector :: Selector '[Id NSURL] ()
deleteHistoryForURLSelector = mkSelector "deleteHistoryForURL:"

-- | @Selector@ for @deleteHistoryDuringInterval:@
deleteHistoryDuringIntervalSelector :: Selector '[Id NSDateInterval] ()
deleteHistoryDuringIntervalSelector = mkSelector "deleteHistoryDuringInterval:"

-- | @Selector@ for @deleteAllHistory@
deleteAllHistorySelector :: Selector '[] ()
deleteAllHistorySelector = mkSelector "deleteAllHistory"

