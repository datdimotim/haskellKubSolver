module SimpleTables where 

import KubTypes
import MoveTableBuilder
import DeepTableBuilder
import CoordsMovesSlow

import Data.Array.Unboxed


----------------------------------------------------------------
x2MoveTable :: UArray (Povorot, Pos) Pos
x2MoveTable  = buildMoveTable x2Max $ buildMover2 x2MoveSlow


x2DeepTable :: UArray Pos Depth
x2DeepTable = buildDeepTableST x2Max (mover2Fast x2MoveTable)
----------------------------------------------------------------

----------------------------------------------------------------
y2MoveTable :: UArray (Povorot, Pos) Pos
y2MoveTable  = buildMoveTable y2Max $ buildMover2 y2MoveSlow


y2DeepTable :: UArray Pos Depth
y2DeepTable = buildDeepTableST y2Max (mover2Fast y2MoveTable)
----------------------------------------------------------------

----------------------------------------------------------------
z2MoveTable :: UArray (Povorot, Pos) Pos
z2MoveTable  = buildMoveTable z2Max $ buildMover2 z2MoveSlow


z2DeepTable :: UArray Pos Depth
z2DeepTable = buildDeepTableST z2Max (mover2Fast z2MoveTable)
----------------------------------------------------------------


----------------------------------------------------------------
x1MoveTable :: UArray (Povorot, Pos) Pos
x1MoveTable  = buildMoveTable x1Max $ buildMover x1MoveSlow


x1DeepTable :: UArray Pos Depth
x1DeepTable = buildDeepTableST x1Max (moverFast x1MoveTable)
----------------------------------------------------------------


----------------------------------------------------------------
y1MoveTable :: UArray (Povorot, Pos) Pos
y1MoveTable  = buildMoveTable y1Max $ buildMover y1MoveSlow


y1DeepTable :: UArray Pos Depth
y1DeepTable = buildDeepTableST y1Max (moverFast y1MoveTable)
----------------------------------------------------------------

----------------------------------------------------------------
z1MoveTable :: UArray (Povorot, Pos) Pos
z1MoveTable  = buildMoveTable z1Max $ buildMover z1MoveSlow


z1DeepTable :: UArray Pos Depth
z1DeepTable = buildDeepTableST z1Max (moverFast z1MoveTable)
----------------------------------------------------------------

