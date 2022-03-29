contract main {




// =====================  Runtime code  =====================


#
#  - addCover(address arg1, uint48 arg2, uint256 arg3)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor2;
uint8 active; offset 160
uint128 stor3; offset 160
address stor3;
uint256 name;
uint256 claimNonce;
uint256 claimRedeemDelay;
uint256 noclaimRedeemDelay;
array of struct activeCovers;
array of struct stor9;
array of uint64 expirationTimestamps;
array of struct collaterals;
array of struct claimDetails;
mapping of uint8 collateralStatusMap;
mapping of struct expirationTimestampMap;
mapping of address coverMap;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function active() payable {
    return bool(active)
}

function name() payable {
    return name
}

function expirationTimestampsLength() payable {
    return expirationTimestamps.length
}

function collaterals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < collaterals.length
    return address(collaterals[arg1].field_0)
}

function collateralsLength() payable {
    return collaterals.length
}

function collateralStatusMap(address arg1) payable {
    require calldata.size - 4 >= 32
    return collateralStatusMap[arg1]
}

function claimDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < claimDetails.length
    return uint16(claimDetails[arg1].field_0), 
           uint16(claimDetails[arg1].field_0),
           claimDetails[arg1].field_0 % 281474976710656,
           claimDetails[arg1].field_80 % 281474976710656
}

function activeCovers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < activeCovers.length
    return address(activeCovers[arg1].field_0)
}

function claimRedeemDelay() payable {
    return claimRedeemDelay
}

function noclaimRedeemDelay() payable {
    return noclaimRedeemDelay
}

function owner() payable {
    return address(owner)
}

function claimNonce() payable {
    return claimNonce
}

function claimsLength() payable {
    return claimDetails.length
}

function expirationTimestampMap(uint48 arg1) payable {
    require calldata.size - 4 >= 32
    return expirationTimestampMap[arg1 % 281474976710656].field_0, uint8(expirationTimestampMap[arg1 % 281474976710656].field_256)
}

function activeCoversLength() payable {
    return activeCovers.length
}

function expirationTimestamps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < expirationTimestamps.length
    return expirationTimestamps[arg1 / 5].field_8 * 6 * arg1 % 5 % 281474976710656
}

function coverMap(address arg1, uint48 arg2) payable {
    require calldata.size - 4 >= 64
    return coverMap[arg1][arg2 % 281474976710656]
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    if address(stor3.field_0) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferCompleted(address(owner), address(stor3.field_0));
    address(owner) = address(stor3.field_0)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[13482 len 38], mem[202 len 26]
    emit OwnershipTransferInitiated(address(owner), arg1);
    address(stor3.field_0) = arg1
}

function updateClaimRedeemDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(owner))
    staticcall address(owner).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not governance'
    claimRedeemDelay = arg1
    return 1
}

function setActive(bool arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(owner))
    staticcall address(owner).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not dev'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    return 1
}

function updateNoclaimRedeemDelay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(address(owner))
    staticcall address(owner).governance() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not governance'
    noclaimRedeemDelay = arg1
    return 1
}

function updateCollateral(address arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(owner))
    staticcall address(owner).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not dev'
    if not arg1:
        revert with 0, 'COVER: address cannot be 0'
    if arg2 <= 0:
        revert with 0, 'COVER: status not in (0, 2]'
    if arg2 >= 3:
        revert with 0, 'COVER: status not in (0, 2]'
    if not collateralStatusMap[address(arg1)]:
        collaterals.length++
        stor175B[stor11.length] = arg1
    collateralStatusMap[address(arg1)] = arg2
    return 1
}

