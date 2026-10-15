{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | MTLStitchedLibraryDescriptor
--
-- A container for the graphs and functions needed to create the stitched functions described by the graphs.
--
-- Generated bindings for @MTLStitchedLibraryDescriptor@.
module ObjC.Metal.MTLStitchedLibraryDescriptor
  ( MTLStitchedLibraryDescriptor
  , IsMTLStitchedLibraryDescriptor(..)
  , functionGraphs
  , setFunctionGraphs
  , functions
  , setFunctions
  , functionGraphsSelector
  , functionsSelector
  , setFunctionGraphsSelector
  , setFunctionsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Metal.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- functionGraphs@
functionGraphs :: IsMTLStitchedLibraryDescriptor mtlStitchedLibraryDescriptor => mtlStitchedLibraryDescriptor -> IO (Id NSArray)
functionGraphs mtlStitchedLibraryDescriptor =
  sendMessage mtlStitchedLibraryDescriptor functionGraphsSelector

-- | @- setFunctionGraphs:@
setFunctionGraphs :: (IsMTLStitchedLibraryDescriptor mtlStitchedLibraryDescriptor, IsNSArray value) => mtlStitchedLibraryDescriptor -> value -> IO ()
setFunctionGraphs mtlStitchedLibraryDescriptor value =
  sendMessage mtlStitchedLibraryDescriptor setFunctionGraphsSelector (toNSArray value)

-- | @- functions@
functions :: IsMTLStitchedLibraryDescriptor mtlStitchedLibraryDescriptor => mtlStitchedLibraryDescriptor -> IO (Id NSArray)
functions mtlStitchedLibraryDescriptor =
  sendMessage mtlStitchedLibraryDescriptor functionsSelector

-- | @- setFunctions:@
setFunctions :: (IsMTLStitchedLibraryDescriptor mtlStitchedLibraryDescriptor, IsNSArray value) => mtlStitchedLibraryDescriptor -> value -> IO ()
setFunctions mtlStitchedLibraryDescriptor value =
  sendMessage mtlStitchedLibraryDescriptor setFunctionsSelector (toNSArray value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @functionGraphs@
functionGraphsSelector :: Selector '[] (Id NSArray)
functionGraphsSelector = mkSelector "functionGraphs"

-- | @Selector@ for @setFunctionGraphs:@
setFunctionGraphsSelector :: Selector '[Id NSArray] ()
setFunctionGraphsSelector = mkSelector "setFunctionGraphs:"

-- | @Selector@ for @functions@
functionsSelector :: Selector '[] (Id NSArray)
functionsSelector = mkSelector "functions"

-- | @Selector@ for @setFunctions:@
setFunctionsSelector :: Selector '[Id NSArray] ()
setFunctionsSelector = mkSelector "setFunctions:"

