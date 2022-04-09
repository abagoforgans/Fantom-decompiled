contract main {




// =====================  Runtime code  =====================


address owner;
address sub_7b6f1e07Address;
address sub_a295485cAddress;
uint256 totalUnlocked;
uint256 lastClaimedTimestamp;
uint256 sub_c2ea2045;
uint256 c;
uint256 a;
uint8 stor8;
uint8 farmingStarted; offset 8
uint256 stor8; offset 8

function a() payable {
    return a
}

function sub_7b6f1e07(?) payable {
    return sub_7b6f1e07Address
}

function owner() payable {
    return owner
}

function farmingStarted() payable {
    return bool(farmingStarted)
}

function sub_a295485c(?) payable {
    return sub_a295485cAddress
}

function totalUnlocked() payable {
    return totalUnlocked
}

function sub_c2ea2045(?) payable {
    return sub_c2ea2045
}

function c() payable {
    return c
}

function lastClaimedTimestamp() payable {
    return lastClaimedTimestamp
}

function _fallback() payable {
    revert
}

function setDeprecated() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    uint8(stor8.field_0) = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    owner = arg1
}

function startFarming() payable {
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    Mask(248, 0, stor8.field_8) = 1
    sub_c2ea2045 = block.timestamp
    lastClaimedTimestamp = sub_c2ea2045
}

function mintAsset() payable {
    if not farmingStarted:
        revert with 0, 'farming is not started yet'
    if not uint8(stor8.field_0):
        revert with 0, 'This contract is deprecated.'
    if not c:
        revert with 'NH{q', 18
    if lastClaimedTimestamp > -(a / c) - 1:
        revert with 'NH{q', 17
    if lastClaimedTimestamp + (a / c) < sub_c2ea2045:
        revert with 'NH{q', 17
    if a and 10^18 > -1 / a:
        revert with 'NH{q', 17
    if not lastClaimedTimestamp + (a / c) - sub_c2ea2045:
        revert with 'NH{q', 18
    if not c:
        revert with 'NH{q', 18
    if block.timestamp > -(a / c) - 1:
        revert with 'NH{q', 17
    if block.timestamp + (a / c) < sub_c2ea2045:
        revert with 'NH{q', 17
    if a and 10^18 > -1 / a:
        revert with 'NH{q', 17
    if not block.timestamp + (a / c) - sub_c2ea2045:
        revert with 'NH{q', 18
    if 10^18 * a / lastClaimedTimestamp + (a / c) - sub_c2ea2045 < 10^18 * a / block.timestamp + (a / c) - sub_c2ea2045:
        revert with 'NH{q', 17
    lastClaimedTimestamp = block.timestamp
    require ext_code.size(sub_7b6f1e07Address)
    call sub_7b6f1e07Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_a295485cAddress, (10^18 * a / lastClaimedTimestamp + (a / c) - sub_c2ea2045) - (10^18 * a / block.timestamp + (a / c) - sub_c2ea2045)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'error transfering graviton token'
    if totalUnlocked > -(10^18 * a / lastClaimedTimestamp + (a / c) - sub_c2ea2045) + (10^18 * a / block.timestamp + (a / c) - sub_c2ea2045) - 1:
        revert with 'NH{q', 17
    totalUnlocked = totalUnlocked + (10^18 * a / lastClaimedTimestamp + (a / c) - sub_c2ea2045) - (10^18 * a / block.timestamp + (a / c) - sub_c2ea2045)
}



}
