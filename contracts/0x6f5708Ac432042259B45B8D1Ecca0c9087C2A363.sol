contract main {




// =====================  Runtime code  =====================


array of uint256 inventory;

function inventory(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < inventory[arg1]
    return inventory[arg1][arg2]
}

function sub_a1d32c06(?) payable {
    require 0 < inventory[address(msg.sender)]
    return inventory[address(msg.sender)]
}

function _fallback() payable {
    revert
}

function sub_368132e5(?) payable {
    inventory[address(msg.sender)]++
    inventory[address(msg.sender)][inventory[address(msg.sender)]] = 1
}



}
