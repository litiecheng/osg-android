include $(CLEAR_VARS)
# ./configure --build=x86_64-pc-linux-gnu --host=arm-linux-eabi
# find $(GEOS_PATH)/ -name "*.cpp" | grep -Ev "tests|doc" | sort | awk '{ print "\t"$1" \\" }'
LOCAL_MODULE := geos
LOCAL_C_INCLUDES := \
		$(GEOS_PATH)/src \
    	$(GEOS_PATH)/include
LOCAL_CFLAGS := \
	$(LOCAL_C_INCLUDES:%=-I%) \
	-DHAVE_LONG_LONG_INT_64
LOCAL_SRC_FILES := \
    $(GEOS_PATH)/capi/geos_c.cpp \
		$(GEOS_PATH)/capi/geos_ts_c.cpp \
		$(GEOS_PATH)/src/algorithm/Angle.cpp \
		$(GEOS_PATH)/src/algorithm/BoundaryNodeRule.cpp \
		$(GEOS_PATH)/src/algorithm/CGAlgorithms.cpp \
		$(GEOS_PATH)/src/algorithm/CentroidArea.cpp \
		$(GEOS_PATH)/src/algorithm/CentroidLine.cpp \
		$(GEOS_PATH)/src/algorithm/CentroidPoint.cpp \
		$(GEOS_PATH)/src/algorithm/ConvexHull.cpp \
		$(GEOS_PATH)/src/algorithm/HCoordinate.cpp \
		$(GEOS_PATH)/src/algorithm/InteriorPointArea.cpp \
		$(GEOS_PATH)/src/algorithm/InteriorPointLine.cpp \
		$(GEOS_PATH)/src/algorithm/InteriorPointPoint.cpp \
		$(GEOS_PATH)/src/algorithm/LineIntersector.cpp \
		$(GEOS_PATH)/src/algorithm/MCPointInRing.cpp \
		$(GEOS_PATH)/src/algorithm/MinimumDiameter.cpp \
		$(GEOS_PATH)/src/algorithm/NotRepresentableException.cpp \
		$(GEOS_PATH)/src/algorithm/PointLocator.cpp \
		$(GEOS_PATH)/src/algorithm/RayCrossingCounter.cpp \
		$(GEOS_PATH)/src/algorithm/RobustDeterminant.cpp \
		$(GEOS_PATH)/src/algorithm/SIRtreePointInRing.cpp \
		$(GEOS_PATH)/src/algorithm/SimplePointInRing.cpp \
		$(GEOS_PATH)/src/algorithm/distance/DiscreteHausdorffDistance.cpp \
		$(GEOS_PATH)/src/algorithm/distance/DistanceToPoint.cpp \
		$(GEOS_PATH)/src/algorithm/locate/IndexedPointInAreaLocator.cpp \
		$(GEOS_PATH)/src/algorithm/locate/PointOnGeometryLocator.cpp \
		$(GEOS_PATH)/src/algorithm/locate/SimplePointInAreaLocator.cpp \
		$(GEOS_PATH)/src/geom/Coordinate.cpp \
		$(GEOS_PATH)/src/geom/CoordinateArraySequence.cpp \
		$(GEOS_PATH)/src/geom/CoordinateArraySequenceFactory.cpp \
		$(GEOS_PATH)/src/geom/CoordinateSequence.cpp \
		$(GEOS_PATH)/src/geom/CoordinateSequenceFactory.cpp \
		$(GEOS_PATH)/src/geom/Dimension.cpp \
		$(GEOS_PATH)/src/geom/Envelope.cpp \
		$(GEOS_PATH)/src/geom/Geometry.cpp \
		$(GEOS_PATH)/src/geom/GeometryCollection.cpp \
		$(GEOS_PATH)/src/geom/GeometryComponentFilter.cpp \
		$(GEOS_PATH)/src/geom/GeometryFactory.cpp \
		$(GEOS_PATH)/src/geom/GeometryList.cpp \
		$(GEOS_PATH)/src/geom/IntersectionMatrix.cpp \
		$(GEOS_PATH)/src/geom/LineSegment.cpp \
		$(GEOS_PATH)/src/geom/LineString.cpp \
		$(GEOS_PATH)/src/geom/LinearRing.cpp \
		$(GEOS_PATH)/src/geom/Location.cpp \
		$(GEOS_PATH)/src/geom/MultiLineString.cpp \
		$(GEOS_PATH)/src/geom/MultiPoint.cpp \
		$(GEOS_PATH)/src/geom/MultiPolygon.cpp \
		$(GEOS_PATH)/src/geom/Point.cpp \
		$(GEOS_PATH)/src/geom/Polygon.cpp \
		$(GEOS_PATH)/src/geom/PrecisionModel.cpp \
		$(GEOS_PATH)/src/geom/Triangle.cpp \
		$(GEOS_PATH)/src/geom/prep/AbstractPreparedPolygonContains.cpp \
		$(GEOS_PATH)/src/geom/prep/BasicPreparedGeometry.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedGeometry.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedGeometryFactory.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedLineString.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedLineStringIntersects.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPoint.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygon.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygonContains.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygonContainsProperly.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygonCovers.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygonIntersects.cpp \
		$(GEOS_PATH)/src/geom/prep/PreparedPolygonPredicate.cpp \
		$(GEOS_PATH)/src/geom/util/ComponentCoordinateExtracter.cpp \
		$(GEOS_PATH)/src/geom/util/CoordinateOperation.cpp \
		$(GEOS_PATH)/src/geom/util/GeometryCombiner.cpp \
		$(GEOS_PATH)/src/geom/util/GeometryEditor.cpp \
		$(GEOS_PATH)/src/geom/util/GeometryTransformer.cpp \
		$(GEOS_PATH)/src/geom/util/ShortCircuitedGeometryVisitor.cpp \
		$(GEOS_PATH)/src/geom/util/SineStarFactory.cpp \
		$(GEOS_PATH)/src/geomgraph/Depth.cpp \
		$(GEOS_PATH)/src/geomgraph/DirectedEdge.cpp \
		$(GEOS_PATH)/src/geomgraph/DirectedEdgeStar.cpp \
		$(GEOS_PATH)/src/geomgraph/Edge.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeEnd.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeEndStar.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeIntersectionList.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeList.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeNodingValidator.cpp \
		$(GEOS_PATH)/src/geomgraph/EdgeRing.cpp \
		$(GEOS_PATH)/src/geomgraph/GeometryGraph.cpp \
		$(GEOS_PATH)/src/geomgraph/GraphComponent.cpp \
		$(GEOS_PATH)/src/geomgraph/Label.cpp \
		$(GEOS_PATH)/src/geomgraph/Node.cpp \
		$(GEOS_PATH)/src/geomgraph/NodeFactory.cpp \
		$(GEOS_PATH)/src/geomgraph/NodeMap.cpp \
		$(GEOS_PATH)/src/geomgraph/PlanarGraph.cpp \
		$(GEOS_PATH)/src/geomgraph/Position.cpp \
		$(GEOS_PATH)/src/geomgraph/Quadrant.cpp \
		$(GEOS_PATH)/src/geomgraph/TopologyLocation.cpp \
		$(GEOS_PATH)/src/geomgraph/index/MonotoneChainEdge.cpp \
		$(GEOS_PATH)/src/geomgraph/index/MonotoneChainIndexer.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SegmentIntersector.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SimpleEdgeSetIntersector.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SimpleMCSweepLineIntersector.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SimpleSweepLineIntersector.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SweepLineEvent.cpp \
		$(GEOS_PATH)/src/geomgraph/index/SweepLineSegment.cpp \
		$(GEOS_PATH)/src/index/bintree/Bintree.cpp \
		$(GEOS_PATH)/src/index/bintree/Interval.cpp \
		$(GEOS_PATH)/src/index/bintree/Key.cpp \
		$(GEOS_PATH)/src/index/bintree/Node.cpp \
		$(GEOS_PATH)/src/index/bintree/NodeBase.cpp \
		$(GEOS_PATH)/src/index/bintree/Root.cpp \
		$(GEOS_PATH)/src/index/chain/MonotoneChain.cpp \
		$(GEOS_PATH)/src/index/chain/MonotoneChainBuilder.cpp \
		$(GEOS_PATH)/src/index/chain/MonotoneChainOverlapAction.cpp \
		$(GEOS_PATH)/src/index/chain/MonotoneChainSelectAction.cpp \
		$(GEOS_PATH)/src/index/intervalrtree/IntervalRTreeBranchNode.cpp \
		$(GEOS_PATH)/src/index/intervalrtree/IntervalRTreeLeafNode.cpp \
		$(GEOS_PATH)/src/index/intervalrtree/IntervalRTreeNode.cpp \
		$(GEOS_PATH)/src/index/intervalrtree/SortedPackedIntervalRTree.cpp \
		$(GEOS_PATH)/src/index/quadtree/DoubleBits.cpp \
		$(GEOS_PATH)/src/index/quadtree/IntervalSize.cpp \
		$(GEOS_PATH)/src/index/quadtree/Key.cpp \
		$(GEOS_PATH)/src/index/quadtree/Node.cpp \
		$(GEOS_PATH)/src/index/quadtree/NodeBase.cpp \
		$(GEOS_PATH)/src/index/quadtree/Quadtree.cpp \
		$(GEOS_PATH)/src/index/quadtree/Root.cpp \
		$(GEOS_PATH)/src/index/strtree/AbstractNode.cpp \
		$(GEOS_PATH)/src/index/strtree/AbstractSTRtree.cpp \
		$(GEOS_PATH)/src/index/strtree/Interval.cpp \
		$(GEOS_PATH)/src/index/strtree/ItemBoundable.cpp \
		$(GEOS_PATH)/src/index/strtree/SIRtree.cpp \
		$(GEOS_PATH)/src/index/strtree/STRtree.cpp \
		$(GEOS_PATH)/src/index/sweepline/SweepLineEvent.cpp \
		$(GEOS_PATH)/src/index/sweepline/SweepLineIndex.cpp \
		$(GEOS_PATH)/src/index/sweepline/SweepLineInterval.cpp \
		$(GEOS_PATH)/src/inlines.cpp \
		$(GEOS_PATH)/src/io/ByteOrderDataInStream.cpp \
		$(GEOS_PATH)/src/io/ByteOrderValues.cpp \
		$(GEOS_PATH)/src/io/CLocalizer.cpp \
		$(GEOS_PATH)/src/io/ParseException.cpp \
		$(GEOS_PATH)/src/io/StringTokenizer.cpp \
		$(GEOS_PATH)/src/io/Unload.cpp \
		$(GEOS_PATH)/src/io/WKBReader.cpp \
		$(GEOS_PATH)/src/io/WKBWriter.cpp \
		$(GEOS_PATH)/src/io/WKTReader.cpp \
		$(GEOS_PATH)/src/io/WKTWriter.cpp \
		$(GEOS_PATH)/src/io/Writer.cpp \
		$(GEOS_PATH)/src/linearref/ExtractLineByLocation.cpp \
		$(GEOS_PATH)/src/linearref/LengthIndexOfPoint.cpp \
		$(GEOS_PATH)/src/linearref/LengthIndexedLine.cpp \
		$(GEOS_PATH)/src/linearref/LengthLocationMap.cpp \
		$(GEOS_PATH)/src/linearref/LinearGeometryBuilder.cpp \
		$(GEOS_PATH)/src/linearref/LinearIterator.cpp \
		$(GEOS_PATH)/src/linearref/LinearLocation.cpp \
		$(GEOS_PATH)/src/linearref/LocationIndexOfLine.cpp \
		$(GEOS_PATH)/src/linearref/LocationIndexOfPoint.cpp \
		$(GEOS_PATH)/src/noding/BasicSegmentString.cpp \
		$(GEOS_PATH)/src/noding/FastNodingValidator.cpp \
		$(GEOS_PATH)/src/noding/FastSegmentSetIntersectionFinder.cpp \
		$(GEOS_PATH)/src/noding/IntersectionAdder.cpp \
		$(GEOS_PATH)/src/noding/IntersectionFinderAdder.cpp \
		$(GEOS_PATH)/src/noding/IteratedNoder.cpp \
		$(GEOS_PATH)/src/noding/MCIndexNoder.cpp \
		$(GEOS_PATH)/src/noding/MCIndexSegmentSetMutualIntersector.cpp \
		$(GEOS_PATH)/src/noding/NodedSegmentString.cpp \
		$(GEOS_PATH)/src/noding/NodingValidator.cpp \
		$(GEOS_PATH)/src/noding/Octant.cpp \
		$(GEOS_PATH)/src/noding/OrientedCoordinateArray.cpp \
		$(GEOS_PATH)/src/noding/ScaledNoder.cpp \
		$(GEOS_PATH)/src/noding/SegmentIntersectionDetector.cpp \
		$(GEOS_PATH)/src/noding/SegmentNode.cpp \
		$(GEOS_PATH)/src/noding/SegmentNodeList.cpp \
		$(GEOS_PATH)/src/noding/SegmentString.cpp \
		$(GEOS_PATH)/src/noding/SegmentStringUtil.cpp \
		$(GEOS_PATH)/src/noding/SimpleNoder.cpp \
		$(GEOS_PATH)/src/noding/SingleInteriorIntersectionFinder.cpp \
		$(GEOS_PATH)/src/noding/snapround/HotPixel.cpp \
		$(GEOS_PATH)/src/noding/snapround/MCIndexPointSnapper.cpp \
		$(GEOS_PATH)/src/noding/snapround/MCIndexSnapRounder.cpp \
		$(GEOS_PATH)/src/noding/snapround/SimpleSnapRounder.cpp \
		$(GEOS_PATH)/src/operation/GeometryGraphOperation.cpp \
		$(GEOS_PATH)/src/operation/IsSimpleOp.cpp \
		$(GEOS_PATH)/src/operation/buffer/BufferBuilder.cpp \
		$(GEOS_PATH)/src/operation/buffer/BufferInputLineSimplifier.cpp \
		$(GEOS_PATH)/src/operation/buffer/BufferOp.cpp \
		$(GEOS_PATH)/src/operation/buffer/BufferParameters.cpp \
		$(GEOS_PATH)/src/operation/buffer/BufferSubgraph.cpp \
		$(GEOS_PATH)/src/operation/buffer/OffsetCurveBuilder.cpp \
		$(GEOS_PATH)/src/operation/buffer/OffsetCurveSetBuilder.cpp \
		$(GEOS_PATH)/src/operation/buffer/OffsetSegmentGenerator.cpp \
		$(GEOS_PATH)/src/operation/buffer/RightmostEdgeFinder.cpp \
		$(GEOS_PATH)/src/operation/buffer/SubgraphDepthLocater.cpp \
		$(GEOS_PATH)/src/operation/distance/ConnectedElementLocationFilter.cpp \
		$(GEOS_PATH)/src/operation/distance/ConnectedElementPointFilter.cpp \
		$(GEOS_PATH)/src/operation/distance/DistanceOp.cpp \
		$(GEOS_PATH)/src/operation/distance/GeometryLocation.cpp \
		$(GEOS_PATH)/src/operation/linemerge/EdgeString.cpp \
		$(GEOS_PATH)/src/operation/linemerge/LineMergeDirectedEdge.cpp \
		$(GEOS_PATH)/src/operation/linemerge/LineMergeEdge.cpp \
		$(GEOS_PATH)/src/operation/linemerge/LineMergeGraph.cpp \
		$(GEOS_PATH)/src/operation/linemerge/LineMerger.cpp \
		$(GEOS_PATH)/src/operation/linemerge/LineSequencer.cpp \
		$(GEOS_PATH)/src/operation/overlay/EdgeSetNoder.cpp \
		$(GEOS_PATH)/src/operation/overlay/ElevationMatrix.cpp \
		$(GEOS_PATH)/src/operation/overlay/ElevationMatrixCell.cpp \
		$(GEOS_PATH)/src/operation/overlay/LineBuilder.cpp \
		$(GEOS_PATH)/src/operation/overlay/MaximalEdgeRing.cpp \
		$(GEOS_PATH)/src/operation/overlay/MinimalEdgeRing.cpp \
		$(GEOS_PATH)/src/operation/overlay/OverlayNodeFactory.cpp \
		$(GEOS_PATH)/src/operation/overlay/OverlayOp.cpp \
		$(GEOS_PATH)/src/operation/overlay/PointBuilder.cpp \
		$(GEOS_PATH)/src/operation/overlay/PolygonBuilder.cpp \
		$(GEOS_PATH)/src/operation/overlay/snap/GeometrySnapper.cpp \
		$(GEOS_PATH)/src/operation/overlay/snap/LineStringSnapper.cpp \
		$(GEOS_PATH)/src/operation/overlay/snap/SnapIfNeededOverlayOp.cpp \
		$(GEOS_PATH)/src/operation/overlay/snap/SnapOverlayOp.cpp \
		$(GEOS_PATH)/src/operation/overlay/validate/FuzzyPointLocator.cpp \
		$(GEOS_PATH)/src/operation/overlay/validate/OffsetPointGenerator.cpp \
		$(GEOS_PATH)/src/operation/overlay/validate/OverlayResultValidator.cpp \
		$(GEOS_PATH)/src/operation/polygonize/EdgeRing.cpp \
		$(GEOS_PATH)/src/operation/polygonize/PolygonizeDirectedEdge.cpp \
		$(GEOS_PATH)/src/operation/polygonize/PolygonizeEdge.cpp \
		$(GEOS_PATH)/src/operation/polygonize/PolygonizeGraph.cpp \
		$(GEOS_PATH)/src/operation/polygonize/Polygonizer.cpp \
		$(GEOS_PATH)/src/operation/predicate/RectangleContains.cpp \
		$(GEOS_PATH)/src/operation/predicate/RectangleIntersects.cpp \
		$(GEOS_PATH)/src/operation/predicate/SegmentIntersectionTester.cpp \
		$(GEOS_PATH)/src/operation/relate/EdgeEndBuilder.cpp \
		$(GEOS_PATH)/src/operation/relate/EdgeEndBundle.cpp \
		$(GEOS_PATH)/src/operation/relate/EdgeEndBundleStar.cpp \
		$(GEOS_PATH)/src/operation/relate/RelateComputer.cpp \
		$(GEOS_PATH)/src/operation/relate/RelateNode.cpp \
		$(GEOS_PATH)/src/operation/relate/RelateNodeFactory.cpp \
		$(GEOS_PATH)/src/operation/relate/RelateNodeGraph.cpp \
		$(GEOS_PATH)/src/operation/relate/RelateOp.cpp \
		$(GEOS_PATH)/src/operation/sharedpaths/SharedPathsOp.cpp \
		$(GEOS_PATH)/src/operation/union/CascadedPolygonUnion.cpp \
		$(GEOS_PATH)/src/operation/union/CascadedUnion.cpp \
		$(GEOS_PATH)/src/operation/union/PointGeometryUnion.cpp \
		$(GEOS_PATH)/src/operation/union/UnaryUnionOp.cpp \
		$(GEOS_PATH)/src/operation/valid/ConnectedInteriorTester.cpp \
		$(GEOS_PATH)/src/operation/valid/ConsistentAreaTester.cpp \
		$(GEOS_PATH)/src/operation/valid/IndexedNestedRingTester.cpp \
		$(GEOS_PATH)/src/operation/valid/IsValidOp.cpp \
		$(GEOS_PATH)/src/operation/valid/QuadtreeNestedRingTester.cpp \
		$(GEOS_PATH)/src/operation/valid/RepeatedPointTester.cpp \
		$(GEOS_PATH)/src/operation/valid/SimpleNestedRingTester.cpp \
		$(GEOS_PATH)/src/operation/valid/SweeplineNestedRingTester.cpp \
		$(GEOS_PATH)/src/operation/valid/TopologyValidationError.cpp \
		$(GEOS_PATH)/src/planargraph/DirectedEdge.cpp \
		$(GEOS_PATH)/src/planargraph/DirectedEdgeStar.cpp \
		$(GEOS_PATH)/src/planargraph/Edge.cpp \
		$(GEOS_PATH)/src/planargraph/Node.cpp \
		$(GEOS_PATH)/src/planargraph/NodeMap.cpp \
		$(GEOS_PATH)/src/planargraph/PlanarGraph.cpp \
		$(GEOS_PATH)/src/planargraph/Subgraph.cpp \
		$(GEOS_PATH)/src/planargraph/algorithm/ConnectedSubgraphFinder.cpp \
		$(GEOS_PATH)/src/precision/CommonBits.cpp \
		$(GEOS_PATH)/src/precision/CommonBitsOp.cpp \
		$(GEOS_PATH)/src/precision/CommonBitsRemover.cpp \
		$(GEOS_PATH)/src/precision/EnhancedPrecisionOp.cpp \
		$(GEOS_PATH)/src/precision/SimpleGeometryPrecisionReducer.cpp \
		$(GEOS_PATH)/src/simplify/DouglasPeuckerLineSimplifier.cpp \
		$(GEOS_PATH)/src/simplify/DouglasPeuckerSimplifier.cpp \
		$(GEOS_PATH)/src/simplify/LineSegmentIndex.cpp \
		$(GEOS_PATH)/src/simplify/TaggedLineSegment.cpp \
		$(GEOS_PATH)/src/simplify/TaggedLineString.cpp \
		$(GEOS_PATH)/src/simplify/TaggedLineStringSimplifier.cpp \
		$(GEOS_PATH)/src/simplify/TaggedLinesSimplifier.cpp \
		$(GEOS_PATH)/src/simplify/TopologyPreservingSimplifier.cpp \
		$(GEOS_PATH)/src/util/Assert.cpp \
		$(GEOS_PATH)/src/util/GeometricShapeFactory.cpp \
		$(GEOS_PATH)/src/util/Profiler.cpp \
		$(GEOS_PATH)/src/util/math.cpp
include $(BUILD_STATIC_LIBRARY)
