{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol MTLHeap@.
--
-- Usage:
--
-- @
-- delegate <- newMTLHeap defaultMTLHeapOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.Metal.Delegate.MTLHeap
  ( MTLHeapOverrides(..)
  , defaultMTLHeapOverrides
  , newMTLHeap
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

-- | Overrides record for @\@protocol MTLHeap@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data MTLHeapOverrides = MTLHeapOverrides
  { _maxAvailableSizeWithAlignment :: !(Maybe (Int -> IO Int))
  , _newTextureWithDescriptor :: !(Maybe (RawId -> IO RawId))
  , _newTextureWithDescriptor_offset :: !(Maybe (RawId -> Int -> IO RawId))
  , _newAccelerationStructureWithSize :: !(Maybe (Int -> IO RawId))
  , _newAccelerationStructureWithDescriptor :: !(Maybe (RawId -> IO RawId))
  , _newAccelerationStructureWithSize_offset :: !(Maybe (Int -> Int -> IO RawId))
  , _newAccelerationStructureWithDescriptor_offset :: !(Maybe (RawId -> Int -> IO RawId))
  , _label :: !(Maybe (IO RawId))
  , _setLabel :: !(Maybe (RawId -> IO ()))
  , _device :: !(Maybe (IO RawId))
  , _size :: !(Maybe (IO Int))
  , _usedSize :: !(Maybe (IO Int))
  , _currentAllocatedSize :: !(Maybe (IO Int))
  }

-- | Default overrides with all methods unimplemented.
defaultMTLHeapOverrides :: MTLHeapOverrides
defaultMTLHeapOverrides = MTLHeapOverrides
  { _maxAvailableSizeWithAlignment = Nothing
  , _newTextureWithDescriptor = Nothing
  , _newTextureWithDescriptor_offset = Nothing
  , _newAccelerationStructureWithSize = Nothing
  , _newAccelerationStructureWithDescriptor = Nothing
  , _newAccelerationStructureWithSize_offset = Nothing
  , _newAccelerationStructureWithDescriptor_offset = Nothing
  , _label = Nothing
  , _setLabel = Nothing
  , _device = Nothing
  , _size = Nothing
  , _usedSize = Nothing
  , _currentAllocatedSize = Nothing
  }

foreign import ccall "wrapper"
  wrap_Q
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO CULong))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))

foreign import ccall "wrapper"
  wrap_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_Q_Q_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> CULong -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> CULong -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_Q_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_at_Q_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> CULong -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> CULong -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_at_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_Q_Q
    :: (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO CULong))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE mtlHeapDelegateClass #-}
