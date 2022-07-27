contract main {




// =====================  Runtime code  =====================


const testUpgrade = 123


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint8 stor101;
mapping of uint8 stor102;
mapping of uint8 stor103;
mapping of address sub_5ac52c67;
address stor105;
address sub_45d33dfaAddress;
mapping of address sub_339bf88c;
array of address sub_a11b77d4;

function sub_12f9eea0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor102[arg1])
}

function sub_339bf88c(?) payable {
    return sub_339bf88c[address(msg.sender)]
}

function sub_45d33dfa(?) payable {
    return sub_45d33dfaAddress
}

function sub_5ac52c67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5ac52c67[address(arg1)]
}

function sub_7f7b4d59(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_339bf88c[arg1]
}

function owner() payable {
    return owner
}

function invites(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor101[arg1])
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
    return bool(stor103[address(arg1)])
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
    stor105 = arg1
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
    stor103[address(arg1)] = 0
    emit ArtistRemoved(arg1);
}

function addApprovedArtist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[address(arg1)] = 1
    sub_a11b77d4.length++
    sub_a11b77d4[sub_a11b77d4.length] = arg1
    emit 0xca4592ce: address(arg1), msg.sender
}

function sub_5c628a28(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_45d33dfaAddress != msg.sender:
        revert with 0, 'InviteAFriend: not a factory'
    if stor103[address(arg1)]:
        if not stor102[address(arg1)]:
            stor102[address(arg1)] = 1
            stor101[address(arg1)] = 1
            emit 0x9c2da230: address(arg1)
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
    if not stor103[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InviteHandler: doesnt have an invite'
    if not stor101[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InviteHandler: doesnt have an invite'
    stor103[address(arg1)] = 1
    sub_339bf88c[address(msg.sender)] = address(arg1)
    stor101[address(msg.sender)] = 0
    emit 0x8d37058a: msg.sender
    sub_a11b77d4.length++
    sub_a11b77d4[sub_a11b77d4.length] = address(arg1)
    sub_5ac52c67[address(arg1)] = msg.sender
    emit 0xca4592ce: address(arg1), msg.sender
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor0.field_8):
        stor105 = arg1
        sub_45d33dfaAddress = arg2
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            stor105 = arg1
            sub_45d33dfaAddress = arg2
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            stor105 = arg1
            sub_45d33dfaAddress = arg2
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}



}
