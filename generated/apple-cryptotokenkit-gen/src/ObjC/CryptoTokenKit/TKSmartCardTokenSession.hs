{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | TKSmartCardTokenSession represents token session based on SmartCard token.
--
-- When implementing SmartCard token extension, subclass TKSmartCardTokenSession and implement TKTokenSessionDelegate on it.  Use #token property to get access and send APDUs to the underlying SmartCard.
--
-- Generated bindings for @TKSmartCardTokenSession@.
module ObjC.CryptoTokenKit.TKSmartCardTokenSession
  ( TKSmartCardTokenSession
  , IsTKSmartCardTokenSession(..)
  , smartCard
  , smartCardSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.CryptoTokenKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | contains TKSmartCard instance with active exclusive session and SmartCard application selected.
--
-- This property can be accessed only when handling one of the methods of TKTokenSessionDelegate protocol.  If associated token has set AID property, then the returned card has opened exclusive session to the card and the application is already selected.  Therefore there is no need to call -[TKSmartCard beginSessionWithReply:]) on returned SmartCard instance in such case and system will take care of terminating session when current token request servicing is finished,  -[TKSmartCard endSession] must not be called either.
--
-- You can store any kind of context state information representing state of the card into smartCard.context property.  This property will be automatically set to nil if the card is reset or accessed by different TKSmartCard instance (possibly in another process).  Checking TKSmartCard.context property for previously stored value can be used to avoid potentially costly restoring of SmartCard state before performing the operation.
--
-- ObjC selector: @- smartCard@
smartCard :: IsTKSmartCardTokenSession tkSmartCardTokenSession => tkSmartCardTokenSession -> IO (Id TKSmartCard)
smartCard tkSmartCardTokenSession =
  sendMessage tkSmartCardTokenSession smartCardSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @smartCard@
smartCardSelector :: Selector '[] (Id TKSmartCard)
smartCardSelector = mkSelector "smartCard"

