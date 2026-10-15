{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SBElementArray@.
module ObjC.ScriptingBridge.SBElementArray
  ( SBElementArray
  , IsSBElementArray(..)
  , objectWithName
  , objectWithID
  , objectAtLocation
  , arrayByApplyingSelector
  , arrayByApplyingSelector_withObject
  , get
  , arrayByApplyingSelectorSelector
  , arrayByApplyingSelector_withObjectSelector
  , getSelector
  , objectAtLocationSelector
  , objectWithIDSelector
  , objectWithNameSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScriptingBridge.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- objectWithName:@
objectWithName :: (IsSBElementArray sbElementArray, IsNSString name) => sbElementArray -> name -> IO RawId
objectWithName sbElementArray name =
  sendMessage sbElementArray objectWithNameSelector (toNSString name)

-- | @- objectWithID:@
objectWithID :: IsSBElementArray sbElementArray => sbElementArray -> RawId -> IO RawId
objectWithID sbElementArray identifier =
  sendMessage sbElementArray objectWithIDSelector identifier

-- | @- objectAtLocation:@
objectAtLocation :: IsSBElementArray sbElementArray => sbElementArray -> RawId -> IO RawId
objectAtLocation sbElementArray location =
  sendMessage sbElementArray objectAtLocationSelector location

-- | @- arrayByApplyingSelector:@
arrayByApplyingSelector :: IsSBElementArray sbElementArray => sbElementArray -> Sel -> IO (Id NSArray)
arrayByApplyingSelector sbElementArray selector =
  sendMessage sbElementArray arrayByApplyingSelectorSelector selector

-- | @- arrayByApplyingSelector:withObject:@
arrayByApplyingSelector_withObject :: IsSBElementArray sbElementArray => sbElementArray -> Sel -> RawId -> IO (Id NSArray)
arrayByApplyingSelector_withObject sbElementArray aSelector argument =
  sendMessage sbElementArray arrayByApplyingSelector_withObjectSelector aSelector argument

-- | @- get@
get :: IsSBElementArray sbElementArray => sbElementArray -> IO (Id NSArray)
get sbElementArray =
  sendMessage sbElementArray getSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @objectWithName:@
objectWithNameSelector :: Selector '[Id NSString] RawId
objectWithNameSelector = mkSelector "objectWithName:"

-- | @Selector@ for @objectWithID:@
objectWithIDSelector :: Selector '[RawId] RawId
objectWithIDSelector = mkSelector "objectWithID:"

-- | @Selector@ for @objectAtLocation:@
objectAtLocationSelector :: Selector '[RawId] RawId
objectAtLocationSelector = mkSelector "objectAtLocation:"

-- | @Selector@ for @arrayByApplyingSelector:@
arrayByApplyingSelectorSelector :: Selector '[Sel] (Id NSArray)
arrayByApplyingSelectorSelector = mkSelector "arrayByApplyingSelector:"

-- | @Selector@ for @arrayByApplyingSelector:withObject:@
arrayByApplyingSelector_withObjectSelector :: Selector '[Sel, RawId] (Id NSArray)
arrayByApplyingSelector_withObjectSelector = mkSelector "arrayByApplyingSelector:withObject:"

-- | @Selector@ for @get@
getSelector :: Selector '[] (Id NSArray)
getSelector = mkSelector "get"

