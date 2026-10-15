{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @MTRTestClusterClusterTestComplexNullableOptionalRequestParams@.
module ObjC.Matter.MTRTestClusterClusterTestComplexNullableOptionalRequestParams
  ( MTRTestClusterClusterTestComplexNullableOptionalRequestParams
  , IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams(..)
  , init_
  , copyWithZone
  , nullableInt
  , setNullableInt
  , optionalInt
  , setOptionalInt
  , nullableOptionalInt
  , setNullableOptionalInt
  , nullableString
  , setNullableString
  , optionalString
  , setOptionalString
  , nullableOptionalString
  , setNullableOptionalString
  , nullableStruct
  , setNullableStruct
  , optionalStruct
  , setOptionalStruct
  , nullableOptionalStruct
  , setNullableOptionalStruct
  , nullableList
  , setNullableList
  , optionalList
  , setOptionalList
  , nullableOptionalList
  , setNullableOptionalList
  , timedInvokeTimeoutMs
  , setTimedInvokeTimeoutMs
  , copyWithZoneSelector
  , initSelector
  , nullableIntSelector
  , nullableListSelector
  , nullableOptionalIntSelector
  , nullableOptionalListSelector
  , nullableOptionalStringSelector
  , nullableOptionalStructSelector
  , nullableStringSelector
  , nullableStructSelector
  , optionalIntSelector
  , optionalListSelector
  , optionalStringSelector
  , optionalStructSelector
  , setNullableIntSelector
  , setNullableListSelector
  , setNullableOptionalIntSelector
  , setNullableOptionalListSelector
  , setNullableOptionalStringSelector
  , setNullableOptionalStructSelector
  , setNullableStringSelector
  , setNullableStructSelector
  , setOptionalIntSelector
  , setOptionalListSelector
  , setOptionalStringSelector
  , setOptionalStructSelector
  , setTimedInvokeTimeoutMsSelector
  , timedInvokeTimeoutMsSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.Matter.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @- init@
init_ :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams)
init_ mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendOwnedMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams initSelector

-- | @- copyWithZone:@
copyWithZone :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> Ptr () -> IO RawId
copyWithZone mtrTestClusterClusterTestComplexNullableOptionalRequestParams zone =
  sendOwnedMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams copyWithZoneSelector zone

-- | @- nullableInt@
nullableInt :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSNumber)
nullableInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableIntSelector

-- | @- setNullableInt:@
setNullableInt :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSNumber value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableIntSelector (toNSNumber value)

-- | @- optionalInt@
optionalInt :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSNumber)
optionalInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams optionalIntSelector

-- | @- setOptionalInt:@
setOptionalInt :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSNumber value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setOptionalInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setOptionalIntSelector (toNSNumber value)

-- | @- nullableOptionalInt@
nullableOptionalInt :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSNumber)
nullableOptionalInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableOptionalIntSelector

-- | @- setNullableOptionalInt:@
setNullableOptionalInt :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSNumber value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableOptionalInt mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableOptionalIntSelector (toNSNumber value)

-- | @- nullableString@
nullableString :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSString)
nullableString mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableStringSelector

-- | @- setNullableString:@
setNullableString :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSString value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableString mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableStringSelector (toNSString value)

-- | @- optionalString@
optionalString :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSString)
optionalString mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams optionalStringSelector

-- | @- setOptionalString:@
setOptionalString :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSString value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setOptionalString mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setOptionalStringSelector (toNSString value)

-- | @- nullableOptionalString@
nullableOptionalString :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSString)
nullableOptionalString mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableOptionalStringSelector

-- | @- setNullableOptionalString:@
setNullableOptionalString :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSString value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableOptionalString mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableOptionalStringSelector (toNSString value)

-- | @- nullableStruct@
nullableStruct :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id MTRTestClusterClusterSimpleStruct)
nullableStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableStructSelector

-- | @- setNullableStruct:@
setNullableStruct :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsMTRTestClusterClusterSimpleStruct value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableStructSelector (toMTRTestClusterClusterSimpleStruct value)

