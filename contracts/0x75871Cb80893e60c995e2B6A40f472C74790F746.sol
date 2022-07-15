contract main {




// =====================  Runtime code  =====================


#
#  - sub_26463eb0(?)
#  - buyTrancheBToken(uint256 arg1, uint256 arg2)
#  - redeemTrancheAToken(uint256 arg1, uint256 arg2)
#  - redeemTrancheBToken(uint256 arg1, uint256 arg2)
#
const sub_1cc326c7(?) = 0xcc9efea3ac5df6ad6a656235ef955fbfef65b862

const sub_ccf98257(?) = ext_call.return_data[0]

const sub_ddd17c7c(?) = 0xbc529c00c6401aef6d220be8c6ea1667f6ad93e

const sub_e6a69ab8(?) = (8766 * 3600)

const PERCENT_DIVIDER = 10000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
uint256 stor101;
address adminToolsAddress;
uint32 stor152;
address feesCollectorAddress;
uint256 stor152;
address tranchesDeployerAddress;
address lendingPoolAddressProvider;
uint256 tranchePairsCounter;
uint8 stor156;
uint32 stor156; offset 8
uint32 redeemTimeout;
mapping of struct tranche;
mapping of struct sub_45f7612b;
mapping of uint256 lastActivity;
mapping of uint8 stor160;
address rewardsTokenAddress;
address sub_81ff56a4Address;
mapping of uint256 sub_6202a676;
mapping of uint256 sub_5ac91ced;
mapping of struct sub_3964ad72;
mapping of struct sub_17d5bf07;

function sub_09b8042f(?) {
    return sub_81ff56a4Address
}

function tranchePairsCounter() {
    return tranchePairsCounter
}

function redeemTimeout() {
    return redeemTimeout
}

function sub_17d5bf07(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_17d5bf07[address(arg1)][arg2][arg3].field_0, sub_17d5bf07[address(arg1)][arg2][arg3].field_256
}

function sub_277e2ab6(?) {
    require calldata.size - 4 >= 32
    return bool(stor160[arg1])
}

function trancheAddresses(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tranche[arg1].field_0, 
           tranche[arg1].field_256,
           tranche[arg1].field_512,
           tranche[arg1].field_768,
           bool(tranche[arg1].field_928)
}

function sub_3964ad72(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_3964ad72[address(arg1)][arg2][arg3].field_0, sub_3964ad72[address(arg1)][arg2][arg3].field_256
}

function sub_41a327f4(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_17d5bf07[arg1][arg2][arg3].field_0, sub_17d5bf07[arg1][arg2][arg3].field_256
}

function sub_45f7612b(?) {
    require calldata.size - 4 >= 32
    return sub_45f7612b[arg1].field_768
}

function getTrancheAExchangeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_45f7612b[arg1].field_512
}

function sub_5ac91ced(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_5ac91ced[arg1][arg2]
}

function sub_6181a7eb(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_5ac91ced[address(arg1)][arg2]
}

function sub_6202a676(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6202a676[address(arg1)][arg2]
}

function lendingPoolAddressProvider() {
    return lendingPoolAddressProvider
}

function sub_6bc73adf(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_6202a676[arg1][arg2]
}

function sub_81ff56a4(?) {
    return sub_81ff56a4Address
}

function sub_837e929d(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    return sub_3964ad72[arg1][arg2][arg3].field_0, sub_3964ad72[arg1][arg2][arg3].field_256
}

function owner() {
    return owner
}

function trancheParameters(uint256 arg1) {
    require calldata.size - 4 >= 32
    return sub_45f7612b[arg1].field_0, 
           sub_45f7612b[arg1].field_256,
           sub_45f7612b[arg1].field_512,
           sub_45f7612b[arg1].field_768,
           sub_45f7612b[arg1].field_1024,
           sub_45f7612b[arg1].field_1024
}

function feesCollectorAddress() {
    return address(feesCollectorAddress)
}

function adminToolsAddress() {
    return adminToolsAddress
}

function rewardsToken() {
    return rewardsTokenAddress
}

function lastActivity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastActivity[arg1]
}

function tranchesDeployerAddress() {
    return tranchesDeployerAddress
}

