{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | NEAppProxyUDPFlow
--
-- The NEAppProxyUDPFlow class declares the programmatic interface of an object that is used by NEAppProxyProvider implementations to proxy the payload of UDP datagrams.
--
-- NEAppProxyUDPFlow is part of NetworkExtension.framework.
--
-- Instances of this class are thread safe.
--
-- Generated bindings for @NEAppProxyUDPFlow@.
module ObjC.NetworkExtension.NEAppProxyUDPFlow
  ( NEAppProxyUDPFlow
  , IsNEAppProxyUDPFlow(..)
  , writeDatagrams_sentByEndpoints_completionHandler
  , localEndpoint
  , localEndpointSelector
  , writeDatagrams_sentByEndpoints_completionHandlerSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.NetworkExtension.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | writeDatagram:sentByEndpoint:completionHandler:
--
-- Write a datagram to the flow.
--
-- @datagrams@ — An array of NSData objects containing the data to be written.
--
-- @remoteEndpoints@ — The source endpoints of the datagrams.
--
-- @completionHandler@ — A block that will be executed when the datagrams have been written to the corresponding socket's receive buffer.
--
-- ObjC selector: @- writeDatagrams:sentByEndpoints:completionHandler:@
writeDatagrams_sentByEndpoints_completionHandler :: (IsNEAppProxyUDPFlow neAppProxyUDPFlow, IsNSArray datagrams, IsNSArray remoteEndpoints) => neAppProxyUDPFlow -> datagrams -> remoteEndpoints -> Ptr () -> IO ()
writeDatagrams_sentByEndpoints_completionHandler neAppProxyUDPFlow datagrams remoteEndpoints completionHandler =
  sendMessage neAppProxyUDPFlow writeDatagrams_sentByEndpoints_completionHandlerSelector (toNSArray datagrams) (toNSArray remoteEndpoints) completionHandler

-- | localEndpoint
--
-- An NWEndpoint object containing the local endpoint of the flow's corresponding socket.
--
-- ObjC selector: @- localEndpoint@
localEndpoint :: IsNEAppProxyUDPFlow neAppProxyUDPFlow => neAppProxyUDPFlow -> IO (Id NWEndpoint)
localEndpoint neAppProxyUDPFlow =
  sendMessage neAppProxyUDPFlow localEndpointSelector

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @writeDatagrams:sentByEndpoints:completionHandler:@
writeDatagrams_sentByEndpoints_completionHandlerSelector :: Selector '[Id NSArray, Id NSArray, Ptr ()] ()
writeDatagrams_sentByEndpoints_completionHandlerSelector = mkSelector "writeDatagrams:sentByEndpoints:completionHandler:"

-- | @Selector@ for @localEndpoint@
localEndpointSelector :: Selector '[] (Id NWEndpoint)
localEndpointSelector = mkSelector "localEndpoint"

