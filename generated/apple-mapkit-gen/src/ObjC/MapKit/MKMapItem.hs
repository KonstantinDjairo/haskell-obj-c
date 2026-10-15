{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKMapItem@.
module ObjC.MapKit.MKMapItem
  ( MKMapItem
  , IsMKMapItem(..)
  , mapItemForCurrentLocation
  , initWithPlacemark
  , openInMapsWithLaunchOptions
  , openMapsWithItems_launchOptions
  , placemark
  , isCurrentLocation
  , name
  , setName
  , phoneNumber
  , setPhoneNumber
  , url
  , setUrl
  , timeZone
  , setTimeZone
  , pointOfInterestCategory
  , setPointOfInterestCategory
  , initWithPlacemarkSelector
  , isCurrentLocationSelector
  , mapItemForCurrentLocationSelector
  , nameSelector
  , openInMapsWithLaunchOptionsSelector
  , openMapsWithItems_launchOptionsSelector
  , phoneNumberSelector
  , placemarkSelector
  , pointOfInterestCategorySelector
  , setNameSelector
  , setPhoneNumberSelector
  , setPointOfInterestCategorySelector
  , setTimeZoneSelector
  , setUrlSelector
  , timeZoneSelector
  , urlSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MapKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ mapItemForCurrentLocation@
mapItemForCurrentLocation :: IO (Id MKMapItem)
mapItemForCurrentLocation  =
  do
    cls' <- getRequiredClass "MKMapItem"
    sendClassMessage cls' mapItemForCurrentLocationSelector

-- | @- initWithPlacemark:@
initWithPlacemark :: (IsMKMapItem mkMapItem, IsMKPlacemark placemark) => mkMapItem -> placemark -> IO (Id MKMapItem)
initWithPlacemark mkMapItem placemark =
  sendOwnedMessage mkMapItem initWithPlacemarkSelector (toMKPlacemark placemark)

-- | @- openInMapsWithLaunchOptions:@
openInMapsWithLaunchOptions :: (IsMKMapItem mkMapItem, IsNSDictionary launchOptions) => mkMapItem -> launchOptions -> IO Bool
openInMapsWithLaunchOptions mkMapItem launchOptions =
  sendMessage mkMapItem openInMapsWithLaunchOptionsSelector (toNSDictionary launchOptions)

-- | @+ openMapsWithItems:launchOptions:@
openMapsWithItems_launchOptions :: (IsNSArray mapItems, IsNSDictionary launchOptions) => mapItems -> launchOptions -> IO Bool
openMapsWithItems_launchOptions mapItems launchOptions =
  do
    cls' <- getRequiredClass "MKMapItem"
    sendClassMessage cls' openMapsWithItems_launchOptionsSelector (toNSArray mapItems) (toNSDictionary launchOptions)

-- | @- placemark@
placemark :: IsMKMapItem mkMapItem => mkMapItem -> IO (Id MKPlacemark)
placemark mkMapItem =
  sendMessage mkMapItem placemarkSelector

-- | @- isCurrentLocation@
isCurrentLocation :: IsMKMapItem mkMapItem => mkMapItem -> IO Bool
isCurrentLocation mkMapItem =
  sendMessage mkMapItem isCurrentLocationSelector

-- | @- name@
name :: IsMKMapItem mkMapItem => mkMapItem -> IO (Id NSString)
name mkMapItem =
  sendMessage mkMapItem nameSelector

-- | @- setName:@
setName :: (IsMKMapItem mkMapItem, IsNSString value) => mkMapItem -> value -> IO ()
setName mkMapItem value =
  sendMessage mkMapItem setNameSelector (toNSString value)

-- | @- phoneNumber@
phoneNumber :: IsMKMapItem mkMapItem => mkMapItem -> IO (Id NSString)
phoneNumber mkMapItem =
  sendMessage mkMapItem phoneNumberSelector

-- | @- setPhoneNumber:@
setPhoneNumber :: (IsMKMapItem mkMapItem, IsNSString value) => mkMapItem -> value -> IO ()
setPhoneNumber mkMapItem value =
  sendMessage mkMapItem setPhoneNumberSelector (toNSString value)

-- | @- url@
url :: IsMKMapItem mkMapItem => mkMapItem -> IO (Id NSURL)
url mkMapItem =
  sendMessage mkMapItem urlSelector

-- | @- setUrl:@
setUrl :: (IsMKMapItem mkMapItem, IsNSURL value) => mkMapItem -> value -> IO ()
setUrl mkMapItem value =
  sendMessage mkMapItem setUrlSelector (toNSURL value)

-- | @- timeZone@
timeZone :: IsMKMapItem mkMapItem => mkMapItem -> IO RawId
timeZone mkMapItem =
  sendMessage mkMapItem timeZoneSelector

-- | @- setTimeZone:@
setTimeZone :: IsMKMapItem mkMapItem => mkMapItem -> RawId -> IO ()
setTimeZone mkMapItem value =
  sendMessage mkMapItem setTimeZoneSelector value

-- | @- pointOfInterestCategory@
pointOfInterestCategory :: IsMKMapItem mkMapItem => mkMapItem -> IO (Id NSString)
pointOfInterestCategory mkMapItem =
  sendMessage mkMapItem pointOfInterestCategorySelector

-- | @- setPointOfInterestCategory:@
setPointOfInterestCategory :: (IsMKMapItem mkMapItem, IsNSString value) => mkMapItem -> value -> IO ()
setPointOfInterestCategory mkMapItem value =
  sendMessage mkMapItem setPointOfInterestCategorySelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @mapItemForCurrentLocation@
mapItemForCurrentLocationSelector :: Selector '[] (Id MKMapItem)
mapItemForCurrentLocationSelector = mkSelector "mapItemForCurrentLocation"

-- | @Selector@ for @initWithPlacemark:@
initWithPlacemarkSelector :: Selector '[Id MKPlacemark] (Id MKMapItem)
initWithPlacemarkSelector = mkSelector "initWithPlacemark:"

-- | @Selector@ for @openInMapsWithLaunchOptions:@
openInMapsWithLaunchOptionsSelector :: Selector '[Id NSDictionary] Bool
openInMapsWithLaunchOptionsSelector = mkSelector "openInMapsWithLaunchOptions:"

-- | @Selector@ for @openMapsWithItems:launchOptions:@
openMapsWithItems_launchOptionsSelector :: Selector '[Id NSArray, Id NSDictionary] Bool
openMapsWithItems_launchOptionsSelector = mkSelector "openMapsWithItems:launchOptions:"

-- | @Selector@ for @placemark@
placemarkSelector :: Selector '[] (Id MKPlacemark)
placemarkSelector = mkSelector "placemark"

-- | @Selector@ for @isCurrentLocation@
isCurrentLocationSelector :: Selector '[] Bool
isCurrentLocationSelector = mkSelector "isCurrentLocation"

-- | @Selector@ for @name@
nameSelector :: Selector '[] (Id NSString)
nameSelector = mkSelector "name"

-- | @Selector@ for @setName:@
setNameSelector :: Selector '[Id NSString] ()
setNameSelector = mkSelector "setName:"

-- | @Selector@ for @phoneNumber@
phoneNumberSelector :: Selector '[] (Id NSString)
phoneNumberSelector = mkSelector "phoneNumber"

-- | @Selector@ for @setPhoneNumber:@
setPhoneNumberSelector :: Selector '[Id NSString] ()
setPhoneNumberSelector = mkSelector "setPhoneNumber:"

-- | @Selector@ for @url@
urlSelector :: Selector '[] (Id NSURL)
urlSelector = mkSelector "url"

-- | @Selector@ for @setUrl:@
setUrlSelector :: Selector '[Id NSURL] ()
setUrlSelector = mkSelector "setUrl:"

-- | @Selector@ for @timeZone@
timeZoneSelector :: Selector '[] RawId
timeZoneSelector = mkSelector "timeZone"

-- | @Selector@ for @setTimeZone:@
setTimeZoneSelector :: Selector '[RawId] ()
setTimeZoneSelector = mkSelector "setTimeZone:"

-- | @Selector@ for @pointOfInterestCategory@
pointOfInterestCategorySelector :: Selector '[] (Id NSString)
pointOfInterestCategorySelector = mkSelector "pointOfInterestCategory"

-- | @Selector@ for @setPointOfInterestCategory:@
setPointOfInterestCategorySelector :: Selector '[Id NSString] ()
setPointOfInterestCategorySelector = mkSelector "setPointOfInterestCategory:"

