contract main {




// =====================  Runtime code  =====================


#
#  - sub_34f486e4(?)
#
mapping of address item;
array of struct allItems;

function getItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return item[arg1]
}

function allItemsLength() payable {
    return allItems.length
}

function allItems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= allItems.length:
        revert with 'NH{q', 50
    return allItems[arg1].field_0
}

function _fallback() payable {
    revert
}

function items() payable {
    mem[64] = (32 * allItems.length) + 128
    mem[96] = allItems.length
    if not allItems.length:
        mem[(32 * allItems.length) + 128] = 32
        mem[(32 * allItems.length) + 160] = allItems.length
        idx = 0
        s = (32 * allItems.length) + 192
        t = 128
        while idx < allItems.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * allItems.length) + 128
           len (96 * allItems.length) + 64
    mem[128] = address(allItems.field_0)
    idx = 128
    s = 0
    while (32 * allItems.length) + 96 > idx:
        mem[idx + 32] = allItems[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allItems.length) + 128] = 32
    mem[(32 * allItems.length) + 160] = allItems.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < allItems.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * allItems.length) + -mem[64] + 192
}



}
