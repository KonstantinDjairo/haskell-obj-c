{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MLModelAsset@.
module ObjC.CoreML.MLModelAsset
  ( MLModelAsset
  , IsMLModelAsset(..)
  , modelAssetWithSpecificationData_error
  , init_
  , new
  , initSelector
  , modelAssetWithSpecificationData_errorSelector
  , newSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CoreML.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | Construct an optimized model asset asynchronously from the contents of specification data.
--
-- @specificationData@ — Contents of .mlmodel as a data blob.
--
-- @error@ — When the model asset creation fails error is populated with the reason for failure.
--
-- ObjC selector: @+ modelAssetWithSpecificationData:error:@
modelAssetWithSpecificationData_error :: (IsNSData specificationData, IsNSError error_) => specificationData -> error_ -> IO (Id MLModelAsset)
modelAssetWithSpecificationData_error specificationData error_ =
  do
    cls' <- getRequiredClass "MLModelAsset"
    sendClassMessage cls' modelAssetWithSpecificationData_errorSelector (toNSData specificationData) (toNSError error_)

-- | @- init@
init_ :: IsMLModelAsset mlModelAsset => mlModelAsset -> IO (Id MLModelAsset)
init_ mlModelAsset =
  sendOwnedMessage mlModelAsset initSelector

-- | @+ new@
new :: IO (Id MLModelAsset)
new  =
  do
    cls' <- getRequiredClass "MLModelAsset"
    sendOwnedClassMessage cls' newSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @modelAssetWithSpecificationData:error:@
modelAssetWithSpecificationData_errorSelector :: Selector '[Id NSData, Id NSError] (Id MLModelAsset)
modelAssetWithSpecificationData_errorSelector = mkSelector "modelAssetWithSpecificationData:error:"

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MLModelAsset)
initSelector = mkSelector "init"

-- | @Selector@ for @new@
newSelector :: Selector '[] (Id MLModelAsset)
newSelector = mkSelector "new"

