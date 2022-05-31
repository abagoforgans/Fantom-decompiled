contract main {




// =====================  Runtime code  =====================


address owner;
uint256 global_collateral_ratio;
uint256 redemption_fee;
uint256 minting_fee;
uint256 sub_ac4f843e;
uint256 refresh_cooldown;
uint256 price_target;
uint256 price_band;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 stor8;

function price_band() payable {
    return price_band
}

function sub_2988b66d(?) payable {
    return bool(uint8(stor8.field_8))
}

function price_target() payable {
    return price_target
}

function global_collateral_ratio() payable {
    return global_collateral_ratio
}

function collateral_ratio_paused() payable {
    return bool(uint8(stor8.field_0))
}

function owner() payable {
    return owner
}

function sub_ac4f843e(?) payable {
    return sub_ac4f843e
}

function refresh_cooldown() payable {
    return refresh_cooldown
}

function minting_fee() payable {
    return minting_fee
}

function redemption_fee() payable {
    return redemption_fee
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function toggleEffectiveCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(248, 0, stor8.field_8) = Mask(248, 0, not uint8(stor8.field_8))
}

function setRatioStep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ac4f843e = arg1
    emit 0xce3517ff: arg1
}

function setPriceBand(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    price_band = arg1
    emit PriceBandSet(arg1);
}

function setMintingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    minting_fee = arg1
    emit MintingFeeSet(arg1);
}

function setPriceTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    price_target = arg1
    emit PriceTargetSet(arg1);
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    redemption_fee = arg1
    emit RedemptionFeeSet(arg1);
}

function setRefreshCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    refresh_cooldown = arg1
    emit RefreshCooldownSet(arg1);
}

function toggleCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint256(stor8.field_0) = not uint8(stor8.field_0) or Mask(248, 8, uint256(stor8.field_0))
    emit CollateralRatioToggled(bool(uint8(not uint8(stor8.field_0))));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}



}
