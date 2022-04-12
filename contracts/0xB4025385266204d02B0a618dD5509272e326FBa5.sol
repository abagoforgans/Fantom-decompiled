contract main {




// =====================  Runtime code  =====================


#
#  - sub_9533fe82(?)
#
mapping of uint8 stor0;
mapping of address item;
array of struct allItems;

function getItem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return item[arg1]
}

function isController(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function allItemsLength() payable {
    return allItems.length
}

function allItems(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allItems.length
    return allItems[arg1].field_0
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[10996 len 40], mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[10996 len 40], mem[204 len 24]
    stor0[address(arg1)] = 1
}

function items() payable {
    if not allItems.length:
        mem[(32 * allItems.length) + 128] = 32
        mem[(32 * allItems.length) + 160] = allItems.length
        mem[(32 * allItems.length) + 192 len floor32(allItems.length)] = mem[128 len floor32(allItems.length)]
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
    mem[(32 * allItems.length) + 192 len floor32(allItems.length)] = mem[128 len floor32(allItems.length)]
    return Array(len=allItems.length, data=mem[128 len floor32(allItems.length)], mem[(32 * allItems.length) + floor32(allItems.length) + 192 len (32 * allItems.length) - floor32(allItems.length)]), 
}



}
