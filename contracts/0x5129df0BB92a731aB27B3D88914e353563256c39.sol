contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address sub_7a0ebc88Address;
address dollarAddress;
address collateralAddress;
uint256 redemption_fee;
uint256 sub_965ff461;
uint256 minting_fee;
uint256 target_collateral_ratio;
uint256 effective_collateral_ratio;
uint256 sub_6ae74488;
uint256 refresh_cooldown;
uint256 sub_ac4f843e;
uint256 price_target;
uint256 price_band;
uint8 collateral_ratio_paused;
uint8 sub_2988b66d; offset 8
uint256 stor14; offset 8
uint256 stor14;

function price_band() payable {
    return price_band
}

function sub_2988b66d(?) payable {
    return bool(sub_2988b66d)
}

function price_target() payable {
    return price_target
}

function target_collateral_ratio() payable {
    return target_collateral_ratio
}

function dollar() payable {
    return dollarAddress
}

function sub_6ae74488(?) payable {
    return sub_6ae74488
}

function sub_7a0ebc88(?) payable {
    return sub_7a0ebc88Address
}

function collateral_ratio_paused() payable {
    return bool(collateral_ratio_paused)
}

function owner() payable {
    return owner
}

function sub_965ff461(?) payable {
    return sub_965ff461
}

function sub_ac4f843e(?) payable {
    return sub_ac4f843e
}

function effective_collateral_ratio() payable {
    return effective_collateral_ratio
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

function collateral() payable {
    return collateralAddress
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

function sub_bbc3ef8f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_965ff461 = arg1
}

function setPriceBand(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    price_band = arg1
}

function setRatioStep(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    sub_ac4f843e = arg1
}

function setMintingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    minting_fee = arg1
}

function setPriceTarget(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    price_target = arg1
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    redemption_fee = arg1
}

function setRefreshCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    refresh_cooldown = arg1
}

function toggleEffectiveCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    Mask(248, 0, stor14.field_8) = Mask(248, 0, not sub_2988b66d)
}

function setDollar(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    dollarAddress = arg1
}

function setCollateral(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    collateralAddress = arg1
}

function sub_88315a40(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not address(arg1):
        revert with 0, 'invalidAddress'
    sub_7a0ebc88Address = address(arg1)
}

function toggleCollateralRatio() payable {
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    uint256(stor14.field_0) = not collateral_ratio_paused or Mask(248, 8, uint256(stor14.field_0))
    emit CollateralRatioToggled(bool(uint8(not collateral_ratio_paused)));
}

function reset(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if arg1 > 10^6:
        revert with 0, 'invalidRatio'
    if arg2 > 10^6:
        revert with 0, 'invalidRatio'
    target_collateral_ratio = arg1
    effective_collateral_ratio = arg2
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

function getEffectiveCollateralRatio() payable {
    if not sub_2988b66d:
        return target_collateral_ratio
    require ext_code.size(sub_7a0ebc88Address)
    staticcall sub_7a0ebc88Address.0xd2d97b06 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(dollarAddress)
    staticcall dollarAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^6:
            return (10^6 * ext_call.return_data[0] / ext_call.return_data[0])
    return 10^6
}

function init(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg1:
        revert with 0, 'invalidAddress'
    sub_7a0ebc88Address = arg1
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg2:
        revert with 0, 'invalidAddress'
    dollarAddress = arg2
    if owner != msg.sender:
        revert with 0, 32, 32, 0xfe4f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e65
    if not arg3:
        revert with 0, 'invalidAddress'
    collateralAddress = arg3
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}

function refreshCollateralRatio() payable {
    if collateral_ratio_paused:
        revert with 0, 'Collateral Ratio has been paused'
    if block.timestamp < sub_6ae74488:
        revert with 0, 17
    if block.timestamp - sub_6ae74488 < refresh_cooldown:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Must wait for the refresh cooldown since last refresh'
    require ext_code.size(sub_7a0ebc88Address)
    staticcall sub_7a0ebc88Address.0xe1f095aa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if price_target > !price_band:
        revert with 0, 17
    if ext_call.return_data[0] > price_target + price_band:
        if target_collateral_ratio <= sub_ac4f843e:
            target_collateral_ratio = 0
        else:
            if target_collateral_ratio < sub_ac4f843e:
                revert with 0, 17
            target_collateral_ratio -= sub_ac4f843e
    else:
        if price_target < price_band:
            revert with 0, 17
        if ext_call.return_data[0] < price_target - price_band:
            if target_collateral_ratio > !sub_ac4f843e:
                revert with 0, 17
            if target_collateral_ratio + sub_ac4f843e >= 10^6:
                target_collateral_ratio = 10^6
            else:
                if target_collateral_ratio > !sub_ac4f843e:
                    revert with 0, 17
                target_collateral_ratio += sub_ac4f843e
    if not sub_2988b66d:
        effective_collateral_ratio = target_collateral_ratio
    else:
        if not sub_2988b66d:
            effective_collateral_ratio = target_collateral_ratio
        else:
            require ext_code.size(sub_7a0ebc88Address)
            staticcall sub_7a0ebc88Address.0xd2d97b06 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(dollarAddress)
            staticcall dollarAddress.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                effective_collateral_ratio = 10^6
            else:
                if not ext_call.return_data[0]:
                    effective_collateral_ratio = 0
                else:
                    if ext_call.return_data[0] and 10^6 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^6 * ext_call.return_data[0] / ext_call.return_data[0] <= 10^6:
                        effective_collateral_ratio = 10^6 * ext_call.return_data[0] / ext_call.return_data[0]
                    else:
                        effective_collateral_ratio = 10^6
    sub_6ae74488 = block.timestamp
    emit 0x5b6f00ae: effective_collateral_ratio, target_collateral_ratio
}



}
