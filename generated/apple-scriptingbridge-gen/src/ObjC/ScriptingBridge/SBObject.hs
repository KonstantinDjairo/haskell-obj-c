{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @SBObject@.
module ObjC.ScriptingBridge.SBObject
  ( SBObject
  , IsSBObject(..)
  , init_
  , initWithProperties
  , initWithData
  , get
  , lastError
  , initWithElementCode_properties_data
  , propertyWithCode
  , propertyWithClass_code
  , elementArrayWithCode
  , sendEvent_id_parameters
  , setTo
  , elementArrayWithCodeSelector
  , getSelector
  , initSelector
  , initWithDataSelector
  , initWithElementCode_properties_dataSelector
  , initWithPropertiesSelector
  , lastErrorSelector
  , propertyWithClass_codeSelector
  , propertyWithCodeSelector
  , sendEvent_id_parametersSelector
  , setToSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.ScriptingBridge.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsSBObject sbObject => sbObject -> IO (Id SBObject)
init_ sbObject =
  sendOwnedMessage sbObject initSelector

-- | @- initWithProperties:@
initWithProperties :: (IsSBObject sbObject, IsNSDictionary properties) => sbObject -> properties -> IO (Id SBObject)
initWithProperties sbObject properties =
  sendOwnedMessage sbObject initWithPropertiesSelector (toNSDictionary properties)

-- | @- initWithData:@
initWithData :: IsSBObject sbObject => sbObject -> RawId -> IO (Id SBObject)
initWithData sbObject data_ =
  sendOwnedMessage sbObject initWithDataSelector data_

-- | @- get@
get :: IsSBObject sbObject => sbObject -> IO RawId
get sbObject =
  sendMessage sbObject getSelector

-- | @- lastError@
lastError :: IsSBObject sbObject => sbObject -> IO (Id NSError)
lastError sbObject =
  sendMessage sbObject lastErrorSelector

-- | @- initWithElementCode:properties:data:@
initWithElementCode_properties_data :: (IsSBObject sbObject, IsNSDictionary properties) => sbObject -> CUInt -> properties -> RawId -> IO (Id SBObject)
initWithElementCode_properties_data sbObject code properties data_ =
  sendOwnedMessage sbObject initWithElementCode_properties_dataSelector code (toNSDictionary properties) data_

-- | @- propertyWithCode:@
propertyWithCode :: IsSBObject sbObject => sbObject -> CUInt -> IO (Id SBObject)
propertyWithCode sbObject code =
  sendMessage sbObject propertyWithCodeSelector code

-- | @- propertyWithClass:code:@
propertyWithClass_code :: IsSBObject sbObject => sbObject -> Class -> CUInt -> IO (Id SBObject)
propertyWithClass_code sbObject cls code =
  sendMessage sbObject propertyWithClass_codeSelector cls code

-- | @- elementArrayWithCode:@
elementArrayWithCode :: IsSBObject sbObject => sbObject -> CUInt -> IO (Id SBElementArray)
elementArrayWithCode sbObject code =
  sendMessage sbObject elementArrayWithCodeSelector code

-- | @- sendEvent:id:parameters:@
sendEvent_id_parameters :: IsSBObject sbObject => sbObject -> CUInt -> CUInt -> CUInt -> IO RawId
sendEvent_id_parameters sbObject eventClass eventID firstParamCode =
  sendMessage sbObject sendEvent_id_parametersSelector eventClass eventID firstParamCode

-- | @- setTo:@
setTo :: IsSBObject sbObject => sbObject -> RawId -> IO ()
setTo sbObject value =
  sendMessage sbObject setToSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id SBObject)
initSelector = mkSelector "init"

-- | @Selector@ for @initWithProperties:@
initWithPropertiesSelector :: Selector '[Id NSDictionary] (Id SBObject)
initWithPropertiesSelector = mkSelector "initWithProperties:"

-- | @Selector@ for @initWithData:@
initWithDataSelector :: Selector '[RawId] (Id SBObject)
initWithDataSelector = mkSelector "initWithData:"

-- | @Selector@ for @get@
getSelector :: Selector '[] RawId
getSelector = mkSelector "get"

-- | @Selector@ for @lastError@
lastErrorSelector :: Selector '[] (Id NSError)
lastErrorSelector = mkSelector "lastError"

-- | @Selector@ for @initWithElementCode:properties:data:@
initWithElementCode_properties_dataSelector :: Selector '[CUInt, Id NSDictionary, RawId] (Id SBObject)
initWithElementCode_properties_dataSelector = mkSelector "initWithElementCode:properties:data:"

-- | @Selector@ for @propertyWithCode:@
propertyWithCodeSelector :: Selector '[CUInt] (Id SBObject)
propertyWithCodeSelector = mkSelector "propertyWithCode:"

-- | @Selector@ for @propertyWithClass:code:@
propertyWithClass_codeSelector :: Selector '[Class, CUInt] (Id SBObject)
propertyWithClass_codeSelector = mkSelector "propertyWithClass:code:"

-- | @Selector@ for @elementArrayWithCode:@
elementArrayWithCodeSelector :: Selector '[CUInt] (Id SBElementArray)
elementArrayWithCodeSelector = mkSelector "elementArrayWithCode:"

-- | @Selector@ for @sendEvent:id:parameters:@
sendEvent_id_parametersSelector :: Selector '[CUInt, CUInt, CUInt] RawId
sendEvent_id_parametersSelector = mkSelector "sendEvent:id:parameters:"

-- | @Selector@ for @setTo:@
setToSelector :: Selector '[RawId] ()
setToSelector = mkSelector "setTo:"

