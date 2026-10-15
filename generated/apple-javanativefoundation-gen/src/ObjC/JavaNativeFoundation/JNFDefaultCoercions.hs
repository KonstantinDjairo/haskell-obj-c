{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFDefaultCoercions@.
module ObjC.JavaNativeFoundation.JNFDefaultCoercions
  ( JNFDefaultCoercions
  , IsJNFDefaultCoercions(..)
  , addStringCoercionTo
  , addNumberCoercionTo
  , addDateCoercionTo
  , addListCoercionTo
  , addMapCoercionTo
  , addSetCoercionTo
  , defaultCoercer
  , addDateCoercionToSelector
  , addListCoercionToSelector
  , addMapCoercionToSelector
  , addNumberCoercionToSelector
  , addSetCoercionToSelector
  , addStringCoercionToSelector
  , defaultCoercerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ addStringCoercionTo:@
addStringCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addStringCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addStringCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ addNumberCoercionTo:@
addNumberCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addNumberCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addNumberCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ addDateCoercionTo:@
addDateCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addDateCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addDateCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ addListCoercionTo:@
addListCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addListCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addListCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ addMapCoercionTo:@
addMapCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addMapCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addMapCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ addSetCoercionTo:@
addSetCoercionTo :: IsJNFTypeCoercer coercer => coercer -> IO ()
addSetCoercionTo coercer =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' addSetCoercionToSelector (toJNFTypeCoercer coercer)

-- | @+ defaultCoercer@
defaultCoercer :: IO (Id JNFTypeCoercer)
defaultCoercer  =
  do
    cls' <- getRequiredClass "JNFDefaultCoercions"
    sendClassMessage cls' defaultCoercerSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @addStringCoercionTo:@
addStringCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addStringCoercionToSelector = mkSelector "addStringCoercionTo:"

-- | @Selector@ for @addNumberCoercionTo:@
addNumberCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addNumberCoercionToSelector = mkSelector "addNumberCoercionTo:"

-- | @Selector@ for @addDateCoercionTo:@
addDateCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addDateCoercionToSelector = mkSelector "addDateCoercionTo:"

-- | @Selector@ for @addListCoercionTo:@
addListCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addListCoercionToSelector = mkSelector "addListCoercionTo:"

-- | @Selector@ for @addMapCoercionTo:@
addMapCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addMapCoercionToSelector = mkSelector "addMapCoercionTo:"

-- | @Selector@ for @addSetCoercionTo:@
addSetCoercionToSelector :: Selector '[Id JNFTypeCoercer] ()
addSetCoercionToSelector = mkSelector "addSetCoercionTo:"

-- | @Selector@ for @defaultCoercer@
defaultCoercerSelector :: Selector '[] (Id JNFTypeCoercer)
defaultCoercerSelector = mkSelector "defaultCoercer"

