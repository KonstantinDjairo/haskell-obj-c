{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @PKDisbursementVoucher@.
module ObjC.PassKit.PKDisbursementVoucher
  ( PKDisbursementVoucher
  , IsPKDisbursementVoucher(..)
  , data_
  , redemptionURL
  , dataSelector
  , redemptionURLSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.PassKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- data@
data_ :: IsPKDisbursementVoucher pkDisbursementVoucher => pkDisbursementVoucher -> IO RawId
data_ pkDisbursementVoucher =
  sendMessage pkDisbursementVoucher dataSelector

-- | @- redemptionURL@
redemptionURL :: IsPKDisbursementVoucher pkDisbursementVoucher => pkDisbursementVoucher -> IO RawId
redemptionURL pkDisbursementVoucher =
  sendMessage pkDisbursementVoucher redemptionURLSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @data@
dataSelector :: Selector '[] RawId
dataSelector = mkSelector "data"

-- | @Selector@ for @redemptionURL@
redemptionURLSelector :: Selector '[] RawId
redemptionURLSelector = mkSelector "redemptionURL"

