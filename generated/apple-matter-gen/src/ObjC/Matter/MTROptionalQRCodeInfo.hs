{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTROptionalQRCodeInfo@.
module ObjC.Matter.MTROptionalQRCodeInfo
  ( MTROptionalQRCodeInfo
  , IsMTROptionalQRCodeInfo(..)
  , infoType
  , setInfoType
  , tag
  , setTag
  , integerValue
  , setIntegerValue
  , stringValue
  , setStringValue
  , infoTypeSelector
  , integerValueSelector
  , setInfoTypeSelector
  , setIntegerValueSelector
  , setStringValueSelector
  , setTagSelector
  , stringValueSelector
  , tagSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- infoType@
infoType :: IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo => mtrOptionalQRCodeInfo -> IO (Id NSNumber)
infoType mtrOptionalQRCodeInfo =
  sendMessage mtrOptionalQRCodeInfo infoTypeSelector

-- | @- setInfoType:@
setInfoType :: (IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo, IsNSNumber value) => mtrOptionalQRCodeInfo -> value -> IO ()
setInfoType mtrOptionalQRCodeInfo value =
  sendMessage mtrOptionalQRCodeInfo setInfoTypeSelector (toNSNumber value)

-- | @- tag@
tag :: IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo => mtrOptionalQRCodeInfo -> IO (Id NSNumber)
tag mtrOptionalQRCodeInfo =
  sendMessage mtrOptionalQRCodeInfo tagSelector

-- | @- setTag:@
setTag :: (IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo, IsNSNumber value) => mtrOptionalQRCodeInfo -> value -> IO ()
setTag mtrOptionalQRCodeInfo value =
  sendMessage mtrOptionalQRCodeInfo setTagSelector (toNSNumber value)

-- | @- integerValue@
integerValue :: IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo => mtrOptionalQRCodeInfo -> IO (Id NSNumber)
integerValue mtrOptionalQRCodeInfo =
  sendMessage mtrOptionalQRCodeInfo integerValueSelector

-- | @- setIntegerValue:@
setIntegerValue :: (IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo, IsNSNumber value) => mtrOptionalQRCodeInfo -> value -> IO ()
setIntegerValue mtrOptionalQRCodeInfo value =
  sendMessage mtrOptionalQRCodeInfo setIntegerValueSelector (toNSNumber value)

-- | @- stringValue@
stringValue :: IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo => mtrOptionalQRCodeInfo -> IO (Id NSString)
stringValue mtrOptionalQRCodeInfo =
  sendMessage mtrOptionalQRCodeInfo stringValueSelector

-- | @- setStringValue:@
setStringValue :: (IsMTROptionalQRCodeInfo mtrOptionalQRCodeInfo, IsNSString value) => mtrOptionalQRCodeInfo -> value -> IO ()
setStringValue mtrOptionalQRCodeInfo value =
  sendMessage mtrOptionalQRCodeInfo setStringValueSelector (toNSString value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @infoType@
infoTypeSelector :: Selector '[] (Id NSNumber)
infoTypeSelector = mkSelector "infoType"

-- | @Selector@ for @setInfoType:@
setInfoTypeSelector :: Selector '[Id NSNumber] ()
setInfoTypeSelector = mkSelector "setInfoType:"

-- | @Selector@ for @tag@
tagSelector :: Selector '[] (Id NSNumber)
tagSelector = mkSelector "tag"

-- | @Selector@ for @setTag:@
setTagSelector :: Selector '[Id NSNumber] ()
setTagSelector = mkSelector "setTag:"

-- | @Selector@ for @integerValue@
integerValueSelector :: Selector '[] (Id NSNumber)
integerValueSelector = mkSelector "integerValue"

-- | @Selector@ for @setIntegerValue:@
setIntegerValueSelector :: Selector '[Id NSNumber] ()
setIntegerValueSelector = mkSelector "setIntegerValue:"

-- | @Selector@ for @stringValue@
stringValueSelector :: Selector '[] (Id NSString)
stringValueSelector = mkSelector "stringValue"

-- | @Selector@ for @setStringValue:@
setStringValueSelector :: Selector '[Id NSString] ()
setStringValueSelector = mkSelector "setStringValue:"

