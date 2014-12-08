_bitbuffer_included

BfWriteBool(Handle:bf, bool:bit);
BfWriteByte(Handle:bf, byte);
BfWriteChar(Handle:bf, chr);
BfWriteShort(Handle:bf, num);
BfWriteWord(Handle:bf, num);
BfWriteNum(Handle:bf, num);
BfWriteFloat(Handle:bf, Float:num);
BfWriteString(Handle:bf, const String:string[]);
BfWriteEntity(Handle:bf, ent);
BfWriteAngle(Handle:bf, Float:angle, numBits=8);
BfWriteCoord(Handle:bf, Float:coord);
BfWriteVecCoord(Handle:bf, Float:coord[3]);
BfWriteVecNormal(Handle:bf, Float:vec[3]);
BfWriteAngles(Handle:bf, Float:angles[3]);
bool:BfReadBool(Handle:bf);
BfReadByte(Handle:bf);
BfReadChar(Handle:bf);
BfReadShort(Handle:bf);
BfReadWord(Handle:bf);
BfReadNum(Handle:bf);
Float:BfReadFloat(Handle:bf);
BfReadString(Handle:bf, String:buffer[], maxlength, bool:line=false);
BfReadEntity(Handle:bf);
Float:BfReadAngle(Handle:bf, numBits=8);
Float:BfReadCoord(Handle:bf);
BfReadVecCoord(Handle:bf, Float:coord[3]);
BfReadVecNormal(Handle:bf, Float:vec[3]);
BfReadAngles(Handle:bf, Float:angles[3]);
BfGetNumBytesLeft(Handle:bf);

BfGetNumBytesLeft
BfReadAngle
BfReadAngles
BfReadBool
BfReadByte
BfReadChar
BfReadCoord
BfReadEntity
BfReadFloat
BfReadNum
BfReadShort
BfReadString
BfReadVecCoord
BfReadVecNormal
BfReadWord
BfWriteAngle
BfWriteAngles
BfWriteBool
BfWriteByte
BfWriteChar
BfWriteCoord
BfWriteEntity
BfWriteFloat
BfWriteNum
BfWriteShort
BfWriteString
BfWriteVecCoord
BfWriteVecNormal
BfWriteWord