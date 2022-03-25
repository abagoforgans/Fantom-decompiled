contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of address sub_03ec357f;

function sub_03ec357f(?) payable {
    return sub_03ec357f['debt_pool']
}

function sub_045bb7f8(?) payable {
    return sub_03ec357f['price_oracle_proxy']
}

function sub_057838bd(?) payable {
    return sub_03ec357f['token_registry']
}

function getAddress(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_03ec357f[arg1]
}

function sub_44969711(?) payable {
    return sub_03ec357f['fantom_mint']
}

function getRewardToken() payable {
    return sub_03ec357f['erc20_reward_token']
}

function sub_73c9641d(?) payable {
    return sub_03ec357f['collateral_pool']
}

function getRewardDistribution() payable {
    return sub_03ec357f['reward_distribution']
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_42ae8684(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['debt_pool'] = arg1
    emit 0xf10b554a: arg1
}

function sub_1ba28878(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['collateral_pool'] = arg1
    emit 0x9ee268d5: arg1
}

function sub_fcc3c074(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['fantom_mint'] = arg1
    emit MinterChanged(arg1);
}

function sub_cc653b9a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['price_oracle_proxy'] = arg1
    emit PriceOracleChanged(arg1);
}

function setTokenRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['token_registry'] = arg1
    emit 0xb6f925ec: arg1
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['erc20_reward_token'] = arg1
    emit RewardTokenChanged(arg1);
}

function setRewardDistribution(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_03ec357f['reward_distribution'] = arg1
    emit RewardDistributionChanged(arg1);
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

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}



}
