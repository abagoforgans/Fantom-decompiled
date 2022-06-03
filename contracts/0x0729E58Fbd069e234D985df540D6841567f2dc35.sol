contract main {




// =====================  Runtime code  =====================


#
#  - harvest()
#
address owner;
uint256 WITHDRAWAL_MAX;
uint256 WITHDRAW_FEE;
uint256 MAX_FEE;
uint256 CALL_FEE;
uint256 STRATEGIST_FEE;
uint256 FEE_BATCH;
address strategistAddress;
address harvesterAddress;
address sub_743b7c63Address;
address nativeAddress;

function FEE_BATCH() payable {
    return FEE_BATCH
}

function native() payable {
    return nativeAddress
}

function strategist() payable {
    return strategistAddress
}

function harvester() payable {
    return harvesterAddress
}

function WITHDRAWAL_MAX() payable {
    return WITHDRAWAL_MAX
}

function sub_743b7c63(?) payable {
    return sub_743b7c63Address
}

function STRATEGIST_FEE() payable {
    return STRATEGIST_FEE
}

function owner() payable {
    return owner
}

function CALL_FEE() payable {
    return CALL_FEE
}

function WITHDRAW_FEE() payable {
    return WITHDRAW_FEE
}

function MAX_FEE() payable {
    return MAX_FEE
}

function _fallback() payable {
    revert
}

function sub_d0bf036c(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    strategistAddress = arg1
}

function sub_de02bc91(?) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    sub_743b7c63Address = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHarvester(address arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddress != msg.sender:
        revert with 0, '!auth'
    harvesterAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
