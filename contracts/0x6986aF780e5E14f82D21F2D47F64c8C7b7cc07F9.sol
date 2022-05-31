contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of address updates;
address owner;

function sub_116864f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[address(arg1)])
}

function sub_8d179b86(?) payable {
    return updates.length
}

function owner() payable {
    return owner
}

function updates(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < updates.length
    return updates[arg1]
}

function _fallback() payable {
    revert
}

function setVerified(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    updates.length++
    updates[updates.length] = arg1
    stor0[address(arg1)] = uint8(arg2)
    emit 0x10588b08: arg2, arg1
}



}
