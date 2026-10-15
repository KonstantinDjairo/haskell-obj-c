{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @CIVector@.
module ObjC.CoreImage.CIVector
  ( CIVector
  , IsCIVector(..)
  , vectorWithValues_count
  , vectorWithX
  , vectorWithX_Y
  , vectorWithX_Y_Z
  , vectorWithX_Y_Z_W
  , vectorWithString
  , initWithValues_count
  , initWithX
  , initWithX_Y
  , initWithX_Y_Z
  , initWithX_Y_Z_W
  , initWithString
  , valueAtIndex
  , count
  , x
  , y
  , z
  , w
  , stringRepresentation
  , countSelector
  , initWithStringSelector
  , initWithValues_countSelector
  , initWithXSelector
  , initWithX_YSelector
  , initWithX_Y_ZSelector
  , initWithX_Y_Z_WSelector
  , stringRepresentationSelector
  , valueAtIndexSelector
  , vectorWithStringSelector
  , vectorWithValues_countSelector
  , vectorWithXSelector
  , vectorWithX_YSelector
  , vectorWithX_Y_ZSelector
  , vectorWithX_Y_Z_WSelector
  , wSelector
  , xSelector
  , ySelector
  , zSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreImage.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ vectorWithValues:count:@
vectorWithValues_count :: Const (Ptr CDouble) -> CULong -> IO (Id CIVector)
vectorWithValues_count values count =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithValues_countSelector values count

-- | @+ vectorWithX:@
vectorWithX :: CDouble -> IO (Id CIVector)
vectorWithX x =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithXSelector x

-- | @+ vectorWithX:Y:@
vectorWithX_Y :: CDouble -> CDouble -> IO (Id CIVector)
vectorWithX_Y x y =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithX_YSelector x y

-- | @+ vectorWithX:Y:Z:@
vectorWithX_Y_Z :: CDouble -> CDouble -> CDouble -> IO (Id CIVector)
vectorWithX_Y_Z x y z =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithX_Y_ZSelector x y z

-- | @+ vectorWithX:Y:Z:W:@
vectorWithX_Y_Z_W :: CDouble -> CDouble -> CDouble -> CDouble -> IO (Id CIVector)
vectorWithX_Y_Z_W x y z w =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithX_Y_Z_WSelector x y z w

-- | @+ vectorWithString:@
vectorWithString :: IsNSString representation => representation -> IO (Id CIVector)
vectorWithString representation =
  do
    cls' <- getRequiredClass "CIVector"
    sendClassMessage cls' vectorWithStringSelector (toNSString representation)

-- | @- initWithValues:count:@
initWithValues_count :: IsCIVector ciVector => ciVector -> Const (Ptr CDouble) -> CULong -> IO (Id CIVector)
initWithValues_count ciVector values count =
  sendOwnedMessage ciVector initWithValues_countSelector values count

-- | @- initWithX:@
initWithX :: IsCIVector ciVector => ciVector -> CDouble -> IO (Id CIVector)
initWithX ciVector x =
  sendOwnedMessage ciVector initWithXSelector x

-- | @- initWithX:Y:@
initWithX_Y :: IsCIVector ciVector => ciVector -> CDouble -> CDouble -> IO (Id CIVector)
initWithX_Y ciVector x y =
  sendOwnedMessage ciVector initWithX_YSelector x y

-- | @- initWithX:Y:Z:@
initWithX_Y_Z :: IsCIVector ciVector => ciVector -> CDouble -> CDouble -> CDouble -> IO (Id CIVector)
initWithX_Y_Z ciVector x y z =
  sendOwnedMessage ciVector initWithX_Y_ZSelector x y z

-- | @- initWithX:Y:Z:W:@
initWithX_Y_Z_W :: IsCIVector ciVector => ciVector -> CDouble -> CDouble -> CDouble -> CDouble -> IO (Id CIVector)
initWithX_Y_Z_W ciVector x y z w =
  sendOwnedMessage ciVector initWithX_Y_Z_WSelector x y z w

-- | @- initWithString:@
initWithString :: (IsCIVector ciVector, IsNSString representation) => ciVector -> representation -> IO (Id CIVector)
initWithString ciVector representation =
  sendOwnedMessage ciVector initWithStringSelector (toNSString representation)

-- | @- valueAtIndex:@
valueAtIndex :: IsCIVector ciVector => ciVector -> CULong -> IO CDouble
valueAtIndex ciVector index =
  sendMessage ciVector valueAtIndexSelector index

-- | @- count@
count :: IsCIVector ciVector => ciVector -> IO CULong
count ciVector =
  sendMessage ciVector countSelector

-- | @- X@
x :: IsCIVector ciVector => ciVector -> IO CDouble
x ciVector =
  sendMessage ciVector xSelector

-- | @- Y@
y :: IsCIVector ciVector => ciVector -> IO CDouble
y ciVector =
  sendMessage ciVector ySelector

-- | @- Z@
z :: IsCIVector ciVector => ciVector -> IO CDouble
z ciVector =
  sendMessage ciVector zSelector

-- | @- W@
w :: IsCIVector ciVector => ciVector -> IO CDouble
w ciVector =
  sendMessage ciVector wSelector

-- | @- stringRepresentation@
stringRepresentation :: IsCIVector ciVector => ciVector -> IO (Id NSString)
stringRepresentation ciVector =
  sendMessage ciVector stringRepresentationSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @vectorWithValues:count:@
vectorWithValues_countSelector :: Selector '[Const (Ptr CDouble), CULong] (Id CIVector)
vectorWithValues_countSelector = mkSelector "vectorWithValues:count:"

-- | @Selector@ for @vectorWithX:@
vectorWithXSelector :: Selector '[CDouble] (Id CIVector)
vectorWithXSelector = mkSelector "vectorWithX:"

-- | @Selector@ for @vectorWithX:Y:@
vectorWithX_YSelector :: Selector '[CDouble, CDouble] (Id CIVector)
vectorWithX_YSelector = mkSelector "vectorWithX:Y:"

-- | @Selector@ for @vectorWithX:Y:Z:@
vectorWithX_Y_ZSelector :: Selector '[CDouble, CDouble, CDouble] (Id CIVector)
vectorWithX_Y_ZSelector = mkSelector "vectorWithX:Y:Z:"

-- | @Selector@ for @vectorWithX:Y:Z:W:@
vectorWithX_Y_Z_WSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id CIVector)
vectorWithX_Y_Z_WSelector = mkSelector "vectorWithX:Y:Z:W:"

-- | @Selector@ for @vectorWithString:@
vectorWithStringSelector :: Selector '[Id NSString] (Id CIVector)
vectorWithStringSelector = mkSelector "vectorWithString:"

-- | @Selector@ for @initWithValues:count:@
initWithValues_countSelector :: Selector '[Const (Ptr CDouble), CULong] (Id CIVector)
initWithValues_countSelector = mkSelector "initWithValues:count:"

-- | @Selector@ for @initWithX:@
initWithXSelector :: Selector '[CDouble] (Id CIVector)
initWithXSelector = mkSelector "initWithX:"

-- | @Selector@ for @initWithX:Y:@
initWithX_YSelector :: Selector '[CDouble, CDouble] (Id CIVector)
initWithX_YSelector = mkSelector "initWithX:Y:"

-- | @Selector@ for @initWithX:Y:Z:@
initWithX_Y_ZSelector :: Selector '[CDouble, CDouble, CDouble] (Id CIVector)
initWithX_Y_ZSelector = mkSelector "initWithX:Y:Z:"

-- | @Selector@ for @initWithX:Y:Z:W:@
initWithX_Y_Z_WSelector :: Selector '[CDouble, CDouble, CDouble, CDouble] (Id CIVector)
initWithX_Y_Z_WSelector = mkSelector "initWithX:Y:Z:W:"

-- | @Selector@ for @initWithString:@
initWithStringSelector :: Selector '[Id NSString] (Id CIVector)
initWithStringSelector = mkSelector "initWithString:"

-- | @Selector@ for @valueAtIndex:@
valueAtIndexSelector :: Selector '[CULong] CDouble
valueAtIndexSelector = mkSelector "valueAtIndex:"

-- | @Selector@ for @count@
countSelector :: Selector '[] CULong
countSelector = mkSelector "count"

-- | @Selector@ for @X@
xSelector :: Selector '[] CDouble
xSelector = mkSelector "X"

-- | @Selector@ for @Y@
ySelector :: Selector '[] CDouble
ySelector = mkSelector "Y"

-- | @Selector@ for @Z@
zSelector :: Selector '[] CDouble
zSelector = mkSelector "Z"

-- | @Selector@ for @W@
wSelector :: Selector '[] CDouble
wSelector = mkSelector "W"

-- | @Selector@ for @stringRepresentation@
stringRepresentationSelector :: Selector '[] (Id NSString)
stringRepresentationSelector = mkSelector "stringRepresentation"

