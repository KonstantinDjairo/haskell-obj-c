{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | AAAttribution
--
-- This class contains a method that generates a token used to obtain the app's attribution from Apple’s Attribution Server.
--
-- Generated bindings for @AAAttribution@.
module ObjC.AdServices.AAAttribution
  ( AAAttribution
  , IsAAAttribution(..)
  , attributionTokenWithError
  , attributionTokenWithErrorSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.AdServices.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | attributionTokenWithError:
--
-- @error@ — If the error parameter is not nil it will contain any errors encountered during the call. The code property on the error object will be a member of the enum AAAttributionErrorCode.
--
-- Returns: NSString The value returned will be a token string. If there are any errors the return value will be nil and error parameter populated.
--
-- This method is used to generate an attribution token. The token is used in conjunction with Ad Platforms Attribution REST API to obtain the app's attribution information from Apple’s Attribution Server. This method requires that the network is available otherwise it will return an error. The token string can be used directly with the REST API. If an error occurs, the return value of the method will be nil and the error parameter, if provided, will contain a reference to an NSError object describing the error that occurred.
--
-- ObjC selector: @+ attributionTokenWithError:@
attributionTokenWithError :: IsNSError error_ => error_ -> IO (Id NSString)
attributionTokenWithError error_ =
  do
    cls' <- getRequiredClass "AAAttribution"
    sendClassMessage cls' attributionTokenWithErrorSelector (toNSError error_)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @attributionTokenWithError:@
attributionTokenWithErrorSelector :: Selector '[Id NSError] (Id NSString)
attributionTokenWithErrorSelector = mkSelector "attributionTokenWithError:"

