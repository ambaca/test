
_adt_stack_included

Handle:CreateStack(blocksize=1);
PushStackCell(Handle:stack, any:value);
PushStackString(Handle:stack, const String:value[]);
PushStackArray(Handle:stack, const any:values[], size=-1);
bool:PopStackCell(Handle:stack, &any:value, block=0, bool:asChar=false);
bool:PopStackString(Handle:stack, String:buffer[], maxlength, &written=0);
bool:PopStackArray(Handle:stack, any:buffer[], size=-1);
bool:IsStackEmpty(Handle:stack);
stock PopStack(Handle:stack)



CreateStack
IsStackEmpty
PopStack
PopStackArray
PopStackCell
PopStackString
PushStackArray
PushStackCell
PushStackString