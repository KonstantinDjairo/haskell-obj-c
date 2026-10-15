{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchPostalAddress@.
module ObjC.DataDetection.DDMatchPostalAddress
  ( DDMatchPostalAddress
  , IsDDMatchPostalAddress(..)
  , street
  , city
  , state
  , postalCode
  , country
  , citySelector
  , countrySelector
  , postalCodeSelector
  , stateSelector
  , streetSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- street@
street :: IsDDMatchPostalAddress ddMatchPostalAddress => ddMatchPostalAddress -> IO (Id NSString)
street ddMatchPostalAddress =
  sendMessage ddMatchPostalAddress streetSelector

-- | @- city@
city :: IsDDMatchPostalAddress ddMatchPostalAddress => ddMatchPostalAddress -> IO (Id NSString)
city ddMatchPostalAddress =
  sendMessage ddMatchPostalAddress citySelector

-- | @- state@
state :: IsDDMatchPostalAddress ddMatchPostalAddress => ddMatchPostalAddress -> IO (Id NSString)
state ddMatchPostalAddress =
  sendMessage ddMatchPostalAddress stateSelector

-- | @- postalCode@
postalCode :: IsDDMatchPostalAddress ddMatchPostalAddress => ddMatchPostalAddress -> IO (Id NSString)
postalCode ddMatchPostalAddress =
  sendMessage ddMatchPostalAddress postalCodeSelector

-- | @- country@
country :: IsDDMatchPostalAddress ddMatchPostalAddress => ddMatchPostalAddress -> IO (Id NSString)
country ddMatchPostalAddress =
  sendMessage ddMatchPostalAddress countrySelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @street@
streetSelector :: Selector '[] (Id NSString)
streetSelector = mkSelector "street"

-- | @Selector@ for @city@
citySelector :: Selector '[] (Id NSString)
citySelector = mkSelector "city"

-- | @Selector@ for @state@
stateSelector :: Selector '[] (Id NSString)
stateSelector = mkSelector "state"

-- | @Selector@ for @postalCode@
postalCodeSelector :: Selector '[] (Id NSString)
postalCodeSelector = mkSelector "postalCode"

-- | @Selector@ for @country@
countrySelector :: Selector '[] (Id NSString)
countrySelector = mkSelector "country"