function _fallback() payable {
    revert with 0, 'Fallback not allowed'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_74665c77(?) {
    require calldata.size - 4 >= 32
    if sub_45f7612b[arg1].field_512 and sub_45f7612b[arg1].field_0 > -1 / sub_45f7612b[arg1].field_512:
        revert with 0, 17
    sub_45f7612b[arg1].field_768 = sub_45f7612b[arg1].field_512 * sub_45f7612b[arg1].field_0 / 8766 * 3600 / 10^18
    return (sub_45f7612b[arg1].field_512 * sub_45f7612b[arg1].field_0 / 8766 * 3600 / 10^18)
}

function setRedemptionTimeout(uint32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    redeemTimeout = arg1
}

function sub_fc9a1623(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    stor160[arg1] = uint8(bool(arg2))
}

function sub_6bf62a66(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    sub_81ff56a4Address = address(arg1)
}

function setTrancheRedemptionPercentage(uint256 arg1, uint16 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    sub_45f7612b[arg1].field_1024 = arg2
}

function setDecimals(uint256 arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    if arg2 > 18:
        revert with 0, 'JYearn: too many decimals'
    sub_45f7612b[arg1].field_1040 = arg2
}

function sub_b153dbe9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'JYearn: check addresses'
    if not address(arg2):
        revert with 0, 'JYearn: check addresses'
    if not address(arg3):
        revert with 0, 'JYearn: check addresses'
    adminToolsAddress = address(arg1)
    address(feesCollectorAddress) = address(arg2)
    tranchesDeployerAddress = address(arg3)
    rewardsTokenAddress = address(arg4)
}

function sub_4746e4c1(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    sub_6202a676[address(arg2)][arg1] = arg3
    sub_3964ad72[address(arg2)][arg1][arg3].field_0 = arg5
    sub_3964ad72[address(arg2)][arg1][arg3].field_256 = arg4
}

function sub_5abec138(?) {
    require calldata.size - 4 >= 160
    require arg2 == address(arg2)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    sub_5ac91ced[address(arg2)][arg1] = arg3
    sub_17d5bf07[address(arg2)][arg1][arg3].field_0 = arg5
    sub_17d5bf07[address(arg2)][arg1][arg3].field_256 = arg4
}

function sub_c193dd5f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xbc529c00c6401aef6d220be8c6ea1667f6ad93e)
    staticcall 0xbc529c00c6401aef6d220be8c6ea1667f6ad93e.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'JYearn: not enough YFI tokens to claim rewards'
    require ext_code.size(0xcc9efea3ac5df6ad6a656235ef955fbfef65b862)
    call 0xcc9efea3ac5df6ad6a656235ef955fbfef65b862.claim(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_78c30f4d(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    if arg1 >= tranchePairsCounter:
        revert with 0, 'JYearn: tranche number too high'
    if not address(arg2):
        revert with 0, 'JYearn: yToken address not allowed'
    tranche[arg1].field_256 = address(arg2)
    tranche[arg1].field_928 = Mask(96, 0, bool(arg3))
}

function sub_b2e801b7(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.pricePerShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_45f7612b[arg1].field_1040 >= 18:
        return ext_call.return_data[0]
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0]
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18))
    s = 10
    t = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * s * t)
}

function sub_292b843f(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_45f7612b[arg1].field_1040 >= 18:
        return ext_call.return_data[0]
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return ext_call.return_data[0]
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18))
    s = 10
    t = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * s * t)
}

function setTrancheAFixedPercentage(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    sub_45f7612b[arg1].field_0 = arg2
    if sub_45f7612b[arg1].field_512 and sub_45f7612b[arg1].field_0 > -1 / sub_45f7612b[arg1].field_512:
        revert with 0, 17
    sub_45f7612b[arg1].field_768 = sub_45f7612b[arg1].field_512 * sub_45f7612b[arg1].field_0 / 8766 * 3600 / 10^18
    if block.timestamp < sub_45f7612b[arg1].field_256:
        revert with 0, 17
    if sub_45f7612b[arg1].field_768 and block.timestamp - sub_45f7612b[arg1].field_256 > -1 / sub_45f7612b[arg1].field_768:
        revert with 0, 17
    if sub_45f7612b[arg1].field_512 > !((block.timestamp * sub_45f7612b[arg1].field_768) - (sub_45f7612b[arg1].field_256 * sub_45f7612b[arg1].field_768)):
        revert with 0, 17
    sub_45f7612b[arg1].field_512 = sub_45f7612b[arg1].field_512 + (block.timestamp * sub_45f7612b[arg1].field_768) - (sub_45f7612b[arg1].field_256 * sub_45f7612b[arg1].field_768)
    sub_45f7612b[arg1].field_256 = block.timestamp
    sub_45f7612b[arg1].field_512 = sub_45f7612b[arg1].field_512 + (block.timestamp * sub_45f7612b[arg1].field_768) - (sub_45f7612b[arg1].field_256 * sub_45f7612b[arg1].field_768)
}

function getTrAValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_512)
    staticcall tranche[arg1].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        return (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18)
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
            revert with 0, 18
        return (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18))
    s = 10
    t = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t)
}

function transferTokenToFeesCollector(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[100] = msg.sender
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    mem[ceil32(return_data.size) + 132] = address(feesCollectorAddress)
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor152)
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor152), uint32(stor152), arg2, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(msg.sender), mem[132 len 28] == bool(uint32(msg.sender), mem[132 len 28])
            if not uint32(msg.sender), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function sub_f0751171(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    require ext_code.size(adminToolsAddress)
    staticcall adminToolsAddress.isAdmin(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'JYearn: not an Admin'
    if arg1 >= tranchePairsCounter:
        revert with 0, 'JYearn: tranche number too high'
    if not address(arg2):
        revert with 0, 'JYearn: yToken address not allowed'
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        require ext_code.size(tranche[arg1].field_256)
        staticcall tranche[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    require ext_code.size(tranche[arg1].field_0)
    staticcall tranche[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tranche[arg1].field_256)
    call tranche[arg1].field_256.0x2e1a7d4d with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tranche[arg1].field_0)
    staticcall tranche[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 17
    tranche[arg1].field_256 = address(arg2)
    tranche[arg1].field_928 = Mask(96, 0, bool(arg3))
    require ext_code.size(tranche[arg1].field_0)
    staticcall tranche[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tranche[arg1].field_0)
    call tranche[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(arg2))
    call address(arg2).deposit(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(owner, msg.sender);
        adminToolsAddress = arg1
        address(feesCollectorAddress) = arg2
        tranchesDeployerAddress = arg3
        uint8(stor156.field_0) = 3
        stor156.field_8 % 16777216 = 0
        rewardsTokenAddress = arg4
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(owner, msg.sender);
            adminToolsAddress = arg1
            address(feesCollectorAddress) = arg2
            tranchesDeployerAddress = arg3
            uint8(stor156.field_0) = 3
            stor156.field_8 % 16777216 = 0
            rewardsTokenAddress = arg4
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(owner, msg.sender);
                adminToolsAddress = arg1
                address(feesCollectorAddress) = arg2
                tranchesDeployerAddress = arg3
                uint8(stor156.field_0) = 3
                stor156.field_8 % 16777216 = 0
                rewardsTokenAddress = arg4
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(owner, msg.sender);
                    adminToolsAddress = arg1
                    address(feesCollectorAddress) = arg2
                    tranchesDeployerAddress = arg3
                    uint8(stor156.field_0) = 3
                    stor156.field_8 % 16777216 = 0
                    rewardsTokenAddress = arg4
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        adminToolsAddress = arg1
                        address(feesCollectorAddress) = arg2
                        tranchesDeployerAddress = arg3
                        uint8(stor156.field_0) = 3
                        stor156.field_8 % 16777216 = 0
                        rewardsTokenAddress = arg4
                    else:
                        uint16(stor0.field_0) = 257
                        owner = msg.sender
                        emit OwnershipTransferred(owner, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        adminToolsAddress = arg1
                        address(feesCollectorAddress) = arg2
                        tranchesDeployerAddress = arg3
                        uint8(stor156.field_0) = 3
                        stor156.field_8 % 16777216 = 0
                        rewardsTokenAddress = arg4
                        uint8(stor0.field_8) = 0
}

function getTotalValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    if not tranche[arg1].field_928:
        staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18)
        s = 10
        t = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
    else:
        staticcall tranche[arg1].field_256.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            return (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18)
        s = 10
        t = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18)
}

function buyTrancheAToken(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if not stor160[arg1]:
        revert with 0, 'JYearn: tranche deposit disabled'
    mem[100] = this.address
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    require ext_code.size(tranche[arg1].field_0)
    staticcall tranche[arg1].field_0.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'JYearn: allowance failed buying tranche A'
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = this.address
    mem[(2 * ceil32(return_data.size)) + 196] = arg2
    mem[(2 * ceil32(return_data.size)) + 96] = 100
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[(2 * ceil32(return_data.size)) + 228] = 32
    mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
    if not ext_code.size(tranche[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0
    mem[(2 * ceil32(return_data.size)) + 392] = 0
    call tranche[arg1].field_0 with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
            if not mem[(2 * ceil32(return_data.size)) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(tranche[arg1].field_0)
    staticcall tranche[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'Insufficient Balance'
    require ext_code.size(tranche[arg1].field_0)
    call tranche[arg1].field_0.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args tranche[arg1].field_256, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(tranche[arg1].field_256)
    call tranche[arg1].field_256.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_45f7612b[arg1].field_512 and sub_45f7612b[arg1].field_0 > -1 / sub_45f7612b[arg1].field_512:
        revert with 0, 17
    sub_45f7612b[arg1].field_768 = sub_45f7612b[arg1].field_512 * sub_45f7612b[arg1].field_0 / 8766 * 3600 / 10^18
    if block.timestamp < sub_45f7612b[arg1].field_256:
        revert with 0, 17
    if sub_45f7612b[arg1].field_768 and block.timestamp - sub_45f7612b[arg1].field_256 > -1 / sub_45f7612b[arg1].field_768:
        revert with 0, 17
    if sub_45f7612b[arg1].field_512 > !((block.timestamp * sub_45f7612b[arg1].field_768) - (sub_45f7612b[arg1].field_256 * sub_45f7612b[arg1].field_768)):
        revert with 0, 17
    sub_45f7612b[arg1].field_512 = sub_45f7612b[arg1].field_512 + (block.timestamp * sub_45f7612b[arg1].field_768) - (sub_45f7612b[arg1].field_256 * sub_45f7612b[arg1].field_768)
    sub_45f7612b[arg1].field_256 = block.timestamp
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        if sub_6202a676[msg.sender][arg1] > -2:
            revert with 0, 17
        sub_6202a676[msg.sender][arg1]++
        sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_0 = block.timestamp
        sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_256 = 0
        lastActivity[msg.sender] = block.number
        emit 0x19f1e132: arg1, msg.sender, arg2, 0
    else:
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if arg2 and 1 > -1 / arg2:
                revert with 0, 17
            if arg2 and 10^18 > -1 / arg2:
                revert with 0, 17
            if not sub_45f7612b[arg1].field_512:
                revert with 0, 18
            require ext_code.size(sub_81ff56a4Address)
            call sub_81ff56a4Address.0x99953dbf with:
                 gas gas_remaining wei
                args msg.sender, tranche[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(tranche[arg1].field_512)
            call tranche[arg1].field_512.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 10^18 * arg2 / sub_45f7612b[arg1].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_6202a676[msg.sender][arg1] > -2:
                revert with 0, 17
            sub_6202a676[msg.sender][arg1]++
            sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_0 = block.timestamp
            sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_256 = 10^18 * arg2 / sub_45f7612b[arg1].field_512
            lastActivity[msg.sender] = block.number
            emit 0x19f1e132: arg1, msg.sender, arg2, 10^18 * arg2 / sub_45f7612b[arg1].field_512
        else:
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if arg2 and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / arg2:
                    revert with 0, 17
                if arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18) and 10^18 > -1 / arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                if not sub_45f7612b[arg1].field_512:
                    revert with 0, 18
                require ext_code.size(sub_81ff56a4Address)
                call sub_81ff56a4Address.0x99953dbf with:
                     gas gas_remaining wei
                    args msg.sender, tranche[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tranche[arg1].field_512)
                call tranche[arg1].field_512.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18) / sub_45f7612b[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_6202a676[msg.sender][arg1] > -2:
                    revert with 0, 17
                sub_6202a676[msg.sender][arg1]++
                sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_0 = block.timestamp
                sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_256 = 10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18) / sub_45f7612b[arg1].field_512
                lastActivity[msg.sender] = block.number
                emit 0x19f1e132: arg1, msg.sender, arg2, 10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18) / sub_45f7612b[arg1].field_512
            else:
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if arg2 and s * t > -1 / arg2:
                    revert with 0, 17
                if arg2 * s * t and 10^18 > -1 / arg2 * s * t:
                    revert with 0, 17
                if not sub_45f7612b[arg1].field_512:
                    revert with 0, 18
                require ext_code.size(sub_81ff56a4Address)
                call sub_81ff56a4Address.0x99953dbf with:
                     gas gas_remaining wei
                    args msg.sender, tranche[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(tranche[arg1].field_512)
                call tranche[arg1].field_512.mint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 10^18 * arg2 * s * t / sub_45f7612b[arg1].field_512
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_6202a676[msg.sender][arg1] > -2:
                    revert with 0, 17
                sub_6202a676[msg.sender][arg1]++
                sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_0 = block.timestamp
                sub_3964ad72[msg.sender][arg1][stor163[msg.sender][arg1] + 1].field_256 = 10^18 * arg2 * s * t / sub_45f7612b[arg1].field_512
                lastActivity[msg.sender] = block.number
                emit 0x19f1e132: arg1, msg.sender, arg2, 10^18 * arg2 * s * t / sub_45f7612b[arg1].field_512
    stor101 = 1
}

function getTrBValue(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tranche[arg1].field_256)
    if not tranche[arg1].field_928:
        staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        s = 10
        t = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
    else:
        staticcall tranche[arg1].field_256.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 0
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 17
                return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                return 0
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                revert with 0, 17
            return ((ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t))
        s = 10
        t = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if s > -1 / s:
                revert with 0, 17
            if not bool(idx):
                s = s * s
                t = t
                idx = uint255(idx) * 0.5
                continue 
            s = s * s
            t = s * t
            idx = uint255(idx) * 0.5
            continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_512)
    staticcall tranche[arg1].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
            return 0
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18))
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
            revert with 0, 18
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
            return 0
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
            revert with 0, 17
        return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)))
    u = 10
    v = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if u > -1 / u:
            revert with 0, 17
        if not bool(idx):
            u = u * u
            v = v
            idx = uint255(idx) * 0.5
            continue 
        u = u * u
        v = u * v
        idx = uint255(idx) * 0.5
        continue 
    if v > -1 / u:
        revert with 0, 17
    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not u * v:
        revert with 0, 18
    if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 <= ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
        revert with 0, 17
    return ((ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v))
}

