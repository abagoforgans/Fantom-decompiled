contract main {




// =====================  Runtime code  =====================


array of uint256 inventory;

function inventory(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < inventory[arg1]
    return inventory[arg1][arg2]
}

function sub_c9340f48(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < inventory[address(msg.sender)]
    return inventory[address(msg.sender)][arg1]
}

function _fallback() payable {
    revert
}

function sub_1e566b79(?) payable {
    require calldata.size - 4 >= 32
    inventory[address(msg.sender)]++
    inventory[address(msg.sender)][inventory[address(msg.sender)]] = arg1
}



}
