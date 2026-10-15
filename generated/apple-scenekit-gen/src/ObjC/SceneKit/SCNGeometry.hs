{-# LANGUAGE DataKinds #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE FlexibleContexts #-}

-- | SCNGeometry
--
-- SCNGeometry is an abstract class that represents the geometry that can be attached to a SCNNode.
--
-- Generated bindings for @SCNGeometry@.
module ObjC.SceneKit.SCNGeometry
  ( SCNGeometry
  , IsSCNGeometry(..)
  , geometry
  , insertMaterial_atIndex
  , removeMaterialAtIndex
  , replaceMaterialAtIndex_withMaterial
  , materialWithName
  , geometryWithSources_elements
  , geometrySourcesForSemantic
  , geometryElementAtIndex
  , name
  , setName
  , materials
  , setMaterials
  , firstMaterial
  , setFirstMaterial
  , geometryElementCount
  , tessellator
  , setTessellator
  , subdivisionLevel
  , setSubdivisionLevel
  , wantsAdaptiveSubdivision
  , setWantsAdaptiveSubdivision
  , edgeCreasesElement
  , setEdgeCreasesElement
  , edgeCreasesSource
  , setEdgeCreasesSource
  , edgeCreasesElementSelector
  , edgeCreasesSourceSelector
  , firstMaterialSelector
  , geometryElementAtIndexSelector
  , geometryElementCountSelector
  , geometrySelector
  , geometrySourcesForSemanticSelector
  , geometryWithSources_elementsSelector
  , insertMaterial_atIndexSelector
  , materialWithNameSelector
  , materialsSelector
  , nameSelector
  , removeMaterialAtIndexSelector
  , replaceMaterialAtIndex_withMaterialSelector
  , setEdgeCreasesElementSelector
  , setEdgeCreasesSourceSelector
  , setFirstMaterialSelector
  , setMaterialsSelector
  , setNameSelector
  , setSubdivisionLevelSelector
  , setTessellatorSelector
  , setWantsAdaptiveSubdivisionSelector
  , subdivisionLevelSelector
  , tessellatorSelector
  , wantsAdaptiveSubdivisionSelector


  ) where

import Foreign.Ptr (Ptr, FunPtr)
import Foreign.C.Types

import ObjC.Runtime.Types
import ObjC.Runtime.Message (sendMessage, sendOwnedMessage, sendClassMessage, sendOwnedClassMessage)
import ObjC.Runtime.Selector (mkSelector)
import ObjC.Runtime.Class (getRequiredClass)

import ObjC.SceneKit.Internal.Classes
import ObjC.Foundation.Internal.Classes

-- | geometry
--
-- Creates and returns an empty geometry object.
--
-- An empty geometry may be used as the lowest level of detail of a geometry.
--
-- ObjC selector: @+ geometry@
geometry :: IO (Id SCNGeometry)
geometry  =
  do
    cls' <- getRequiredClass "SCNGeometry"
    sendClassMessage cls' geometrySelector

-- | insertMaterial:atIndex:
--
-- Insert a material in the materials array at the specified index.
--
-- @material@ — The material to insert.
--
-- @index@ — Index in the materials array to insert the new material.
--
-- ObjC selector: @- insertMaterial:atIndex:@
insertMaterial_atIndex :: (IsSCNGeometry scnGeometry, IsSCNMaterial material) => scnGeometry -> material -> CULong -> IO ()
insertMaterial_atIndex scnGeometry material index =
  sendMessage scnGeometry insertMaterial_atIndexSelector (toSCNMaterial material) index

-- | removeMaterialAtIndex:
--
-- Remove the material at the specified index from the materials array.
--
-- @index@ — The index of the material to remove from the 'materials' array.
--
-- ObjC selector: @- removeMaterialAtIndex:@
removeMaterialAtIndex :: IsSCNGeometry scnGeometry => scnGeometry -> CULong -> IO ()
removeMaterialAtIndex scnGeometry index =
  sendMessage scnGeometry removeMaterialAtIndexSelector index

-- | replaceMaterialAtIndex:withMaterial:
--
-- Remove the material at the index 'index' from the materials array of the receiver and insert 'material' in its position.
--
-- @index@ — The index of the material to replace in the materials array.
--
-- @material@ — The new material that will replace the previous one.
--
-- ObjC selector: @- replaceMaterialAtIndex:withMaterial:@
replaceMaterialAtIndex_withMaterial :: (IsSCNGeometry scnGeometry, IsSCNMaterial material) => scnGeometry -> CULong -> material -> IO ()
replaceMaterialAtIndex_withMaterial scnGeometry index material =
  sendMessage scnGeometry replaceMaterialAtIndex_withMaterialSelector index (toSCNMaterial material)

-- | materialWithName:
--
-- Return the first material from the materials array of the receiver with the specified name.
--
-- @name@ — The name of the material to retrieve.
--
-- ObjC selector: @- materialWithName:@
materialWithName :: (IsSCNGeometry scnGeometry, IsNSString name) => scnGeometry -> name -> IO (Id SCNMaterial)
materialWithName scnGeometry name =
  sendMessage scnGeometry materialWithNameSelector (toNSString name)

-- | geometryWithSources:elements:
--
-- Creates and returns a new geometry built from geometry sources and geometry elements.
--
-- @sources@ — An array of geometry sources. If several geometry sources have the same semantic, only the first one is taken into account.
--
-- @elements@ — An array of geometry elements. The sort order in the array determines the mapping between materials and geometry elements.
--
-- A geometry is made of geometry sources (at least vertices) and at least one geometry element. Multiple sources for texture coordinates are accepted. In that case the mappingChannel is implicitly set based on the order of the texture sources, starting at index 0.
--
-- ObjC selector: @+ geometryWithSources:elements:@
geometryWithSources_elements :: (IsNSArray sources, IsNSArray elements) => sources -> elements -> IO (Id SCNGeometry)
geometryWithSources_elements sources elements =
  do
    cls' <- getRequiredClass "SCNGeometry"
    sendClassMessage cls' geometryWithSources_elementsSelector (toNSArray sources) (toNSArray elements)

-- | geometrySourcesForSemantic:
--
-- Returns the geometry sources for a given semantic.
--
-- @semantic@ — The semantic of the geometry sources that should be retrieved.
--
-- Returns nil if no geometry source is found for the given semantic. May return more than one source, typically for multiple texture coordinate sources.
--
-- ObjC selector: @- geometrySourcesForSemantic:@
geometrySourcesForSemantic :: (IsSCNGeometry scnGeometry, IsNSString semantic) => scnGeometry -> semantic -> IO (Id NSArray)
geometrySourcesForSemantic scnGeometry semantic =
  sendMessage scnGeometry geometrySourcesForSemanticSelector (toNSString semantic)

-- | geometryElementAtIndex:
--
-- Returns the geometry element at a given index.
--
-- @elementIndex@ — The index of the geometry element.
--
-- ObjC selector: @- geometryElementAtIndex:@
geometryElementAtIndex :: IsSCNGeometry scnGeometry => scnGeometry -> CLong -> IO (Id SCNGeometryElement)
geometryElementAtIndex scnGeometry elementIndex =
  sendMessage scnGeometry geometryElementAtIndexSelector elementIndex

-- | name
--
-- Determines the name of the receiver.
--
-- ObjC selector: @- name@
name :: IsSCNGeometry scnGeometry => scnGeometry -> IO (Id NSString)
name scnGeometry =
  sendMessage scnGeometry nameSelector

-- | name
--
-- Determines the name of the receiver.
--
-- ObjC selector: @- setName:@
setName :: (IsSCNGeometry scnGeometry, IsNSString value) => scnGeometry -> value -> IO ()
setName scnGeometry value =
  sendMessage scnGeometry setNameSelector (toNSString value)

-- | materials
--
-- Specifies the receiver's materials array.
--
-- Each geometry element can be rendered using a different material. The index of the material used for a geometry element is equal to the index of that element modulo the number of materials.
--
-- ObjC selector: @- materials@
materials :: IsSCNGeometry scnGeometry => scnGeometry -> IO (Id NSArray)
materials scnGeometry =
  sendMessage scnGeometry materialsSelector

-- | materials
--
-- Specifies the receiver's materials array.
--
-- Each geometry element can be rendered using a different material. The index of the material used for a geometry element is equal to the index of that element modulo the number of materials.
--
-- ObjC selector: @- setMaterials:@
setMaterials :: (IsSCNGeometry scnGeometry, IsNSArray value) => scnGeometry -> value -> IO ()
setMaterials scnGeometry value =
  sendMessage scnGeometry setMaterialsSelector (toNSArray value)

-- | firstMaterial
--
-- Determines the first material of the geometry. Returns nil if the geometry has no material.
--
-- This method is here for convenience. It is equivalent to the first object in the "materials" array above.
--
-- ObjC selector: @- firstMaterial@
firstMaterial :: IsSCNGeometry scnGeometry => scnGeometry -> IO (Id SCNMaterial)
firstMaterial scnGeometry =
  sendMessage scnGeometry firstMaterialSelector

-- | firstMaterial
--
-- Determines the first material of the geometry. Returns nil if the geometry has no material.
--
-- This method is here for convenience. It is equivalent to the first object in the "materials" array above.
--
-- ObjC selector: @- setFirstMaterial:@
setFirstMaterial :: (IsSCNGeometry scnGeometry, IsSCNMaterial value) => scnGeometry -> value -> IO ()
setFirstMaterial scnGeometry value =
  sendMessage scnGeometry setFirstMaterialSelector (toSCNMaterial value)

-- | geometryElementCount
--
-- Returns the number of geometry elements owned by the geometry.
--
-- ObjC selector: @- geometryElementCount@
geometryElementCount :: IsSCNGeometry scnGeometry => scnGeometry -> IO CLong
geometryElementCount scnGeometry =
  sendMessage scnGeometry geometryElementCountSelector

-- | @- tessellator@
tessellator :: IsSCNGeometry scnGeometry => scnGeometry -> IO (Id SCNGeometryTessellator)
tessellator scnGeometry =
  sendMessage scnGeometry tessellatorSelector

-- | @- setTessellator:@
setTessellator :: (IsSCNGeometry scnGeometry, IsSCNGeometryTessellator value) => scnGeometry -> value -> IO ()
setTessellator scnGeometry value =
  sendMessage scnGeometry setTessellatorSelector (toSCNGeometryTessellator value)

-- | subdivisionLevel
--
-- Specifies the subdivision level of the receiver. Defaults to 0.
--
-- A subdivision level of 0 means no subdivision. When the @tessellator@ property of the receiver is not nil, the refinement is done on the GPU.
--
-- ObjC selector: @- subdivisionLevel@
subdivisionLevel :: IsSCNGeometry scnGeometry => scnGeometry -> IO CULong
subdivisionLevel scnGeometry =
  sendMessage scnGeometry subdivisionLevelSelector

-- | subdivisionLevel
--
-- Specifies the subdivision level of the receiver. Defaults to 0.
--
-- A subdivision level of 0 means no subdivision. When the @tessellator@ property of the receiver is not nil, the refinement is done on the GPU.
--
-- ObjC selector: @- setSubdivisionLevel:@
setSubdivisionLevel :: IsSCNGeometry scnGeometry => scnGeometry -> CULong -> IO ()
setSubdivisionLevel scnGeometry value =
  sendMessage scnGeometry setSubdivisionLevelSelector value

-- | wantsAdaptiveSubdivision
--
-- Specifies if the subdivision is adaptive or uniform. Defaults to YES.
--
-- Adaptive subdivision requires that the @tessellator@ property of the receiver is not nil.
--
-- ObjC selector: @- wantsAdaptiveSubdivision@
wantsAdaptiveSubdivision :: IsSCNGeometry scnGeometry => scnGeometry -> IO Bool
wantsAdaptiveSubdivision scnGeometry =
  sendMessage scnGeometry wantsAdaptiveSubdivisionSelector

-- | wantsAdaptiveSubdivision
--
-- Specifies if the subdivision is adaptive or uniform. Defaults to YES.
--
-- Adaptive subdivision requires that the @tessellator@ property of the receiver is not nil.
--
-- ObjC selector: @- setWantsAdaptiveSubdivision:@
setWantsAdaptiveSubdivision :: IsSCNGeometry scnGeometry => scnGeometry -> Bool -> IO ()
setWantsAdaptiveSubdivision scnGeometry value =
  sendMessage scnGeometry setWantsAdaptiveSubdivisionSelector value

-- | edgeCreasesElement
--
-- Specifies the edges creases that control the subdivision. Defaults to nil.
--
-- The primitive type of this geometry element must be SCNGeometryPrimitiveTypeLine. See subdivisionLevel above to control the level of subdivision. See edgeCreasesSource below to specify sharpness of the creases.
--
-- ObjC selector: @- edgeCreasesElement@
edgeCreasesElement :: IsSCNGeometry scnGeometry => scnGeometry -> IO RawId
edgeCreasesElement scnGeometry =
  sendMessage scnGeometry edgeCreasesElementSelector

-- | edgeCreasesElement
--
-- Specifies the edges creases that control the subdivision. Defaults to nil.
--
-- The primitive type of this geometry element must be SCNGeometryPrimitiveTypeLine. See subdivisionLevel above to control the level of subdivision. See edgeCreasesSource below to specify sharpness of the creases.
--
-- ObjC selector: @- setEdgeCreasesElement:@
setEdgeCreasesElement :: IsSCNGeometry scnGeometry => scnGeometry -> RawId -> IO ()
setEdgeCreasesElement scnGeometry value =
  sendMessage scnGeometry setEdgeCreasesElementSelector value

-- | edgeCreasesSource
--
-- Specifies the crease value of the edges specified by edgeCreasesElement. Defaults to nil.
--
-- The semantic of this geometry source must be "SCNGeometrySourceSemanticEdgeCrease". The creases values are floating values between 0 and 10, where 0 means smooth and 10 means infinitely sharp. See subdivisionLevel above to control the level of subdivision. See edgeCreasesElement above to specify edges for edge creases.
--
-- ObjC selector: @- edgeCreasesSource@
edgeCreasesSource :: IsSCNGeometry scnGeometry => scnGeometry -> IO RawId
edgeCreasesSource scnGeometry =
  sendMessage scnGeometry edgeCreasesSourceSelector

-- | edgeCreasesSource
--
-- Specifies the crease value of the edges specified by edgeCreasesElement. Defaults to nil.
--
-- The semantic of this geometry source must be "SCNGeometrySourceSemanticEdgeCrease". The creases values are floating values between 0 and 10, where 0 means smooth and 10 means infinitely sharp. See subdivisionLevel above to control the level of subdivision. See edgeCreasesElement above to specify edges for edge creases.
--
-- ObjC selector: @- setEdgeCreasesSource:@
setEdgeCreasesSource :: IsSCNGeometry scnGeometry => scnGeometry -> RawId -> IO ()
setEdgeCreasesSource scnGeometry value =
  sendMessage scnGeometry setEdgeCreasesSourceSelector value

-- ---------------------------------------------------------------------------
-- Selectors
-- ---------------------------------------------------------------------------

-- | @Selector@ for @geometry@
geometrySelector :: Selector '[] (Id SCNGeometry)
geometrySelector = mkSelector "geometry"

-- | @Selector@ for @insertMaterial:atIndex:@
insertMaterial_atIndexSelector :: Selector '[Id SCNMaterial, CULong] ()
insertMaterial_atIndexSelector = mkSelector "insertMaterial:atIndex:"

-- | @Selector@ for @removeMaterialAtIndex:@
removeMaterialAtIndexSelector :: Selector '[CULong] ()
removeMaterialAtIndexSelector = mkSelector "removeMaterialAtIndex:"

-- | @Selector@ for @replaceMaterialAtIndex:withMaterial:@
replaceMaterialAtIndex_withMaterialSelector :: Selector '[CULong, Id SCNMaterial] ()
replaceMaterialAtIndex_withMaterialSelector = mkSelector "replaceMaterialAtIndex:withMaterial:"

-- | @Selector@ for @materialWithName:@
materialWithNameSelector :: Selector '[Id NSString] (Id SCNMaterial)
materialWithNameSelector = mkSelector "materialWithName:"

-- | @Selector@ for @geometryWithSources:elements:@
geometryWithSources_elementsSelector :: Selector '[Id NSArray, Id NSArray] (Id SCNGeometry)
geometryWithSources_elementsSelector = mkSelector "geometryWithSources:elements:"

-- | @Selector@ for @geometrySourcesForSemantic:@
geometrySourcesForSemanticSelector :: Selector '[Id NSString] (Id NSArray)
geometrySourcesForSemanticSelector = mkSelector "geometrySourcesForSemantic:"

-- | @Selector@ for @geometryElementAtIndex:@
geometryElementAtIndexSelector :: Selector '[CLong] (Id SCNGeometryElement)
geometryElementAtIndexSelector = mkSelector "geometryElementAtIndex:"

-- | @Selector@ for @name@
nameSelector :: Selector '[] (Id NSString)
nameSelector = mkSelector "name"

-- | @Selector@ for @setName:@
setNameSelector :: Selector '[Id NSString] ()
setNameSelector = mkSelector "setName:"

-- | @Selector@ for @materials@
materialsSelector :: Selector '[] (Id NSArray)
materialsSelector = mkSelector "materials"

-- | @Selector@ for @setMaterials:@
setMaterialsSelector :: Selector '[Id NSArray] ()
setMaterialsSelector = mkSelector "setMaterials:"

-- | @Selector@ for @firstMaterial@
firstMaterialSelector :: Selector '[] (Id SCNMaterial)
firstMaterialSelector = mkSelector "firstMaterial"

-- | @Selector@ for @setFirstMaterial:@
setFirstMaterialSelector :: Selector '[Id SCNMaterial] ()
setFirstMaterialSelector = mkSelector "setFirstMaterial:"

-- | @Selector@ for @geometryElementCount@
geometryElementCountSelector :: Selector '[] CLong
geometryElementCountSelector = mkSelector "geometryElementCount"

-- | @Selector@ for @tessellator@
tessellatorSelector :: Selector '[] (Id SCNGeometryTessellator)
tessellatorSelector = mkSelector "tessellator"

-- | @Selector@ for @setTessellator:@
setTessellatorSelector :: Selector '[Id SCNGeometryTessellator] ()
setTessellatorSelector = mkSelector "setTessellator:"

-- | @Selector@ for @subdivisionLevel@
subdivisionLevelSelector :: Selector '[] CULong
subdivisionLevelSelector = mkSelector "subdivisionLevel"

-- | @Selector@ for @setSubdivisionLevel:@
setSubdivisionLevelSelector :: Selector '[CULong] ()
setSubdivisionLevelSelector = mkSelector "setSubdivisionLevel:"

-- | @Selector@ for @wantsAdaptiveSubdivision@
wantsAdaptiveSubdivisionSelector :: Selector '[] Bool
wantsAdaptiveSubdivisionSelector = mkSelector "wantsAdaptiveSubdivision"

-- | @Selector@ for @setWantsAdaptiveSubdivision:@
setWantsAdaptiveSubdivisionSelector :: Selector '[Bool] ()
setWantsAdaptiveSubdivisionSelector = mkSelector "setWantsAdaptiveSubdivision:"

-- | @Selector@ for @edgeCreasesElement@
edgeCreasesElementSelector :: Selector '[] RawId
edgeCreasesElementSelector = mkSelector "edgeCreasesElement"

-- | @Selector@ for @setEdgeCreasesElement:@
setEdgeCreasesElementSelector :: Selector '[RawId] ()
setEdgeCreasesElementSelector = mkSelector "setEdgeCreasesElement:"

-- | @Selector@ for @edgeCreasesSource@
edgeCreasesSourceSelector :: Selector '[] RawId
edgeCreasesSourceSelector = mkSelector "edgeCreasesSource"

-- | @Selector@ for @setEdgeCreasesSource:@
setEdgeCreasesSourceSelector :: Selector '[RawId] ()
setEdgeCreasesSourceSelector = mkSelector "setEdgeCreasesSource:"