function getTrancheBExchangeRate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(tranche[arg1].field_768)
    staticcall tranche[arg1].field_768.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_45f7612b[arg1].field_1040 >= 18:
        if ext_call.return_data[0] > !arg2:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        if not tranche[arg1].field_928:
            staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        else:
            staticcall tranche[arg1].field_256.pricePerShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        staticcall tranche[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 > !arg2:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_512)
        staticcall tranche[arg1].field_512.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + arg2)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + arg2)
        u = 10
        v = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
            return 10^18
        if sub_45f7612b[arg1].field_1040 >= 18:
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + arg2)
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + arg2)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
        w = 10
        x = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + arg2 <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + arg2:
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + arg2)
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if ext_call.return_data[0] > !arg2:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        if not tranche[arg1].field_928:
            staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        else:
            staticcall tranche[arg1].field_256.pricePerShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + arg2 <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + arg2:
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + arg2)
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + arg2)
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + arg2 <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + arg2:
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + arg2)
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        staticcall tranche[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 > !arg2:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_512)
        staticcall tranche[arg1].field_512.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + arg2)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + arg2 <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + arg2:
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + arg2)
        u = 10
        v = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
            return 10^18
        if sub_45f7612b[arg1].field_1040 >= 18:
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + arg2)
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + arg2)
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + arg2 <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + arg2:
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + arg2)
        w = 10
        x = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + arg2 <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + arg2:
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + arg2)
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if arg2 and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / arg2:
            revert with 0, 17
        if ext_call.return_data[0] > !(arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        if not tranche[arg1].field_928:
            staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        else:
            staticcall tranche[arg1].field_256.pricePerShare() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if sub_45f7612b[arg1].field_1040 >= 18:
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_256)
                staticcall tranche[arg1].field_256.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                    revert with 0, 17
                require ext_code.size(tranche[arg1].field_512)
                staticcall tranche[arg1].field_512.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        revert with 0, 18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if sub_45f7612b[arg1].field_1040 >= 18:
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if 18 < sub_45f7612b[arg1].field_1040:
                        revert with 0, 17
                    if not -sub_45f7612b[arg1].field_1040 + 18:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                            return 10^18
                        if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 17
                        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                            revert with 0, 18
                        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                    s = 10
                    t = 1
                    idx = -sub_45f7612b[arg1].field_1040 + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and s * t > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (arg2 * s * t) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * s * t) + (10^18 * arg2 * s * t) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                s = 10
                t = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / s * t * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            s = 10
            t = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
        if t > -1 / s:
            revert with 0, 17
        if ext_call.return_data[0] and s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_256)
        staticcall tranche[arg1].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and ext_call.return_data[0] * s * t > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 > !arg2:
            revert with 0, 17
        require ext_code.size(tranche[arg1].field_512)
        staticcall tranche[arg1].field_512.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
        u = 10
        v = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
            return 10^18
        if sub_45f7612b[arg1].field_1040 >= 18:
            if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
        w = 10
        x = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * s * t / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)))
    s = 10
    t = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if arg2 and s * t > -1 / arg2:
        revert with 0, 17
    if ext_call.return_data[0] > !(arg2 * s * t):
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_256)
    if not tranche[arg1].field_928:
        staticcall tranche[arg1].field_256.getPricePerFullShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        u = 10
        v = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
    else:
        staticcall tranche[arg1].field_256.pricePerShare() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if sub_45f7612b[arg1].field_1040 >= 18:
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if ext_call.return_data[0] and 1 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if ext_call.return_data[0] and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_256)
            staticcall tranche[arg1].field_256.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] and ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 > !arg2:
                revert with 0, 17
            require ext_code.size(tranche[arg1].field_512)
            staticcall tranche[arg1].field_512.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    revert with 0, 18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if sub_45f7612b[arg1].field_1040 >= 18:
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if 18 < sub_45f7612b[arg1].field_1040:
                    revert with 0, 17
                if not -sub_45f7612b[arg1].field_1040 + 18:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                        return 10^18
                    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                        return 10^18
                    if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                        revert with 0, 17
                    if not ext_call.return_data[0] + (arg2 * s * t):
                        revert with 0, 18
                    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
                u = 10
                v = 1
                idx = -sub_45f7612b[arg1].field_1040 + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and u * v > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (arg2 * u * v) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * u * v) + (10^18 * arg2 * u * v) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * u * v) / ext_call.return_data[0] + (arg2 * s * t))
            u = 10
            v = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                return 10^18
            if sub_45f7612b[arg1].field_1040 >= 18:
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if 18 < sub_45f7612b[arg1].field_1040:
                revert with 0, 17
            if not -sub_45f7612b[arg1].field_1040 + 18:
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) / ext_call.return_data[0] + (arg2 * s * t))
            if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                    revert with 0, 17
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                    return 10^18
                if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                    return 10^18
                if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                    revert with 0, 17
                if not ext_call.return_data[0] + (arg2 * s * t):
                    revert with 0, 18
                return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
            w = 10
            x = 1
            idx = -sub_45f7612b[arg1].field_1040 + 18
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
            if x > -1 / w:
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * 10^(-sub_45f7612b[arg1].field_1040 + 18) / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / u * v * w * x) / ext_call.return_data[0] + (arg2 * s * t))
        u = 10
        v = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(idx):
                u = u * u
                v = v
                idx = uint255(idx) * 0.5
                continue 
            u = u * u
            v = u * v
            idx = uint255(idx) * 0.5
            continue 
    if v > -1 / u:
        revert with 0, 17
    if ext_call.return_data[0] and u * v > -1 / ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_256)
    staticcall tranche[arg1].field_256.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] * u * v > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 > !arg2:
        revert with 0, 17
    require ext_code.size(tranche[arg1].field_512)
    staticcall tranche[arg1].field_512.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
            return 10^18
        if sub_45f7612b[arg1].field_1040 >= 18:
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) / ext_call.return_data[0] + (arg2 * s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
        w = 10
        x = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + (arg2 * s * t) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * s * t):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 * w * x) / ext_call.return_data[0] + (arg2 * s * t))
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not 10^(-sub_45f7612b[arg1].field_1040 + 18):
            revert with 0, 18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18):
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
            return 10^18
        if sub_45f7612b[arg1].field_1040 >= 18:
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
        if 18 < sub_45f7612b[arg1].field_1040:
            revert with 0, 17
        if not -sub_45f7612b[arg1].field_1040 + 18:
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
        if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
                return 10^18
            if ext_call.return_data[0] + (arg2 * s * t) <= 0:
                return 10^18
            if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
                revert with 0, 17
            if not ext_call.return_data[0] + (arg2 * s * t):
                revert with 0, 18
            return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
        w = 10
        x = 1
        idx = -sub_45f7612b[arg1].field_1040 + 18
        while idx > 1:
            if w > -1 / w:
                revert with 0, 17
            if not bool(idx):
                w = w * w
                x = x
                idx = uint255(idx) * 0.5
                continue 
            w = w * w
            x = w * x
            idx = uint255(idx) * 0.5
            continue 
        if x > -1 / w:
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)) and w * x > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18)):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + (arg2 * s * t) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (arg2 * w * x) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * s * t):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * w * x) + (10^18 * arg2 * w * x) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / 10^(-sub_45f7612b[arg1].field_1040 + 18) * w * x) / ext_call.return_data[0] + (arg2 * s * t))
    w = 10
    x = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if w > -1 / w:
            revert with 0, 17
        if not bool(idx):
            w = w * w
            x = x
            idx = uint255(idx) * 0.5
            continue 
        w = w * w
        x = w * x
        idx = uint255(idx) * 0.5
        continue 
    if x > -1 / w:
        revert with 0, 17
    if ext_call.return_data[0] and sub_45f7612b[arg1].field_512 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not w * x:
        revert with 0, 18
    if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 < ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x:
        return 10^18
    if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) <= 0:
        return 10^18
    if sub_45f7612b[arg1].field_1040 >= 18:
        if ext_call.return_data[0] + (arg2 * s * t) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * s * t):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) / ext_call.return_data[0] + (arg2 * s * t))
    if 18 < sub_45f7612b[arg1].field_1040:
        revert with 0, 17
    if not -sub_45f7612b[arg1].field_1040 + 18:
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) and 1 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) <= 0:
            return 10^18
        if ext_call.return_data[0] + (arg2 * s * t) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * s * t):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + (10^18 * arg2) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) / ext_call.return_data[0] + (arg2 * s * t))
    if bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 78)) or bool(bool(-sub_45f7612b[arg1].field_1040 + 18 < 32)):
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) and 10^(-sub_45f7612b[arg1].field_1040 + 18) > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x):
            revert with 0, 17
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * 10^(-sub_45f7612b[arg1].field_1040 + 18)) <= 0:
            return 10^18
        if ext_call.return_data[0] + (arg2 * s * t) <= 0:
            return 10^18
        if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * 10^(-sub_45f7612b[arg1].field_1040 + 18)) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * 10^(-sub_45f7612b[arg1].field_1040 + 18)):
            revert with 0, 17
        if not ext_call.return_data[0] + (arg2 * s * t):
            revert with 0, 18
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) + (10^18 * arg2 * 10^(-sub_45f7612b[arg1].field_1040 + 18)) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * 10^(-sub_45f7612b[arg1].field_1040 + 18)) / ext_call.return_data[0] + (arg2 * s * t))
    y = 10
    z = 1
    idx = -sub_45f7612b[arg1].field_1040 + 18
    while idx > 1:
        if y > -1 / y:
            revert with 0, 17
        if not bool(idx):
            y = y * y
            z = z
            idx = uint255(idx) * 0.5
            continue 
        y = y * y
        z = y * z
        idx = uint255(idx) * 0.5
        continue 
    if z > -1 / y:
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x) and y * z > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18) + arg2 - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x):
        revert with 0, 17
    if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * y * z) + (arg2 * y * z) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * y * z) <= 0:
        return 10^18
    if ext_call.return_data[0] + (arg2 * s * t) <= 0:
        return 10^18
    if (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * y * z) + (arg2 * y * z) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * y * z) and 10^18 > -1 / (ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * y * z) + (arg2 * y * z) - (ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * y * z):
        revert with 0, 17
    if not ext_call.return_data[0] + (arg2 * s * t):
        revert with 0, 18
    return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] * u * v / 10^18 * y * z) + (10^18 * arg2 * y * z) - (10^18 * ext_call.return_data[0] * sub_45f7612b[arg1].field_512 / 10^18 / w * x * y * z) / ext_call.return_data[0] + (arg2 * s * t))
}



}
