_adt_array_included


ByteCountToCells(size)
Handle:CreateArray(blocksize=1, startsize=0);
ClearArray(Handle:array);
Handle:CloneArray(Handle:array);
bool:ResizeArray(Handle:array, newsize);
GetArraySize(Handle:array);
PushArrayCell(Handle:array, any:value);
PushArrayString(Handle:array, const String:value[]);
PushArrayArray(Handle:array, const any:values[], size=-1);
any:GetArrayCell(Handle:array, index, block=0, bool:asChar=false);
GetArrayString(Handle:array, index, String:buffer[], maxlength);
GetArrayArray(Handle:array, index, any:buffer[], size=-1);
SetArrayCell(Handle:array, index, any:value, block=0, bool:asChar=false);
SetArrayString(Handle:array, index, const String:value[]);
SetArrayArray(Handle:array, index, const any:values[], size=-1);
ShiftArrayUp(Handle:array, index);
RemoveFromArray(Handle:array, index);
SwapArrayItems(Handle:array, index1, index2);
FindStringInArray(Handle:array, const String:item[]);
FindValueInArray(Handle:array, any:item); 


ByteCountToCells
ClearArray
CloneArray
CreateArray
FindStringInArray
FindValueInArray
GetArrayArray
GetArrayCell
GetArraySize
GetArrayString
PushArrayArray
PushArrayCell
PushArrayString
RemoveFromArray
ResizeArray
SetArrayArray
SetArrayCell
SetArrayString
ShiftArrayUp
SwapArrayItems