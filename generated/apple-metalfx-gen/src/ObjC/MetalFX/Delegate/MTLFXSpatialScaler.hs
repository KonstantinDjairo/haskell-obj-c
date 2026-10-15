{-# OPTIONS_GHC -Wno-unused-imports #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Generated delegate overrides for @\@protocol MTLFXSpatialScaler@.
--
-- Usage:
--
-- @
-- delegate <- newMTLFXSpatialScaler defaultMTLFXSpatialScalerOverrides
--   { ... = Just $ \\arg0 -> ...
--   }
-- @
module ObjC.MetalFX.Delegate.MTLFXSpatialScaler
  ( MTLFXSpatialScalerOverrides(..)
  , defaultMTLFXSpatialScalerOverrides
  , newMTLFXSpatialScaler
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

-- | Overrides record for @\@protocol MTLFXSpatialScaler@.
--
-- Each field corresponds to a protocol method.  'Nothing' means the
-- method is not implemented (the object will not respond to that
-- selector).  'Just' provides the Haskell implementation.
data MTLFXSpatialScalerOverrides = MTLFXSpatialScalerOverrides
  { _encodeToCommandBuffer :: !(Maybe (RawId -> IO ()))
  , _inputContentWidth :: !(Maybe (IO Int))
  , _setInputContentWidth :: !(Maybe (Int -> IO ()))
  , _inputContentHeight :: !(Maybe (IO Int))
  , _setInputContentHeight :: !(Maybe (Int -> IO ()))
  , _colorTexture :: !(Maybe (IO RawId))
  , _setColorTexture :: !(Maybe (RawId -> IO ()))
  , _outputTexture :: !(Maybe (IO RawId))
  , _setOutputTexture :: !(Maybe (RawId -> IO ()))
  , _inputWidth :: !(Maybe (IO Int))
  , _inputHeight :: !(Maybe (IO Int))
  , _outputWidth :: !(Maybe (IO Int))
  , _outputHeight :: !(Maybe (IO Int))
  , _fence :: !(Maybe (IO RawId))
  , _setFence :: !(Maybe (RawId -> IO ()))
  }

-- | Default overrides with all methods unimplemented.
defaultMTLFXSpatialScalerOverrides :: MTLFXSpatialScalerOverrides
defaultMTLFXSpatialScalerOverrides = MTLFXSpatialScalerOverrides
  { _encodeToCommandBuffer = Nothing
  , _inputContentWidth = Nothing
  , _setInputContentWidth = Nothing
  , _inputContentHeight = Nothing
  , _setInputContentHeight = Nothing
  , _colorTexture = Nothing
  , _setColorTexture = Nothing
  , _outputTexture = Nothing
  , _setOutputTexture = Nothing
  , _inputWidth = Nothing
  , _inputHeight = Nothing
  , _outputWidth = Nothing
  , _outputHeight = Nothing
  , _fence = Nothing
  , _setFence = Nothing
  }

foreign import ccall "wrapper"
  wrap_at
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject))
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO (Ptr ObjCObject)))

foreign import ccall "wrapper"
  wrap_Q_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> CULong -> IO ()))

foreign import ccall "wrapper"
  wrap_Q
    :: (Ptr ObjCObject -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> IO CULong))

foreign import ccall "wrapper"
  wrap_at_v
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ())
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCObject -> IO ()))


foreign import ccall "wrapper"
  wrap_respondsToSel
    :: (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong)
    -> IO (FunPtr (Ptr ObjCObject -> Ptr ObjCSel -> Ptr ObjCSel -> IO CULong))

