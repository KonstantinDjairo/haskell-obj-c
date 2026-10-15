{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MKPlacemark@.
module ObjC.MapKit.MKPlacemark
  ( MKPlacemark
  , IsMKPlacemark(..)
  , initWithCoordinate
  , initWithCoordinate_addressDictionary
  , initWithCoordinate_postalAddress
  , countryCode
  , countryCodeSelector
  , initWithCoordinateSelector
  , initWithCoordinate_addressDictionarySelector
  , initWithCoordinate_postalAddressSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.MapKit.Internal.Classes
import ObjC.CoreLocation.Internal.Structs
import ObjC.Contacts.Internal.Classes
import ObjC.CoreLocation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithCoordinate:@
initWithCoordinate :: IsMKPlacemark mkPlacemark => mkPlacemark -> CLLocationCoordinate2D -> IO (Id MKPlacemark)
initWithCoordinate mkPlacemark coordinate =
  sendOwnedMessage mkPlacemark initWithCoordinateSelector coordinate

-- | @- initWithCoordinate:addressDictionary:@
initWithCoordinate_addressDictionary :: (IsMKPlacemark mkPlacemark, IsNSDictionary addressDictionary) => mkPlacemark -> CLLocationCoordinate2D -> addressDictionary -> IO (Id MKPlacemark)
initWithCoordinate_addressDictionary mkPlacemark coordinate addressDictionary =
  sendOwnedMessage mkPlacemark initWithCoordinate_addressDictionarySelector coordinate (toNSDictionary addressDictionary)

-- | @- initWithCoordinate:postalAddress:@
initWithCoordinate_postalAddress :: (IsMKPlacemark mkPlacemark, IsCNPostalAddress postalAddress) => mkPlacemark -> CLLocationCoordinate2D -> postalAddress -> IO (Id MKPlacemark)
initWithCoordinate_postalAddress mkPlacemark coordinate postalAddress =
  sendOwnedMessage mkPlacemark initWithCoordinate_postalAddressSelector coordinate (toCNPostalAddress postalAddress)

-- | @- countryCode@
countryCode :: IsMKPlacemark mkPlacemark => mkPlacemark -> IO (Id NSString)
countryCode mkPlacemark =
  sendMessage mkPlacemark countryCodeSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithCoordinate:@
initWithCoordinateSelector :: Selector '[CLLocationCoordinate2D] (Id MKPlacemark)
initWithCoordinateSelector = mkSelector "initWithCoordinate:"

-- | @Selector@ for @initWithCoordinate:addressDictionary:@
initWithCoordinate_addressDictionarySelector :: Selector '[CLLocationCoordinate2D, Id NSDictionary] (Id MKPlacemark)
initWithCoordinate_addressDictionarySelector = mkSelector "initWithCoordinate:addressDictionary:"

-- | @Selector@ for @initWithCoordinate:postalAddress:@
initWithCoordinate_postalAddressSelector :: Selector '[CLLocationCoordinate2D, Id CNPostalAddress] (Id MKPlacemark)
initWithCoordinate_postalAddressSelector = mkSelector "initWithCoordinate:postalAddress:"

-- | @Selector@ for @countryCode@
countryCodeSelector :: Selector '[] (Id NSString)
countryCodeSelector = mkSelector "countryCode"