function updateExpirationTimestamp(uint48 arg1, bytes32 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(address(owner))
    staticcall address(owner).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not dev'
    if block.timestamp >= arg1 % 281474976710656:
        revert with 0, 'COVER: invalid expiration date'
    if arg3 <= 0:
        revert with 0, 'COVER: status not in (0, 2]'
    if arg3 >= 3:
        revert with 0, 'COVER: status not in (0, 2]'
    if not uint8(expirationTimestampMap[arg1 << 208].field_256):
        expirationTimestamps.length++
        expirationTimestamps[expirationTimestamps.length / 5].field_0 = arg1 % 281474976710656 * 256^(6 * expirationTimestamps.length % 5) or expirationTimestamps[expirationTimestamps.length / 5].field_0 and !(test266151307() * 256^(6 * expirationTimestamps.length % 5))
    expirationTimestampMap[arg1 << 208].field_0 = arg2
    uint8(expirationTimestampMap[arg1 << 208].field_256) = arg3
    return 1
}

function enactClaim(uint16 arg1, uint16 arg2, uint48 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg4 != claimNonce:
        revert with 0, 'COVER: nonces do not match'
    if arg1 > arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[13600 len 36], mem[200 len 28]
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 36, code.data[13600 len 36], mem[200 len 28]
    require ext_code.size(address(owner))
    staticcall address(owner).claimManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'COVER: caller not claimManager'
    if claimNonce + 1 < claimNonce:
        revert with 0, 'SafeMath: addition overflow'
    claimNonce++
    activeCovers.length = 0
    idx = 0
    while activeCovers.length > idx:
        activeCovers[idx].field_0 = 0
        idx = idx + 1
        continue 
    claimDetails.length++
    uint16(claimDetails[claimDetails.length].field_0) = arg1
    uint16(claimDetails[claimDetails.length].field_16) = arg2
    claimDetails[claimDetails.length].field_32 % 281474976710656 = arg3 % 281474976710656
    claimDetails[claimDetails.length].field_80 % 281474976710656 = block.timestamp % 281474976710656
    emit ClaimAccepted(arg4);
    return 1
}