mtlHeapDelegateClass :: Class
mtlHeapDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsMTLHeap" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_maxAvailableSizeWithAlignment = unSelector (mkSelector "maxAvailableSizeWithAlignment:")
      sel_newTextureWithDescriptor = unSelector (mkSelector "newTextureWithDescriptor:")
      sel_newTextureWithDescriptor_offset = unSelector (mkSelector "newTextureWithDescriptor:offset:")
      sel_newAccelerationStructureWithSize = unSelector (mkSelector "newAccelerationStructureWithSize:")
      sel_newAccelerationStructureWithDescriptor = unSelector (mkSelector "newAccelerationStructureWithDescriptor:")
      sel_newAccelerationStructureWithSize_offset = unSelector (mkSelector "newAccelerationStructureWithSize:offset:")
      sel_newAccelerationStructureWithDescriptor_offset = unSelector (mkSelector "newAccelerationStructureWithDescriptor:offset:")
      sel_label = unSelector (mkSelector "label")
      sel_setLabel = unSelector (mkSelector "setLabel:")
      sel_device = unSelector (mkSelector "device")
      sel_size = unSelector (mkSelector "size")
      sel_usedSize = unSelector (mkSelector "usedSize")
      sel_currentAllocatedSize = unSelector (mkSelector "currentAllocatedSize")
  -- maxAvailableSizeWithAlignment:
  stub_0 <- wrap_Q_Q $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _maxAvailableSizeWithAlignment rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f (fromIntegral arg0)
        pure (fromIntegral r)
  addObjCMethod cls "maxAvailableSizeWithAlignment:" "Q@:Q" stub_0

  -- newTextureWithDescriptor:
  stub_1 <- wrap_at_at $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newTextureWithDescriptor rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (RawId arg0)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newTextureWithDescriptor:" "@@:@" stub_1

  -- newTextureWithDescriptor:offset:
  stub_2 <- wrap_at_Q_at $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newTextureWithDescriptor_offset rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (RawId arg0) (fromIntegral arg1)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newTextureWithDescriptor:offset:" "@@:@Q" stub_2

  -- newAccelerationStructureWithSize:
  stub_3 <- wrap_Q_at $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newAccelerationStructureWithSize rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (fromIntegral arg0)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newAccelerationStructureWithSize:" "@@:Q" stub_3

  -- newAccelerationStructureWithDescriptor:
  stub_4 <- wrap_at_at $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newAccelerationStructureWithDescriptor rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (RawId arg0)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newAccelerationStructureWithDescriptor:" "@@:@" stub_4

  -- newAccelerationStructureWithSize:offset:
  stub_5 <- wrap_Q_Q_at $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newAccelerationStructureWithSize_offset rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (fromIntegral arg0) (fromIntegral arg1)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newAccelerationStructureWithSize:offset:" "@@:QQ" stub_5

  -- newAccelerationStructureWithDescriptor:offset:
  stub_6 <- wrap_at_Q_at $ \self _cmd arg0 arg1 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _newAccelerationStructureWithDescriptor_offset rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f (RawId arg0) (fromIntegral arg1)
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "newAccelerationStructureWithDescriptor:offset:" "@@:@Q" stub_6

  -- label
  stub_7 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _label rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "label" "@@:" stub_7

  -- setLabel:
  stub_8 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _setLabel rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setLabel:" "v@:@" stub_8

  -- device
  stub_9 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _device rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "device" "@@:" stub_9

  -- size
  stub_10 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _size rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "size" "Q@:" stub_10

  -- usedSize
  stub_11 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _usedSize rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "usedSize" "Q@:" stub_11

  -- currentAllocatedSize
  stub_12 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    case _currentAllocatedSize rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "currentAllocatedSize" "Q@:" stub_12

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLHeapOverrides
    if queriedSel == sel_maxAvailableSizeWithAlignment then pure (maybe 0 (const 1) (_maxAvailableSizeWithAlignment rec_))
    else if queriedSel == sel_newTextureWithDescriptor then pure (maybe 0 (const 1) (_newTextureWithDescriptor rec_))
    else if queriedSel == sel_newTextureWithDescriptor_offset then pure (maybe 0 (const 1) (_newTextureWithDescriptor_offset rec_))
    else if queriedSel == sel_newAccelerationStructureWithSize then pure (maybe 0 (const 1) (_newAccelerationStructureWithSize rec_))
    else if queriedSel == sel_newAccelerationStructureWithDescriptor then pure (maybe 0 (const 1) (_newAccelerationStructureWithDescriptor rec_))
    else if queriedSel == sel_newAccelerationStructureWithSize_offset then pure (maybe 0 (const 1) (_newAccelerationStructureWithSize_offset rec_))
    else if queriedSel == sel_newAccelerationStructureWithDescriptor_offset then pure (maybe 0 (const 1) (_newAccelerationStructureWithDescriptor_offset rec_))
    else if queriedSel == sel_label then pure (maybe 0 (const 1) (_label rec_))
    else if queriedSel == sel_setLabel then pure (maybe 0 (const 1) (_setLabel rec_))
    else if queriedSel == sel_device then pure (maybe 0 (const 1) (_device rec_))
    else if queriedSel == sel_size then pure (maybe 0 (const 1) (_size rec_))
    else if queriedSel == sel_usedSize then pure (maybe 0 (const 1) (_usedSize rec_))
    else if queriedSel == sel_currentAllocatedSize then pure (maybe 0 (const 1) (_currentAllocatedSize rec_))
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
newMTLHeap :: MTLHeapOverrides -> IO RawId
newMTLHeap overrides = do
  inst <- class_createInstance mtlHeapDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
