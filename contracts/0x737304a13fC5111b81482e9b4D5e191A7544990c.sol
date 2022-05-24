contract main {




// =====================  Runtime code  =====================


const sub_4bfe4a57(?) = 9000

const sub_f757c758(?) = 150000

const sub_f8c32124(?) = 5000


uint8 stor0; offset 160
uint8 stor0; offset 168
uint16 stor0; offset 160
address owner;
address treasuryAddress;
uint256 redemption_fee;
uint256 minting_fee;
uint256 excess_collateral_safety_margin;

function treasury() payable {
    return treasuryAddress
}

function owner() payable {
    return owner
}

function minting_fee() payable {
    return minting_fee
}

function redemption_fee() payable {
    return redemption_fee
}

function excess_collateral_safety_margin() payable {
    return excess_collateral_safety_margin
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

function setMintingFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5000:
        revert with 0, '>MINTING_FEE_MAX'
    minting_fee = arg1
}

function setRedemptionFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 9000:
        revert with 0, '>REDEMPTION_FEE_MAX'
    redemption_fee = arg1
}

function setTreasury(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
}

function setExcessCollateralSafetyMargin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<EXCESS_COLLATERAL_SAFETY_MARGIN_MIN'
    excess_collateral_safety_margin = arg1
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

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not uint8(stor0.field_168):
        if uint8(stor0.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_168):
            uint16(stor0.field_160) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryAddress = arg1
    emit TreasuryChanged(arg1);
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg3 > 5000:
        revert with 0, '>MINTING_FEE_MAX'
    minting_fee = arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 9000:
        revert with 0, '>REDEMPTION_FEE_MAX'
    redemption_fee = arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 < 150000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '<EXCESS_COLLATERAL_SAFETY_MARGIN_MIN'
    excess_collateral_safety_margin = arg4
    if not uint8(stor0.field_168):
        uint8(stor0.field_168) = 0
}



}
