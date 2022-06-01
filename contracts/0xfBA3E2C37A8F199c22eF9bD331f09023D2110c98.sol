contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
array of address updates;
array of uint256 sub_c31d4978;
address owner;

function sub_02d4e4a5(?) payable {
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

function sub_c31d4978(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_c31d4978.length
    return sub_c31d4978[arg1]
}

function sub_c4b82ced(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function sub_d51756d1(?) payable {
    return sub_c31d4978.length
}

function sub_eb2f6657(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_e49de164(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require msg.sender == owner
    sub_c31d4978.length++
    sub_c31d4978[sub_c31d4978.length] = arg1
    stor1[arg1] = uint8(bool(arg2))
    emit 0xd6c6abec: bool(arg2), arg1
}

function setBlackListedAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == owner
    updates.length++
    updates[updates.length] = arg1
    stor0[address(arg1)] = uint8(arg2)
    emit 0x2c04bead: arg2, arg1
}



}