-- | The ObjC class for this delegate.  Created once, shared by all instances.
{-# NOINLINE mtlfxSpatialScalerDelegateClass #-}
mtlfxSpatialScalerDelegateClass :: Class
mtlfxSpatialScalerDelegateClass = unsafePerformIO $ do
  superCls <- getRequiredClass "NSObject"
  cls <- withCString "HsMTLFXSpatialScaler" $ \n ->
    objc_allocateClassPair superCls n 0
  addHsDataIvar cls
  let sel_encodeToCommandBuffer = unSelector (mkSelector "encodeToCommandBuffer:")
      sel_inputContentWidth = unSelector (mkSelector "inputContentWidth")
      sel_setInputContentWidth = unSelector (mkSelector "setInputContentWidth:")
      sel_inputContentHeight = unSelector (mkSelector "inputContentHeight")
      sel_setInputContentHeight = unSelector (mkSelector "setInputContentHeight:")
      sel_colorTexture = unSelector (mkSelector "colorTexture")
      sel_setColorTexture = unSelector (mkSelector "setColorTexture:")
      sel_outputTexture = unSelector (mkSelector "outputTexture")
      sel_setOutputTexture = unSelector (mkSelector "setOutputTexture:")
      sel_inputWidth = unSelector (mkSelector "inputWidth")
      sel_inputHeight = unSelector (mkSelector "inputHeight")
      sel_outputWidth = unSelector (mkSelector "outputWidth")
      sel_outputHeight = unSelector (mkSelector "outputHeight")
      sel_fence = unSelector (mkSelector "fence")
      sel_setFence = unSelector (mkSelector "setFence:")
  -- encodeToCommandBuffer:
  stub_0 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _encodeToCommandBuffer rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "encodeToCommandBuffer:" "v@:@" stub_0

  -- inputContentWidth
  stub_1 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _inputContentWidth rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "inputContentWidth" "Q@:" stub_1

  -- setInputContentWidth:
  stub_2 <- wrap_Q_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _setInputContentWidth rec_ of
      Nothing -> pure ()
      Just f -> f (fromIntegral arg0)
  addObjCMethod cls "setInputContentWidth:" "v@:Q" stub_2

  -- inputContentHeight
  stub_3 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _inputContentHeight rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "inputContentHeight" "Q@:" stub_3

  -- setInputContentHeight:
  stub_4 <- wrap_Q_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _setInputContentHeight rec_ of
      Nothing -> pure ()
      Just f -> f (fromIntegral arg0)
  addObjCMethod cls "setInputContentHeight:" "v@:Q" stub_4

  -- colorTexture
  stub_5 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _colorTexture rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "colorTexture" "@@:" stub_5

  -- setColorTexture:
  stub_6 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _setColorTexture rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setColorTexture:" "v@:@" stub_6

  -- outputTexture
  stub_7 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _outputTexture rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "outputTexture" "@@:" stub_7

  -- setOutputTexture:
  stub_8 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _setOutputTexture rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setOutputTexture:" "v@:@" stub_8

  -- inputWidth
  stub_9 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _inputWidth rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "inputWidth" "Q@:" stub_9

  -- inputHeight
  stub_10 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _inputHeight rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "inputHeight" "Q@:" stub_10

  -- outputWidth
  stub_11 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _outputWidth rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "outputWidth" "Q@:" stub_11

  -- outputHeight
  stub_12 <- wrap_Q $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _outputHeight rec_ of
      Nothing -> pure 0
      Just f -> do
        r <- f 
        pure (fromIntegral r)
  addObjCMethod cls "outputHeight" "Q@:" stub_12

  -- fence
  stub_13 <- wrap_at $ \self _cmd -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _fence rec_ of
      Nothing -> pure nullPtr
      Just f -> do
        r <- f 
        pure (castPtr (unRawId r) :: Ptr ObjCObject)
  addObjCMethod cls "fence" "@@:" stub_13

  -- setFence:
  stub_14 <- wrap_at_v $ \self _cmd arg0 -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    case _setFence rec_ of
      Nothing -> pure ()
      Just f -> f (RawId arg0)
  addObjCMethod cls "setFence:" "v@:@" stub_14

  -- respondsToSelector: override
  rtsStub <- wrap_respondsToSel $ \self _cmd queriedSel -> do
    sp <- readHsData self
    rec_ <- deRefStablePtr sp :: IO MTLFXSpatialScalerOverrides
    if queriedSel == sel_encodeToCommandBuffer then pure (maybe 0 (const 1) (_encodeToCommandBuffer rec_))
    else if queriedSel == sel_inputContentWidth then pure (maybe 0 (const 1) (_inputContentWidth rec_))
    else if queriedSel == sel_setInputContentWidth then pure (maybe 0 (const 1) (_setInputContentWidth rec_))
    else if queriedSel == sel_inputContentHeight then pure (maybe 0 (const 1) (_inputContentHeight rec_))
    else if queriedSel == sel_setInputContentHeight then pure (maybe 0 (const 1) (_setInputContentHeight rec_))
    else if queriedSel == sel_colorTexture then pure (maybe 0 (const 1) (_colorTexture rec_))
    else if queriedSel == sel_setColorTexture then pure (maybe 0 (const 1) (_setColorTexture rec_))
    else if queriedSel == sel_outputTexture then pure (maybe 0 (const 1) (_outputTexture rec_))
    else if queriedSel == sel_setOutputTexture then pure (maybe 0 (const 1) (_setOutputTexture rec_))
    else if queriedSel == sel_inputWidth then pure (maybe 0 (const 1) (_inputWidth rec_))
    else if queriedSel == sel_inputHeight then pure (maybe 0 (const 1) (_inputHeight rec_))
    else if queriedSel == sel_outputWidth then pure (maybe 0 (const 1) (_outputWidth rec_))
    else if queriedSel == sel_outputHeight then pure (maybe 0 (const 1) (_outputHeight rec_))
    else if queriedSel == sel_fence then pure (maybe 0 (const 1) (_fence rec_))
    else if queriedSel == sel_setFence then pure (maybe 0 (const 1) (_setFence rec_))
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
newMTLFXSpatialScaler :: MTLFXSpatialScalerOverrides -> IO RawId
newMTLFXSpatialScaler overrides = do
  inst <- class_createInstance mtlfxSpatialScalerDelegateClass 0
  sp <- newStablePtr overrides
  writeHsData inst sp
  pure inst
