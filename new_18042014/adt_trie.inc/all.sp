
_adt_trie_included

Handle:CreateTrie();
bool:SetTrieValue(Handle:trie, const String:key[], any:value, bool:replace=true);
bool:SetTrieArray(Handle:trie, const String:key[], const any:array[], num_items, bool:replace=true);
bool:SetTrieString(Handle:trie, const String:key[], const String:value[], bool:replace=true);
bool:GetTrieValue(Handle:trie, const String:key[], &any:value);
bool:GetTrieArray(Handle:trie, const String:key[], any:array[], max_size, &size=0);
bool:GetTrieString(Handle:trie, const String:key[], String:value[], max_size, &size=0);
RemoveFromTrie(Handle:trie, const String:key[]);
ClearTrie(Handle:trie);
GetTrieSize(Handle:trie);


ClearTrie
CreateTrie
GetTrieArray
GetTrieSize
GetTrieString
GetTrieValue
RemoveFromTrie
SetTrieArray
SetTrieString
SetTrieValue