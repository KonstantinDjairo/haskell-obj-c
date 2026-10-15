{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @DDMatchMoneyAmount@.
module ObjC.DataDetection.DDMatchMoneyAmount
  ( DDMatchMoneyAmount
  , IsDDMatchMoneyAmount(..)
  , currency
  , amount
  , amountSelector
  , currencySelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.DataDetection.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- currency@
currency :: IsDDMatchMoneyAmount ddMatchMoneyAmount => ddMatchMoneyAmount -> IO (Id NSString)
currency ddMatchMoneyAmount =
  sendMessage ddMatchMoneyAmount currencySelector

-- | @- amount@
amount :: IsDDMatchMoneyAmount ddMatchMoneyAmount => ddMatchMoneyAmount -> IO CDouble
amount ddMatchMoneyAmount =
  sendMessage ddMatchMoneyAmount amountSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @currency@
currencySelector :: Selector '[] (Id NSString)
currencySelector = mkSelector "currency"

-- | @Selector@ for @amount@
amountSelector :: Selector '[] CDouble
amountSelector = mkSelector "amount"

