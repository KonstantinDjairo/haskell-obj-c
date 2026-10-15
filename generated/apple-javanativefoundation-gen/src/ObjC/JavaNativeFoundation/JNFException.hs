{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | Generated bindings for @JNFException@.
module ObjC.JavaNativeFoundation.JNFException
  ( JNFException
  , IsJNFException(..)
  , raiseUnnamedException
  , raise_throwable
  , raise_as_reason
  , init_throwable
  , init_as_reason
  , throwToJava_exception
  , throwToJava_exception_as
  , raiseToJava
  , init_as_reasonSelector
  , init_throwableSelector
  , raiseToJavaSelector
  , raiseUnnamedExceptionSelector
  , raise_as_reasonSelector
  , raise_throwableSelector
  , throwToJava_exceptionSelector
  , throwToJava_exception_asSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.JavaNativeFoundation.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | @+ raiseUnnamedException:@
raiseUnnamedException :: RawId -> IO ()
raiseUnnamedException env =
  do
    cls' <- getRequiredClass "JNFException"
    sendClassMessage cls' raiseUnnamedExceptionSelector env

-- | @+ raise:throwable:@
raise_throwable :: RawId -> Ptr () -> IO ()
raise_throwable env throwable =
  do
    cls' <- getRequiredClass "JNFException"
    sendClassMessage cls' raise_throwableSelector env throwable

-- | @+ raise:as:reason:@
raise_as_reason :: RawId -> Const (Ptr CChar) -> Const (Ptr CChar) -> IO ()
raise_as_reason env javaExceptionType reasonMsg =
  do
    cls' <- getRequiredClass "JNFException"
    sendClassMessage cls' raise_as_reasonSelector env javaExceptionType reasonMsg

-- | @- init:throwable:@
init_throwable :: IsJNFException jnfException => jnfException -> RawId -> Ptr () -> IO RawId
init_throwable jnfException env throwable =
  sendOwnedMessage jnfException init_throwableSelector env throwable

-- | @- init:as:reason:@
init_as_reason :: IsJNFException jnfException => jnfException -> RawId -> Const (Ptr CChar) -> Const (Ptr CChar) -> IO RawId
init_as_reason jnfException env javaExceptionType reasonMsg =
  sendOwnedMessage jnfException init_as_reasonSelector env javaExceptionType reasonMsg

-- | @+ throwToJava:exception:@
throwToJava_exception :: IsNSException exception => RawId -> exception -> IO ()
throwToJava_exception env exception =
  do
    cls' <- getRequiredClass "JNFException"
    sendClassMessage cls' throwToJava_exceptionSelector env (toNSException exception)

-- | @+ throwToJava:exception:as:@
throwToJava_exception_as :: IsNSException exception => RawId -> exception -> Const (Ptr CChar) -> IO ()
throwToJava_exception_as env exception javaExceptionType =
  do
    cls' <- getRequiredClass "JNFException"
    sendClassMessage cls' throwToJava_exception_asSelector env (toNSException exception) javaExceptionType

-- | @- raiseToJava:@
raiseToJava :: IsJNFException jnfException => jnfException -> RawId -> IO ()
raiseToJava jnfException env =
  sendMessage jnfException raiseToJavaSelector env

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @raiseUnnamedException:@
raiseUnnamedExceptionSelector :: Selector '[RawId] ()
raiseUnnamedExceptionSelector = mkSelector "raiseUnnamedException:"

-- | @Selector@ for @raise:throwable:@
raise_throwableSelector :: Selector '[RawId, Ptr ()] ()
raise_throwableSelector = mkSelector "raise:throwable:"

-- | @Selector@ for @raise:as:reason:@
raise_as_reasonSelector :: Selector '[RawId, Const (Ptr CChar), Const (Ptr CChar)] ()
raise_as_reasonSelector = mkSelector "raise:as:reason:"

-- | @Selector@ for @init:throwable:@
init_throwableSelector :: Selector '[RawId, Ptr ()] RawId
init_throwableSelector = mkSelector "init:throwable:"

-- | @Selector@ for @init:as:reason:@
init_as_reasonSelector :: Selector '[RawId, Const (Ptr CChar), Const (Ptr CChar)] RawId
init_as_reasonSelector = mkSelector "init:as:reason:"

-- | @Selector@ for @throwToJava:exception:@
throwToJava_exceptionSelector :: Selector '[RawId, Id NSException] ()
throwToJava_exceptionSelector = mkSelector "throwToJava:exception:"

-- | @Selector@ for @throwToJava:exception:as:@
throwToJava_exception_asSelector :: Selector '[RawId, Id NSException, Const (Ptr CChar)] ()
throwToJava_exception_asSelector = mkSelector "throwToJava:exception:as:"

-- | @Selector@ for @raiseToJava:@
raiseToJavaSelector :: Selector '[RawId] ()
raiseToJavaSelector = mkSelector "raiseToJava:"

