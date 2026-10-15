{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol GCDevicePhysicalInput@.
--
-- Usage:
--
-- @
-- delegate <- newGCDevicePhysicalInput defaultGCDevicePhysicalInputOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.GameController.Delegate.GCDevicePhysicalInput
  ( GCDevicePhysicalInputOverrides(..)
  , defaultGCDevicePhysicalInputOverrides
  , newGCDevicePhysicalInput
  ) where

import Foreign.Ptr (Ptr, FunPtr, castPtr, nullPtr)
import Foreign.C.Types
import Foreign.StablePtr (newStablePtr, deRefStablePtr)
import System.IO.Unsafe (unsafePerformIO)
import Foreign.C.String (withCString)
import Foreign.LibFFI (retCULong, argPtr)

import ObjC.Runtime.Types
import ObjC.Runtime.Class (getRequiredClass, class_createInstance)
import ObjC.Runtime.ClassBuilder (objc_allocateClassPair, objc_registerClassPair)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.MsgSend (sendSuperMsg)
import ObjC.Runtime.StableIvar

-- | Overrides record for @\@protocol GCDevicePhysicalInput@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data GCDevicePhysicalInputOverrides = GCDevicePhysicalInputOverrides
  { _capture :: !(Maybe (IO RawId))
  , _nextInputState :: !(Maybe (IO RawId))
  , _device :: !(Maybe (IO RawId))
  , _elementValueDidChangeHandler :: !(Maybe (IO RawId))
  , _setElementValueDidChangeHandler :: !(Maybe (RawId -> IO ()))
  , _inputStateAvailableHandler :: !(Maybe (IO RawId))
  , _setInputStateAvailableHandler :: !(Maybe (RawId -> IO ()))
  , _inputStateQueueDepth :: !(Maybe (IO Int))
  , _setInputStateQueueDepth :: !(Maybe (Int -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultGCDevicePhysicalInputOverrides :: GCDevicePhysicalInputOverrides
defaultGCDevicePhysicalInputOverrides = GCDevicePhysicalInputOverrides
  { _capture = Nothing
  , _nextInputState = Nothing
  , _device = Nothing
  , _elementValueDidChangeHandler = Nothing
  , _setElementValueDidChangeHandler = Nothing
  , _inputStateAvailableHandler = Nothing
  , _setInputStateAvailableHandler = Nothing
  , _inputStateQueueDepth = Nothing
  , _setInputStateQueueDepth = Nothing
  }

foreign import ccall "wrapper"
  wrap_q_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> CLong -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> CLong -> IO ()))

foreign import ccall "wrapper"
  wrap_q
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO CLong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO CLong))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject)))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE gcDevicePhysicalInputDelegateClass #-}
gcDevicePhysicalInputDelegateClass :: Class
gcDevicePhysicalInputDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsGCDevicePhysicalInput" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_capture = unSelector (mkSelector "capture")
      sel_nextInputState = unSelector (mkSelector "nextInputState")
      sel_device = unSelector (mkSelector "device")
      sel_elementValueDidChangeHandler = unSelector (mkSelector "elementValueDidChangeHandler")
      sel_setElementValueDidChangeHandler = unSelector (mkSelector "setElementValueDidChangeHandler:")
      sel_inputStateAvailableHandler = unSelector (mkSelector "inputStateAvailableHandler")
      sel_setInputStateAvailableHandler = unSelector (mkSelector "setInputStateAvailableHandler:")
      sel_inputStateQueueDepth = unSelector (mkSelector "inputStateQueueDepth")
      sel_setInputStateQueueDepth = unSelector (mkSelector "setInputStateQueueDepth:")
  -- capture
  stub_0 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _capture rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "capture" "@@:" stub_0

  -- nextInputState
  stub_1 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _nextInputState rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "nextInputState" "@@:" stub_1

  -- device
  stub_2 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _device rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "device" "@@:" stub_2

  -- elementValueDidChangeHandler
  stub_3 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _elementValueDidChangeHandler rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "elementValueDidChangeHandler" "@@:" stub_3

  -- setElementValueDidChangeHandler:
  stub_4 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _setElementValueDidChangeHandler rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setElementValueDidChangeHandler:" "v@:@" stub_4

  -- inputStateAvailableHandler
  stub_5 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _inputStateAvailableHandler rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "inputStateAvailableHandler" "@@:" stub_5

  -- setInputStateAvailableHandler:
  stub_6 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _setInputStateAvailableHandler rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setInputStateAvailableHandler:" "v@:@" stub_6

  -- inputStateQueueDepth
  stub_7 <- wrap_q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _inputStateQueueDepth rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "inputStateQueueDepth" "q@:" stub_7

  -- setInputStateQueueDepth:
  stub_8 <- wrap_q_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    case _setInputStateQueueDepth rec_ of
      Nothing -> pure ()
      Just f -> f (fromIntegral arg0)
  addObjCMethod cls "setInputStateQueueDepth:" "v@:q" stub_8

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO GCDevicePhysicalInputOverrides
    if queriedSel == sel_capture then pure (maybe 0 (const 1) (_capture rec_))
    else if queriedSel == sel_nextInputState then pure (maybe 0 (const 1) (_nextInputState rec_))
    else if queriedSel == sel_device then pure (maybe 0 (const 1) (_device rec_))
    else if queriedSel == sel_elementValueDidChangeHandler then pure (maybe 0 (const 1) (_elementValueDidChangeHandler rec_))
    else if queriedSel == sel_setElementValueDidChangeHandler then pure (maybe 0 (const 1) (_setElementValueDidChangeHandler rec_))
    else if queriedSel == sel_inputStateAvailableHandler then pure (maybe 0 (const 1) (_inputStateAvailableHandler rec_))
    else if queriedSel == sel_setInputStateAvailableHandler then pure (maybe 0 (const 1) (_setInputStateAvailableHandler rec_))
    else if queriedSel == sel_inputStateQueueDepth then pure (maybe 0 (const 1) (_inputStateQueueDepth rec_))
    else if queriedSel == sel_setInputStateQueueDepth then pure (maybe 0 (const 1) (_setInputStateQueueDepth rec_))
    else do
      let super_ = ObjCSuper (RawId self) superCls
      sendSuperMsg super_ (mkSelector "respondsToSelector:") retCULong
        [argPtr (castPtr queriedSel :: Ptr ())]
  addObjCMethod cls "respondsToSelector:" "B@::" rtsStub

  addStablePtrDeallocHandler cls
  objc_registerClassPair cls
  pure cls

-- | Create a new delegate implementing this protocol.
--
-- The returned 'RawId' can be used as a delegate or data source.
newGCDevicePhysicalInput :: GCDevicePhysicalInputOverrides -> IO RawId
newGCDevicePhysicalInput overrides = do
  inst <- class_createInstance gcDevicePhysicalInputDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
