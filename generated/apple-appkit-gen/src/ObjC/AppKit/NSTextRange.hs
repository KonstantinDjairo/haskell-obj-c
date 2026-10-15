{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @NSTextRange@.
module ObjC.AppKit.NSTextRange
  ( NSTextRange
  , IsNSTextRange(..)
  , initWithLocation_endLocation
  , initWithLocation
  , init_
  , new
  , isEqualToTextRange
  , containsLocation
  , containsRange
  , intersectsWithTextRange
  , textRangeByIntersectingWithTextRange
  , textRangeByFormingUnionWithTextRange
  , empty
  , location
  , endLocation
  , containsLocationSelector
  , containsRangeSelector
  , emptySelector
  , endLocationSelector
  , initSelector
  , initWithLocationSelector
  , initWithLocation_endLocationSelector
  , intersectsWithTextRangeSelector
  , isEqualToTextRangeSelector
  , locationSelector
  , newSelector
  , textRangeByFormingUnionWithTextRangeSelector
  , textRangeByIntersectingWithTextRangeSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AppKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- initWithLocation:endLocation:@
initWithLocation_endLocation :: IsNSTextRange nsTextRange => nsTextRange -> RawId -> RawId -> IO (Id NSTextRange)
initWithLocation_endLocation nsTextRange location endLocation =
  sendOwnedMessage nsTextRange initWithLocation_endLocationSelector location endLocation

-- | @- initWithLocation:@
initWithLocation :: IsNSTextRange nsTextRange => nsTextRange -> RawId -> IO (Id NSTextRange)
initWithLocation nsTextRange location =
  sendOwnedMessage nsTextRange initWithLocationSelector location

-- | @- init@
init_ :: IsNSTextRange nsTextRange => nsTextRange -> IO (Id NSTextRange)
init_ nsTextRange =
  sendOwnedMessage nsTextRange initSelector

-- | @+ new@
new :: IO (Id NSTextRange)
new  =
  do
    cls' <- getRequiredClass "NSTextRange"
    sendOwnedClassMessage cls' newSelector

-- | @- isEqualToTextRange:@
isEqualToTextRange :: (IsNSTextRange nsTextRange, IsNSTextRange textRange) => nsTextRange -> textRange -> IO Bool
isEqualToTextRange nsTextRange textRange =
  sendMessage nsTextRange isEqualToTextRangeSelector (toNSTextRange textRange)

-- | @- containsLocation:@
containsLocation :: IsNSTextRange nsTextRange => nsTextRange -> RawId -> IO Bool
containsLocation nsTextRange location =
  sendMessage nsTextRange containsLocationSelector location

-- | @- containsRange:@
containsRange :: (IsNSTextRange nsTextRange, IsNSTextRange textRange) => nsTextRange -> textRange -> IO Bool
containsRange nsTextRange textRange =
  sendMessage nsTextRange containsRangeSelector (toNSTextRange textRange)

-- | @- intersectsWithTextRange:@
intersectsWithTextRange :: (IsNSTextRange nsTextRange, IsNSTextRange textRange) => nsTextRange -> textRange -> IO Bool
intersectsWithTextRange nsTextRange textRange =
  sendMessage nsTextRange intersectsWithTextRangeSelector (toNSTextRange textRange)

-- | @- textRangeByIntersectingWithTextRange:@
textRangeByIntersectingWithTextRange :: (IsNSTextRange nsTextRange, IsNSTextRange textRange) => nsTextRange -> textRange -> IO (Id NSTextRange)
textRangeByIntersectingWithTextRange nsTextRange textRange =
  sendMessage nsTextRange textRangeByIntersectingWithTextRangeSelector (toNSTextRange textRange)

-- | @- textRangeByFormingUnionWithTextRange:@
textRangeByFormingUnionWithTextRange :: (IsNSTextRange nsTextRange, IsNSTextRange textRange) => nsTextRange -> textRange -> IO (Id NSTextRange)
textRangeByFormingUnionWithTextRange nsTextRange textRange =
  sendMessage nsTextRange textRangeByFormingUnionWithTextRangeSelector (toNSTextRange textRange)

-- | @- empty@
empty :: IsNSTextRange nsTextRange => nsTextRange -> IO Bool
empty nsTextRange =
  sendMessage nsTextRange emptySelector

-- | @- location@
location :: IsNSTextRange nsTextRange => nsTextRange -> IO RawId
location nsTextRange =
  sendMessage nsTextRange locationSelector

-- | @- endLocation@
endLocation :: IsNSTextRange nsTextRange => nsTextRange -> IO RawId
endLocation nsTextRange =
  sendMessage nsTextRange endLocationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @initWithLocation:endLocation:@
initWithLocation_endLocationSelector :: Selector '[RawId, RawId] (Id NSTextRange)
initWithLocation_endLocationSelector = mkSelector "initWithLocation:endLocation:"

-- | @Selector@ for @initWithLocation:@
initWithLocationSelector :: Selector '[RawId] (Id NSTextRange)
initWithLocationSelector = mkSelector "initWithLocation:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id NSTextRange)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id NSTextRange)
newSelector = mkSelector "new"

-- | @Selector@ for @isEqualToTextRange:@
isEqualToTextRangeSelector :: Selector '[Id NSTextRange] Bool
isEqualToTextRangeSelector = mkSelector "isEqualToTextRange:"

-- | @Selector@ for @containsLocation:@
containsLocationSelector :: Selector '[RawId] Bool
containsLocationSelector = mkSelector "containsLocation:"

-- | @Selector@ for @containsRange:@
containsRangeSelector :: Selector '[Id NSTextRange] Bool
containsRangeSelector = mkSelector "containsRange:"

-- | @Selector@ for @intersectsWithTextRange:@
intersectsWithTextRangeSelector :: Selector '[Id NSTextRange] Bool
intersectsWithTextRangeSelector = mkSelector "intersectsWithTextRange:"

-- | @Selector@ for @textRangeByIntersectingWithTextRange:@
textRangeByIntersectingWithTextRangeSelector :: Selector '[Id NSTextRange] (Id NSTextRange)
textRangeByIntersectingWithTextRangeSelector = mkSelector "textRangeByIntersectingWithTextRange:"

-- | @Selector@ for @textRangeByFormingUnionWithTextRange:@
textRangeByFormingUnionWithTextRangeSelector :: Selector '[Id NSTextRange] (Id NSTextRange)
textRangeByFormingUnionWithTextRangeSelector = mkSelector "textRangeByFormingUnionWithTextRange:"

-- | @Selector@ for @empty@
emptySelector :: Selector '[] Bool
emptySelector = mkSelector "empty"

-- | @Selector@ for @location@
locationSelector :: Selector '[] RawId
locationSelector = mkSelector "location"

-- | @Selector@ for @endLocation@
endLocationSelector :: Selector '[] RawId
endLocationSelector = mkSelector "endLocation"

