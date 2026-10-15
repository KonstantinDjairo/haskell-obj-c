{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @FIFinderSyncController@.
module ObjC.FinderSync.FIFinderSyncController
  ( FIFinderSyncController
  , IsFIFinderSyncController(..)
  , defaultController
  , setBadgeImage_label_forBadgeIdentifier
  , setBadgeIdentifier_forURL
  , targetedURL
  , selectedItemURLs
  , lastUsedDateForItemWithURL
  , setLastUsedDate_forItemWithURL_completion
  , tagDataForItemWithURL
  , setTagData_forItemWithURL_completion
  , showExtensionManagementInterface
  , directoryURLs
  , setDirectoryURLs
  , extensionEnabled
  , defaultControllerSelector
  , directoryURLsSelector
  , extensionEnabledSelector
  , lastUsedDateForItemWithURLSelector
  , selectedItemURLsSelector
  , setBadgeIdentifier_forURLSelector
  , setBadgeImage_label_forBadgeIdentifierSelector
  , setDirectoryURLsSelector
  , setLastUsedDate_forItemWithURL_completionSelector
  , setTagData_forItemWithURL_completionSelector
  , showExtensionManagementInterfaceSelector
  , tagDataForItemWithURLSelector
  , targetedURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.FinderSync.Internal.Classes
import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ defaultController@
defaultController :: IO (Id FIFinderSyncController)
defaultController  =
  do
    cls' <- getRequiredClass "FIFinderSyncController"
    sendClassMessage cls' defaultControllerSelector

-- | @- setBadgeImage:label:forBadgeIdentifier:@
setBadgeImage_label_forBadgeIdentifier :: (IsFIFinderSyncController fiFinderSyncController, IsNSImage image, IsNSString label, IsNSString badgeID) => fiFinderSyncController -> image -> label -> badgeID -> IO ()
setBadgeImage_label_forBadgeIdentifier fiFinderSyncController image label badgeID =
  sendMessage fiFinderSyncController setBadgeImage_label_forBadgeIdentifierSelector (toNSImage image) (toNSString label) (toNSString badgeID)

-- | @- setBadgeIdentifier:forURL:@
setBadgeIdentifier_forURL :: (IsFIFinderSyncController fiFinderSyncController, IsNSString badgeID, IsNSURL url) => fiFinderSyncController -> badgeID -> url -> IO ()
setBadgeIdentifier_forURL fiFinderSyncController badgeID url =
  sendMessage fiFinderSyncController setBadgeIdentifier_forURLSelector (toNSString badgeID) (toNSURL url)

-- | @- targetedURL@
targetedURL :: IsFIFinderSyncController fiFinderSyncController => fiFinderSyncController -> IO (Id NSURL)
targetedURL fiFinderSyncController =
  sendMessage fiFinderSyncController targetedURLSelector

-- | @- selectedItemURLs@
selectedItemURLs :: IsFIFinderSyncController fiFinderSyncController => fiFinderSyncController -> IO (Id NSArray)
selectedItemURLs fiFinderSyncController =
  sendMessage fiFinderSyncController selectedItemURLsSelector

-- | @- lastUsedDateForItemWithURL:@
lastUsedDateForItemWithURL :: (IsFIFinderSyncController fiFinderSyncController, IsNSURL itemURL) => fiFinderSyncController -> itemURL -> IO (Id NSDate)
lastUsedDateForItemWithURL fiFinderSyncController itemURL =
  sendMessage fiFinderSyncController lastUsedDateForItemWithURLSelector (toNSURL itemURL)

-- | @- setLastUsedDate:forItemWithURL:completion:@
setLastUsedDate_forItemWithURL_completion :: (IsFIFinderSyncController fiFinderSyncController, IsNSDate lastUsedDate, IsNSURL itemURL) => fiFinderSyncController -> lastUsedDate -> itemURL -> Ptr () -> IO ()
setLastUsedDate_forItemWithURL_completion fiFinderSyncController lastUsedDate itemURL completion =
  sendMessage fiFinderSyncController setLastUsedDate_forItemWithURL_completionSelector (toNSDate lastUsedDate) (toNSURL itemURL) completion

-- | @- tagDataForItemWithURL:@
tagDataForItemWithURL :: (IsFIFinderSyncController fiFinderSyncController, IsNSURL itemURL) => fiFinderSyncController -> itemURL -> IO (Id NSData)
tagDataForItemWithURL fiFinderSyncController itemURL =
  sendMessage fiFinderSyncController tagDataForItemWithURLSelector (toNSURL itemURL)

-- | @- setTagData:forItemWithURL:completion:@
setTagData_forItemWithURL_completion :: (IsFIFinderSyncController fiFinderSyncController, IsNSData tagData, IsNSURL itemURL) => fiFinderSyncController -> tagData -> itemURL -> Ptr () -> IO ()
setTagData_forItemWithURL_completion fiFinderSyncController tagData itemURL completion =
  sendMessage fiFinderSyncController setTagData_forItemWithURL_completionSelector (toNSData tagData) (toNSURL itemURL) completion

-- | @+ showExtensionManagementInterface@
showExtensionManagementInterface :: IO ()
showExtensionManagementInterface  =
  do
    cls' <- getRequiredClass "FIFinderSyncController"
    sendClassMessage cls' showExtensionManagementInterfaceSelector

-- | @- directoryURLs@
directoryURLs :: IsFIFinderSyncController fiFinderSyncController => fiFinderSyncController -> IO (Id NSSet)
directoryURLs fiFinderSyncController =
  sendMessage fiFinderSyncController directoryURLsSelector

-- | @- setDirectoryURLs:@
setDirectoryURLs :: (IsFIFinderSyncController fiFinderSyncController, IsNSSet value) => fiFinderSyncController -> value -> IO ()
setDirectoryURLs fiFinderSyncController value =
  sendMessage fiFinderSyncController setDirectoryURLsSelector (toNSSet value)

-- | @+ extensionEnabled@
extensionEnabled :: IO Bool
extensionEnabled  =
  do
    cls' <- getRequiredClass "FIFinderSyncController"
    sendClassMessage cls' extensionEnabledSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @defaultController@
defaultControllerSelector :: Selector '[] (Id FIFinderSyncController)
defaultControllerSelector = mkSelector "defaultController"

-- | @Selector@ for @setBadgeImage:label:forBadgeIdentifier:@
setBadgeImage_label_forBadgeIdentifierSelector :: Selector '[Id NSImage, Id NSString, Id NSString] ()
setBadgeImage_label_forBadgeIdentifierSelector = mkSelector "setBadgeImage:label:forBadgeIdentifier:"

-- | @Selector@ for @setBadgeIdentifier:forURL:@
setBadgeIdentifier_forURLSelector :: Selector '[Id NSString, Id NSURL] ()
setBadgeIdentifier_forURLSelector = mkSelector "setBadgeIdentifier:forURL:"

-- | @Selector@ for @targetedURL@
targetedURLSelector :: Selector '[] (Id NSURL)
targetedURLSelector = mkSelector "targetedURL"

-- | @Selector@ for @selectedItemURLs@
selectedItemURLsSelector :: Selector '[] (Id NSArray)
selectedItemURLsSelector = mkSelector "selectedItemURLs"

-- | @Selector@ for @lastUsedDateForItemWithURL:@
lastUsedDateForItemWithURLSelector :: Selector '[Id NSURL] (Id NSDate)
lastUsedDateForItemWithURLSelector = mkSelector "lastUsedDateForItemWithURL:"

-- | @Selector@ for @setLastUsedDate:forItemWithURL:completion:@
setLastUsedDate_forItemWithURL_completionSelector :: Selector '[Id NSDate, Id NSURL, Ptr ()] ()
setLastUsedDate_forItemWithURL_completionSelector = mkSelector "setLastUsedDate:forItemWithURL:completion:"

-- | @Selector@ for @tagDataForItemWithURL:@
tagDataForItemWithURLSelector :: Selector '[Id NSURL] (Id NSData)
tagDataForItemWithURLSelector = mkSelector "tagDataForItemWithURL:"

-- | @Selector@ for @setTagData:forItemWithURL:completion:@
setTagData_forItemWithURL_completionSelector :: Selector '[Id NSData, Id NSURL, Ptr ()] ()
setTagData_forItemWithURL_completionSelector = mkSelector "setTagData:forItemWithURL:completion:"

-- | @Selector@ for @showExtensionManagementInterface@
showExtensionManagementInterfaceSelector :: Selector '[] ()
showExtensionManagementInterfaceSelector = mkSelector "showExtensionManagementInterface"

-- | @Selector@ for @directoryURLs@
directoryURLsSelector :: Selector '[] (Id NSSet)
directoryURLsSelector = mkSelector "directoryURLs"

-- | @Selector@ for @setDirectoryURLs:@
setDirectoryURLsSelector :: Selector '[Id NSSet] ()
setDirectoryURLsSelector = mkSelector "setDirectoryURLs:"

-- | @Selector@ for @extensionEnabled@
extensionEnabledSelector :: Selector '[] Bool
extensionEnabledSelector = mkSelector "extensionEnabled"

