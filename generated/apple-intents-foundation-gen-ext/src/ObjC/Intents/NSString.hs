{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSString@.
module ObjC.Intents.NSString
  ( NSString
  , IsNSString(..)
  , deferredLocalizedIntentsStringWithFormat
  , deferredLocalizedIntentsStringWithFormat_fromTable
  , deferredLocalizedIntentsStringWithFormatSelector
  , deferredLocalizedIntentsStringWithFormat_fromTableSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Intents.Internal.Classes
import ObjC.Foundation.Internal.Classes
import Data.String (IsString(..))
import ObjC.Runtime.NSString (pureNSString)

-- | @+ deferredLocalizedIntentsStringWithFormat:@
deferredLocalizedIntentsStringWithFormat :: IsNSString format => format -> IO (Id NSString)
deferredLocalizedIntentsStringWithFormat format =
  do
    cls' <- getRequiredClass "NSString"
    sendClassMessage cls' deferredLocalizedIntentsStringWithFormatSelector (toNSString format)

-- | @+ deferredLocalizedIntentsStringWithFormat:fromTable:@
deferredLocalizedIntentsStringWithFormat_fromTable :: (IsNSString format, IsNSString table) => format -> table -> IO (Id NSString)
deferredLocalizedIntentsStringWithFormat_fromTable format table =
  do
    cls' <- getRequiredClass "NSString"
    sendClassMessage cls' deferredLocalizedIntentsStringWithFormat_fromTableSelector (toNSString format) (toNSString table)


-- | Allows using @OverloadedStrings@ for @Id NSString@.
--
-- >>> :set -XOverloadedStrings
-- >>> let s = "hello" :: Id NSString
instance IsString (Id NSString) where
  fromString = pureNSString
-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @deferredLocalizedIntentsStringWithFormat:@
deferredLocalizedIntentsStringWithFormatSelector :: Selector '[Id NSString] (Id NSString)
deferredLocalizedIntentsStringWithFormatSelector = mkSelector "deferredLocalizedIntentsStringWithFormat:"

-- | @Selector@ for @deferredLocalizedIntentsStringWithFormat:fromTable:@
deferredLocalizedIntentsStringWithFormat_fromTableSelector :: Selector '[Id NSString, Id NSString] (Id NSString)
deferredLocalizedIntentsStringWithFormat_fromTableSelector = mkSelector "deferredLocalizedIntentsStringWithFormat:fromTable:"

