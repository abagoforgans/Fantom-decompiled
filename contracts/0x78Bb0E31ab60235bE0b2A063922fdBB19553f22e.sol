contract main {




// =====================  Runtime code  =====================


#
#  - startRound()
#
const sub_9bc335d5(?) = sha3(code.data[4358 len 16203])


address owner;
uint8 stor2;
uint256 stor2;
uint256 currentRound;
address devAddr;
address sub_468ec80bAddress;
uint256 sub_2e41cf80;
uint256 sub_3b11af5c;
uint256 sub_ce702329;
uint256 sub_4bfdba62;
array of address sub_2b64f2c0;

function sub_2b64f2c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2b64f2c0.length
    return sub_2b64f2c0[arg1]
}

function sub_2e41cf80(?) payable {
    return sub_2e41cf80
}

function sub_3b11af5c(?) payable {
    return sub_3b11af5c
}

function sub_468ec80b(?) payable {
    return sub_468ec80bAddress
}

function sub_4bfdba62(?) payable {
    return sub_4bfdba62
}

function paused() payable {
    return bool(uint8(stor2))
}

function currentRound() payable {
    return currentRound
}

function owner() payable {
    return owner
}

function sub_ce702329(?) payable {
    return sub_ce702329
}

function devAddr() payable {
    return devAddr
}

function _fallback() payable {
    revert
}

function sub_82566662(?) payable {
    return address(sha3(0, this.address, currentRound, sha3(code.data[4358 len 16203])))
}

function sub_c9d8852e(?) payable {
    require calldata.size - 4 >= 32
    return address(sha3(0, this.address, arg1, sha3(code.data[4358 len 16203])))
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor2) = not uint8(stor2) or Mask(248, 8, uint256(stor2))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}



}