-- | @- optionalStruct@
optionalStruct :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id MTRTestClusterClusterSimpleStruct)
optionalStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams optionalStructSelector

-- | @- setOptionalStruct:@
setOptionalStruct :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsMTRTestClusterClusterSimpleStruct value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setOptionalStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setOptionalStructSelector (toMTRTestClusterClusterSimpleStruct value)

-- | @- nullableOptionalStruct@
nullableOptionalStruct :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id MTRTestClusterClusterSimpleStruct)
nullableOptionalStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableOptionalStructSelector

-- | @- setNullableOptionalStruct:@
setNullableOptionalStruct :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsMTRTestClusterClusterSimpleStruct value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableOptionalStruct mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableOptionalStructSelector (toMTRTestClusterClusterSimpleStruct value)

-- | @- nullableList@
nullableList :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSArray)
nullableList mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableListSelector

-- | @- setNullableList:@
setNullableList :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSArray value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableList mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableListSelector (toNSArray value)

-- | @- optionalList@
optionalList :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSArray)
optionalList mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams optionalListSelector

-- | @- setOptionalList:@
setOptionalList :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSArray value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setOptionalList mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setOptionalListSelector (toNSArray value)

-- | @- nullableOptionalList@
nullableOptionalList :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSArray)
nullableOptionalList mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams nullableOptionalListSelector

-- | @- setNullableOptionalList:@
setNullableOptionalList :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSArray value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setNullableOptionalList mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setNullableOptionalListSelector (toNSArray value)

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- timedInvokeTimeoutMs@
timedInvokeTimeoutMs :: IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> IO (Id NSNumber)
timedInvokeTimeoutMs mtrTestClusterClusterTestComplexNullableOptionalRequestParams =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams timedInvokeTimeoutMsSelector

-- | Controls whether the command is a timed command (using Timed Invoke).
--
-- If nil (the default value), a regular invoke is done for commands that do not require a timed invoke and a timed invoke with some default timed request timeout is done for commands that require a timed invoke.
--
-- If not nil, a timed invoke is done, with the provided value used as the timed request timeout.  The value should be chosen small enough to provide the desired security properties but large enough that it will allow a round-trip from the sever to the client (for the status response and actual invoke request) within the timeout window.
--
-- ObjC selector: @- setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMs :: (IsMTRTestClusterClusterTestComplexNullableOptionalRequestParams mtrTestClusterClusterTestComplexNullableOptionalRequestParams, IsNSNumber value) => mtrTestClusterClusterTestComplexNullableOptionalRequestParams -> value -> IO ()
setTimedInvokeTimeoutMs mtrTestClusterClusterTestComplexNullableOptionalRequestParams value =
  sendMessage mtrTestClusterClusterTestComplexNullableOptionalRequestParams setTimedInvokeTimeoutMsSelector (toNSNumber value)

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @init@
initSelector :: Selector '[] (Id MTRTestClusterClusterTestComplexNullableOptionalRequestParams)
initSelector = mkSelector "init"

-- | @Selector@ for @copyWithZone:@
copyWithZoneSelector :: Selector '[Ptr ()] RawId
copyWithZoneSelector = mkSelector "copyWithZone:"

-- | @Selector@ for @nullableInt@
nullableIntSelector :: Selector '[] (Id NSNumber)
nullableIntSelector = mkSelector "nullableInt"

-- | @Selector@ for @setNullableInt:@
setNullableIntSelector :: Selector '[Id NSNumber] ()
setNullableIntSelector = mkSelector "setNullableInt:"

-- | @Selector@ for @optionalInt@
optionalIntSelector :: Selector '[] (Id NSNumber)
optionalIntSelector = mkSelector "optionalInt"

-- | @Selector@ for @setOptionalInt:@
setOptionalIntSelector :: Selector '[Id NSNumber] ()
setOptionalIntSelector = mkSelector "setOptionalInt:"

-- | @Selector@ for @nullableOptionalInt@
nullableOptionalIntSelector :: Selector '[] (Id NSNumber)
nullableOptionalIntSelector = mkSelector "nullableOptionalInt"

