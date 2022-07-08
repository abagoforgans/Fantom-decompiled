contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
mapping of address sub_5ac52c67;
array of address sub_a11b77d4;
address stor6;
address sub_45d33dfaAddress;

function sub_12f9eea0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[arg1])
}

function sub_45d33dfa(?) payable {
    return sub_45d33dfaAddress
}

function sub_5ac52c67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5ac52c67[address(arg1)]
}

function owner() payable {
    return owner
}

function invites(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_a11b77d4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_a11b77d4.length
    return sub_a11b77d4[arg1]
}

function sub_e55e29ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor3[address(arg1)])
}

function sub_f94d919e(?) payable {
    return sub_a11b77d4.length
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setNFTContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = arg1
}

function setAuctionFactory(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_45d33dfaAddress = arg1
}

function removeApprovedArtist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 0
    emit ArtistRemoved(arg1);
}

function sub_5c628a28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_45d33dfaAddress != msg.sender:
        revert with 0, 'InviteAFriend: not a factory'
    if not stor2[address(arg1)]:
        stor2[address(arg1)] = 1
        stor1[address(arg1)] = 1
        emit 0x9c2da230: address(arg1)
}

function addApprovedArtist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3[address(arg1)] = 1
    sub_a11b77d4.length++
    sub_a11b77d4[sub_a11b77d4.length] = arg1
    emit 0xca4592ce: address(arg1), msg.sender
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

function sub_57064959(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InviteHandler: doesnt have an invite'
    stor3[address(arg1)] = 1
    stor1[address(msg.sender)] = 0
    emit 0x8d37058a: msg.sender
    sub_a11b77d4.length++
    sub_a11b77d4[sub_a11b77d4.length] = address(arg1)
    sub_5ac52c67[address(arg1)] = msg.sender
    emit 0xca4592ce: address(arg1), msg.sender
}



}