function sub_b2cfb94d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if uint8(stor0.field_8):
        name = cd[4]
        collaterals.length++
        stor175B[stor11.length] = address(cd[68])
        Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(cd[36]))
        expirationTimestamps.length = ('cd', 100).length
        if not ('cd', 100).length:
            idx = 0
            while expirationTimestamps.length + 4 / 5 > idx:
                expirationTimestamps[idx].field_0 = 0
                idx = idx + 1
                continue 
            collateralStatusMap[address(cd[68])] = 1
            idx = 0
            while idx < ('cd', 100).length:
                if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                    _248 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < ('cd', 132).length
                    mem[_248] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_248 + 32] = 1
                    require idx < ('cd', 100).length
                    mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                    mem[32] = 14
                    expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[100] + 36
            while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
                uint256(expirationTimestamps.field_0) = cd[idx] % 281474976710656 * 256^s or !(test266151307() * 256^s) and uint256(expirationTimestamps.field_0)
                s = s + (-6 * s + 11 / 32) + (-1 * s * s + 11 / 32) + 6
                idx = idx + 32
                continue 
            idx = 6 * Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
            s = sha3(10)
            while idx:
                stor[s] = !(test266151307() * 256^idx) and stor[s]
                idx = idx + (-6 * idx + 11 / 32) + (-1 * idx * idx + 11 / 32) + 6
                s = (idx + 11 / 32) + s
                continue 
            idx = s
            while sha3(10) + (expirationTimestamps.length + 4 / 5) > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
            collateralStatusMap[address(cd[68])] = 1
            idx = 0
            while idx < ('cd', 100).length:
                if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                    _423 = mem[64]
                    mem[64] = mem[64] + 64
                    require idx < ('cd', 132).length
                    mem[_423] = cd[((32 * idx) + cd[132] + 36)]
                    mem[_423 + 32] = 1
                    require idx < ('cd', 100).length
                    mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                    mem[32] = 14
                    expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                    uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                idx = idx + 1
                continue 
    else:
        if not ext_code.size(this.address):
            if uint8(stor0.field_8):
                name = cd[4]
                collaterals.length++
                stor175B[stor11.length] = address(cd[68])
                Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(cd[36]))
                expirationTimestamps.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while expirationTimestamps.length + 4 / 5 > idx:
                        expirationTimestamps[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _249 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_249] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_249 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
                        uint256(expirationTimestamps.field_0) = cd[idx] % 281474976710656 * 256^s or !(test266151307() * 256^s) and uint256(expirationTimestamps.field_0)
                        s = s + (-6 * s + 11 / 32) + (-1 * s * s + 11 / 32) + 6
                        idx = idx + 32
                        continue 
                    idx = 6 * Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(10)
                    while idx:
                        stor[s] = !(test266151307() * 256^idx) and stor[s]
                        idx = idx + (-6 * idx + 11 / 32) + (-1 * idx * idx + 11 / 32) + 6
                        s = (idx + 11 / 32) + s
                        continue 
                    idx = s
                    while sha3(10) + (expirationTimestamps.length + 4 / 5) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _424 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_424] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_424 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                name = cd[4]
                collaterals.length++
                stor175B[stor11.length] = address(cd[68])
                Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(cd[36]))
                expirationTimestamps.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while expirationTimestamps.length + 4 / 5 > idx:
                        expirationTimestamps[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _250 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_250] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_250 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
                        uint256(expirationTimestamps.field_0) = cd[idx] % 281474976710656 * 256^s or !(test266151307() * 256^s) and uint256(expirationTimestamps.field_0)
                        s = s + (-6 * s + 11 / 32) + (-1 * s * s + 11 / 32) + 6
                        idx = idx + 32
                        continue 
                    idx = 6 * Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(10)
                    while idx:
                        stor[s] = !(test266151307() * 256^idx) and stor[s]
                        idx = idx + (-6 * idx + 11 / 32) + (-1 * idx * idx + 11 / 32) + 6
                        s = (idx + 11 / 32) + s
                        continue 
                    idx = s
                    while sha3(10) + (expirationTimestamps.length + 4 / 5) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _425 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_425] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_425 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
        else:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 46, code.data[13554 len 46], mem[210 len 18]
            if uint8(stor0.field_8):
                name = cd[4]
                collaterals.length++
                stor175B[stor11.length] = address(cd[68])
                Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(cd[36]))
                expirationTimestamps.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while expirationTimestamps.length + 4 / 5 > idx:
                        expirationTimestamps[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _251 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_251] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_251 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
                        uint256(expirationTimestamps.field_0) = cd[idx] % 281474976710656 * 256^s or !(test266151307() * 256^s) and uint256(expirationTimestamps.field_0)
                        s = s + (-6 * s + 11 / 32) + (-1 * s * s + 11 / 32) + 6
                        idx = idx + 32
                        continue 
                    idx = 6 * Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(10)
                    while idx:
                        stor[s] = !(test266151307() * 256^idx) and stor[s]
                        idx = idx + (-6 * idx + 11 / 32) + (-1 * idx * idx + 11 / 32) + 6
                        s = (idx + 11 / 32) + s
                        continue 
                    idx = s
                    while sha3(10) + (expirationTimestamps.length + 4 / 5) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _426 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_426] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_426 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                name = cd[4]
                collaterals.length++
                stor175B[stor11.length] = address(cd[68])
                Mask(96, 0, stor3.field_160) = Mask(96, 0, bool(cd[36]))
                expirationTimestamps.length = ('cd', 100).length
                if not ('cd', 100).length:
                    idx = 0
                    while expirationTimestamps.length + 4 / 5 > idx:
                        expirationTimestamps[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _252 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_252] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_252 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = cd[100] + 36
                    while cd[100] + (32 * ('cd', 100).length) + 36 > idx:
                        uint256(expirationTimestamps.field_0) = cd[idx] % 281474976710656 * 256^s or !(test266151307() * 256^s) and uint256(expirationTimestamps.field_0)
                        s = s + (-6 * s + 11 / 32) + (-1 * s * s + 11 / 32) + 6
                        idx = idx + 32
                        continue 
                    idx = 6 * Mask(251, 0, (32 * ('cd', 100).length) + 31) >> 5
                    s = sha3(10)
                    while idx:
                        stor[s] = !(test266151307() * 256^idx) and stor[s]
                        idx = idx + (-6 * idx + 11 / 32) + (-1 * idx * idx + 11 / 32) + 6
                        s = (idx + 11 / 32) + s
                        continue 
                    idx = s
                    while sha3(10) + (expirationTimestamps.length + 4 / 5) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                    collateralStatusMap[address(cd[68])] = 1
                    idx = 0
                    while idx < ('cd', 100).length:
                        if block.timestamp < cd[((32 * idx) + cd[100] + 36)] % 281474976710656:
                            _427 = mem[64]
                            mem[64] = mem[64] + 64
                            require idx < ('cd', 132).length
                            mem[_427] = cd[((32 * idx) + cd[132] + 36)]
                            mem[_427 + 32] = 1
                            require idx < ('cd', 100).length
                            mem[0] = cd[((32 * idx) + cd[100] + 36)] % 281474976710656
                            mem[32] = 14
                            expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_0 = cd[((32 * idx) + cd[132] + 36)]
                            uint8(expirationTimestampMap[cd[((32 * idx) + cd[100] + 36)] << 208].field_256) = 1
                        idx = idx + 1
                        continue 
    claimRedeemDelay = 48 * 24 * 3600
    noclaimRedeemDelay = 240 * 24 * 3600
    if uint8(stor0.field_8):
        uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
        emit OwnershipTransferCompleted(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 32, 46, code.data[13554 len 46], mem[mem[64] + 114 len 18]
        if uint8(stor0.field_8):
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            emit OwnershipTransferCompleted(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
            emit OwnershipTransferCompleted(0, msg.sender);
            uint8(stor0.field_8) = 0
            uint8(stor0.field_8) = 0
}

function getProtocolDetails() payable {
    if not collaterals.length:
        if not expirationTimestamps.length:
            if not stor9.length:
                if activeCovers.length:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                    if (32 * activeCovers.length) + 32 > 64:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                        idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                        s = 1
                        while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                            mem[idx + 32] = address(activeCovers[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192] = address(stor9.field_0)
                if (32 * stor9.length) + 32 > 64:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 224] = address(stor9.field_256)
                    idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + 224
                    s = 1
                    while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 160 > idx:
                        mem[idx + 32] = address(stor9[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                if activeCovers.length:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                    if (32 * activeCovers.length) + 32 > 64:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                        idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                        s = 1
                        while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                            mem[idx + 32] = address(activeCovers[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
        else:
            mem[(32 * collaterals.length) + 160] = expirationTimestamps.field_0 % 281474976710656
            idx = (32 * collaterals.length) + 160
            s = 0
            while (32 * collaterals.length) + (32 * expirationTimestamps.length) + 128 > idx:
                mem[idx + 32] = expirationTimestamps.field_8 * (-6 * s + 11 / 32) + s + (-1 * s + 11 / 32 * s) + 6 % 281474976710656
                idx = idx + 32
                s = (-6 * s + 11 / 32) + s + (-1 * s + 11 / 32 * s) + 6
                continue 
            if not stor9.length:
                if not activeCovers.length:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                else:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                    if (32 * activeCovers.length) + 32 <= 64:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                        var22001 = floor32(collaterals.length)
                    else:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                        idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                        s = 1
                        while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                            mem[idx + 32] = address(activeCovers[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
            else:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192] = address(stor9.field_0)
                if (32 * stor9.length) + 32 <= 64:
                    if not activeCovers.length:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                        var22001 = floor32(collaterals.length)
                    else:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                        if (32 * activeCovers.length) + 32 > 64:
                            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                            idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                            s = 1
                            while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                                mem[idx + 32] = address(activeCovers[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                else:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 224] = address(stor9.field_256)
                    idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + 224
                    s = 1
                    while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 160 > idx:
                        mem[idx + 32] = address(stor9[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if activeCovers.length:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                        if (32 * activeCovers.length) + 32 > 64:
                            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                            idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                            s = 1
                            while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                                mem[idx + 32] = address(activeCovers[s].field_256)
                                idx = idx + 32
                                s = s + 1
                                continue 
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
        mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
        mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
        mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
        mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
        mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
        mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
        return name, 
               bool(active),
               claimNonce,
               claimRedeemDelay,
               noclaimRedeemDelay,
               Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
               (32 * collaterals.length) + 320,
               (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
               (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
    mem[128] = address(collaterals.field_0)
    idx = 128
    s = 0
    while (32 * collaterals.length) + 96 > idx:
        mem[idx + 32] = address(collaterals[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if not expirationTimestamps.length:
        if not stor9.length:
            if not activeCovers.length:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                var22001 = floor32(collaterals.length)
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
            else:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                if (32 * activeCovers.length) + 32 <= 64:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                    var23001 = floor32(collaterals.length)
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                    var26001 = floor32(expirationTimestamps.length)
                else:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                    idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                    s = 1
                    while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                        mem[idx + 32] = address(activeCovers[s].field_256)
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                    var26001 = floor32(collaterals.length)
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
        else:
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192] = address(stor9.field_0)
            if (32 * stor9.length) + 32 <= 64:
                if not activeCovers.length:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                    var23001 = floor32(collaterals.length)
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                    var26001 = floor32(expirationTimestamps.length)
                else:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                    if (32 * activeCovers.length) + 32 > 64:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                        idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                        s = 1
                        while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                            mem[idx + 32] = address(activeCovers[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
            else:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 224] = address(stor9.field_256)
                idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + 224
                s = 1
                while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 160 > idx:
                    mem[idx + 32] = address(stor9[s].field_256)
                    idx = idx + 32
                    s = s + 1
                    continue 
                if not activeCovers.length:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                    var26001 = floor32(collaterals.length)
                else:
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
                    if (32 * activeCovers.length) + 32 > 64:
                        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
                        idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
                        s = 1
                        while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
                            mem[idx + 32] = address(activeCovers[s].field_256)
                            idx = idx + 32
                            s = s + 1
                            continue 
                    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
        mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
        mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
        mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
        mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
        return name, 
               bool(active),
               claimNonce,
               claimRedeemDelay,
               noclaimRedeemDelay,
               Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
               (32 * collaterals.length) + 320,
               (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
               (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
    mem[(32 * collaterals.length) + 160] = expirationTimestamps.field_0 % 281474976710656
    idx = (32 * collaterals.length) + 160
    s = 0
    while (32 * collaterals.length) + (32 * expirationTimestamps.length) + 128 > idx:
        mem[idx + 32] = expirationTimestamps.field_8 * (-6 * s + 11 / 32) + s + (-1 * s + 11 / 32 * s) + 6 % 281474976710656
        idx = idx + 32
        s = (-6 * s + 11 / 32) + s + (-1 * s + 11 / 32 * s) + 6
        continue 
    if not stor9.length:
        if not activeCovers.length:
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
            mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
            mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
            mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
            mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
            mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
            mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
            return name, 
                   bool(active),
                   claimNonce,
                   claimRedeemDelay,
                   noclaimRedeemDelay,
                   Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
                   (32 * collaterals.length) + 320,
                   (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                   (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
        if (32 * activeCovers.length) + 32 <= 64:
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
            var26001 = floor32(collaterals.length)
            mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
            mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
            mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
            mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
            mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
            mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
            return name, 
                   bool(active),
                   claimNonce,
                   claimRedeemDelay,
                   noclaimRedeemDelay,
                   Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
                   (32 * collaterals.length) + 320,
                   (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                   (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
    else:
        mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192] = address(stor9.field_0)
        if (32 * stor9.length) + 32 <= 64:
            if not activeCovers.length:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                var26001 = floor32(collaterals.length)
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
                return name, 
                       bool(active),
                       claimNonce,
                       claimRedeemDelay,
                       noclaimRedeemDelay,
                       Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
                       (32 * collaterals.length) + 320,
                       (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                       (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
            if (32 * activeCovers.length) + 32 <= 64:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
                return name, 
                       bool(active),
                       claimNonce,
                       claimRedeemDelay,
                       noclaimRedeemDelay,
                       Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + -floor32(collaterals.length) + 96]),
                       (32 * collaterals.length) + 320,
                       (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                       (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
        else:
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 224] = address(stor9.field_256)
            idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + 224
            s = 1
            while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 160 > idx:
                mem[idx + 32] = address(stor9[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
            if not activeCovers.length:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
                return name, 
                       bool(active),
                       claimNonce,
                       claimRedeemDelay,
                       noclaimRedeemDelay,
                       Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + -floor32(collaterals.length) + 32], stor9.length, mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)], mem[(64 * collaterals.length) + (64 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(stor9.length) + 608 len (32 * stor9.length) + (32 * activeCovers.length) + -floor32(stor9.length) + 32]),
                       (32 * collaterals.length) + 320,
                       (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                       (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
            mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224] = address(activeCovers.field_0)
            if (32 * activeCovers.length) + 32 <= 64:
                mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
                mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
                mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
                mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
                return name, 
                       bool(active),
                       claimNonce,
                       claimRedeemDelay,
                       noclaimRedeemDelay,
                       Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + -floor32(collaterals.length) + 32], stor9.length, mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)], mem[(64 * collaterals.length) + (64 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(stor9.length) + 608 len (32 * stor9.length) + (32 * activeCovers.length) + -floor32(stor9.length) + 32]),
                       (32 * collaterals.length) + 320,
                       (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
                       (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
    ('gt', ('add', 32, ('mask_shl', 251, 0, 5, ('stor', ('length', ('name', 'activeCovers', 8))))), 64)
    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256] = address(activeCovers.field_256)
    idx = (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 256
    s = 1
    while (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 192 > idx:
        mem[idx + 32] = address(activeCovers[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544 len floor32(collaterals.length)] = mem[128 len floor32(collaterals.length)]
    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 544] = expirationTimestamps.length
    mem[(64 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576 len floor32(expirationTimestamps.length)] = mem[(32 * collaterals.length) + 160 len floor32(expirationTimestamps.length)]
    mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 576] = stor9.length
    mem[(64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * stor9.length) + (32 * activeCovers.length) + 608 len floor32(stor9.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + 192 len floor32(stor9.length)]
    mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 608] = activeCovers.length
    mem[(64 * stor9.length) + (64 * expirationTimestamps.length) + (64 * collaterals.length) + (32 * activeCovers.length) + 640 len floor32(activeCovers.length)] = mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)]
    return name, 
           bool(active),
           claimNonce,
           claimRedeemDelay,
           noclaimRedeemDelay,
           Array(len=collaterals.length, data=mem[128 len floor32(collaterals.length)], mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + (32 * activeCovers.length) + floor32(collaterals.length) + 544 len (32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + -floor32(collaterals.length) + 64], activeCovers.length, mem[(32 * collaterals.length) + (32 * expirationTimestamps.length) + (32 * stor9.length) + 224 len floor32(activeCovers.length)], mem[(64 * collaterals.length) + (64 * expirationTimestamps.length) + (64 * stor9.length) + (32 * activeCovers.length) + floor32(activeCovers.length) + 640 len (32 * activeCovers.length) - floor32(activeCovers.length)]),
           (32 * collaterals.length) + 320,
           (32 * expirationTimestamps.length) + (32 * collaterals.length) + 352,
           (32 * stor9.length) + (32 * expirationTimestamps.length) + (32 * collaterals.length) + 384
}



}