-- | @Selector@ for @setNullableOptionalInt:@
setNullableOptionalIntSelector :: Selector '[Id NSNumber] ()
setNullableOptionalIntSelector = mkSelector "setNullableOptionalInt:"

-- | @Selector@ for @nullableString@
nullableStringSelector :: Selector '[] (Id NSString)
nullableStringSelector = mkSelector "nullableString"

-- | @Selector@ for @setNullableString:@
setNullableStringSelector :: Selector '[Id NSString] ()
setNullableStringSelector = mkSelector "setNullableString:"

-- | @Selector@ for @optionalString@
optionalStringSelector :: Selector '[] (Id NSString)
optionalStringSelector = mkSelector "optionalString"

-- | @Selector@ for @setOptionalString:@
setOptionalStringSelector :: Selector '[Id NSString] ()
setOptionalStringSelector = mkSelector "setOptionalString:"

-- | @Selector@ for @nullableOptionalString@
nullableOptionalStringSelector :: Selector '[] (Id NSString)
nullableOptionalStringSelector = mkSelector "nullableOptionalString"

-- | @Selector@ for @setNullableOptionalString:@
setNullableOptionalStringSelector :: Selector '[Id NSString] ()
setNullableOptionalStringSelector = mkSelector "setNullableOptionalString:"

-- | @Selector@ for @nullableStruct@
nullableStructSelector :: Selector '[] (Id MTRTestClusterClusterSimpleStruct)
nullableStructSelector = mkSelector "nullableStruct"

-- | @Selector@ for @setNullableStruct:@
setNullableStructSelector :: Selector '[Id MTRTestClusterClusterSimpleStruct] ()
setNullableStructSelector = mkSelector "setNullableStruct:"

-- | @Selector@ for @optionalStruct@
optionalStructSelector :: Selector '[] (Id MTRTestClusterClusterSimpleStruct)
optionalStructSelector = mkSelector "optionalStruct"

-- | @Selector@ for @setOptionalStruct:@
setOptionalStructSelector :: Selector '[Id MTRTestClusterClusterSimpleStruct] ()
setOptionalStructSelector = mkSelector "setOptionalStruct:"

-- | @Selector@ for @nullableOptionalStruct@
nullableOptionalStructSelector :: Selector '[] (Id MTRTestClusterClusterSimpleStruct)
nullableOptionalStructSelector = mkSelector "nullableOptionalStruct"

-- | @Selector@ for @setNullableOptionalStruct:@
setNullableOptionalStructSelector :: Selector '[Id MTRTestClusterClusterSimpleStruct] ()
setNullableOptionalStructSelector = mkSelector "setNullableOptionalStruct:"

-- | @Selector@ for @nullableList@
nullableListSelector :: Selector '[] (Id NSArray)
nullableListSelector = mkSelector "nullableList"

-- | @Selector@ for @setNullableList:@
setNullableListSelector :: Selector '[Id NSArray] ()
setNullableListSelector = mkSelector "setNullableList:"

-- | @Selector@ for @optionalList@
optionalListSelector :: Selector '[] (Id NSArray)
optionalListSelector = mkSelector "optionalList"

-- | @Selector@ for @setOptionalList:@
setOptionalListSelector :: Selector '[Id NSArray] ()
setOptionalListSelector = mkSelector "setOptionalList:"

-- | @Selector@ for @nullableOptionalList@
nullableOptionalListSelector :: Selector '[] (Id NSArray)
nullableOptionalListSelector = mkSelector "nullableOptionalList"

-- | @Selector@ for @setNullableOptionalList:@
setNullableOptionalListSelector :: Selector '[Id NSArray] ()
setNullableOptionalListSelector = mkSelector "setNullableOptionalList:"

-- | @Selector@ for @timedInvokeTimeoutMs@
timedInvokeTimeoutMsSelector :: Selector '[] (Id NSNumber)
timedInvokeTimeoutMsSelector = mkSelector "timedInvokeTimeoutMs"

-- | @Selector@ for @setTimedInvokeTimeoutMs:@
setTimedInvokeTimeoutMsSelector :: Selector '[Id NSNumber] ()
setTimedInvokeTimeoutMsSelector = mkSelector "setTimedInvokeTimeoutMs:"

