contract main {




// =====================  Runtime code  =====================


#
#  - sub_9533fe82(?)
#
mapping of uint8 stor0;
mapping of address item;
array of address allItems;

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
    return allItems[arg1]
}

function _fallback() payable {
    revert
}

function relinquishControl() payable {
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[10786 len 40], mem[204 len 24]
}

function addController(address arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor0[msg.sender]) != 1:
        if this.address != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 40, code.data[10786 len 40], mem[204 len 24]
    stor0[address(arg1)] = 1
}



}
