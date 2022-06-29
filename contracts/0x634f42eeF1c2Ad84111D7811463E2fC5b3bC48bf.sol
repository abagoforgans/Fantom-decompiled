contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - swapAndSend_OA()
#  - transfer(address arg1, uint256 arg2)
#  - initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, uint256 arg8, address arg9)
#
array of struct stor0;
array of struct stor1;
uint8 decimals;
uint256 totalSupply;
uint256 stor4;
uint256 swapThreshold;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint16 stor12;
uint16 stor12; offset 16
uint16 stor12; offset 32
uint16 stor12; offset 48
uint16 stor12; offset 64
uint16 stor12; offset 80
uint32 stor12;
uint32 stor12; offset 96
uint32 stor12; offset 128
uint32 stor12; offset 160
uint32 stor12; offset 192
uint32 stor12; offset 224
uint128 stor12;
uint256 sub_8de890bd;
uint256 launchedAtTimestamp;
uint32 stor15;
address owner;
address ownableAddress;
address iceCreamManAddress;
address wrappedNativeAddress;
address flavor0Address;
address flavor1Address;
address bridgeAddress;
address bridgeTrollAddress;
address routerAddress;
address pairAddress;
address creameryAddress;
address dripper0Address;
address dripper1Address;
address flavorsChainDataAddress;
address stor29;
address stor30;
address stor31;
address stor32;
address stor33;
uint8 stor36; offset 160
uint8 stor36; offset 168
uint8 initialized; offset 184
uint8 sub_a5e01f37; offset 192
uint8 stor36; offset 200
uint8 stor36; offset 208
uint8 stor36; offset 216
uint8 stor36; offset 224
uint8 stor36; offset 232
uint8 stor36; offset 240
uint8 stor36; offset 248
uint16 stor36; offset 240
uint32 stor36; offset 232
uint32 stor36; offset 224
uint64 stor36; offset 216
uint64 stor36; offset 208
uint64 stor36; offset 200
address stor36;
uint8 stor37;
uint8 stor37; offset 8
uint8 stor37; offset 16
uint8 stor37; offset 24
uint8 stor37; offset 32
uint256 stor37; offset 32
uint256 stor37; offset 24
uint256 stor37; offset 16
uint256 stor37; offset 8
uint256 stor38;

function swapThreshold() {
    return swapThreshold
}

function initialized() {
    return bool(initialized)
}

function totalSupply() {
    return totalSupply
}

function dripper0() {
    return dripper0Address
}

function decimals() {
    return decimals
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[arg1])
}

function flavorsChainData() {
    return flavorsChainDataAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor10[arg1])
}

function owner() {
    return address(owner)
}

function sub_8de890bd(?) {
    return sub_8de890bd
}

function flavor0() {
    return flavor0Address
}

function dripper1() {
    return dripper1Address
}

function sub_a5e01f37(?) {
    return sub_a5e01f37
}

function pair() {
    return pairAddress
}

function ownable() {
    return ownableAddress
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function flavor1() {
    return flavor1Address
}

function creamery() {
    return creameryAddress
}

function iceCreamMan() {
    return iceCreamManAddress
}

function bridge() {
    return bridgeAddress
}

function bridgeTroll() {
    return bridgeTrollAddress
}

function isLiquidityPool(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function wrappedNative() {
    return wrappedNativeAddress
}

function router() {
    return routerAddress
}

function burnItAllDown_OICM() {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    selfdestruct(iceCreamManAddress)
}

function gas() {
    return uint32(stor12.field_0), 
           uint32(stor12.field_0),
           uint32(stor12.field_0),
           uint32(stor12.field_0),
           uint32(stor12.field_224)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function fees() {
    return uint16(stor12.field_0), 
           uint16(stor12.field_0),
           uint16(stor12.field_0),
           uint16(stor12.field_0),
           uint16(stor12.field_64),
           uint16(stor12.field_0),
           10000
}

function sub_b5849300(?) {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    Mask(96, 0, stor12.field_0) = 0
    stor4 = -1
    uint8(stor36.field_160) = 1
}

function sub_2254b665(?) {
    require calldata.size - 4 >= 32
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor4 = arg1
}

function subTotalSupply_OB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    return 1
}

function addTotalSupply_OB(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    return 1
}

function setSwapDeadlineWaitTime_OAD(uint256 arg1) {
    require calldata.size - 4 >= 32
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor38 = arg1
}

function updateBridge_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    stor9[address(arg1)] = 1
    stor11[address(arg1)] = 1
    emit 0xe1694c0b: arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function subBalance_OB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg2
    return 1
}

function addBalance_OB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    return 1
}

function sub_3dce3903(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor8[address(arg1)] = uint8(bool(arg2))
}

function sub_5eeb90f5(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor9[address(arg1)] = uint8(bool(arg2))
}

function sub_36b55675(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor10[address(arg1)] = uint8(bool(arg2))
}

function updateIceCreamMan_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    iceCreamManAddress = arg1
    stor9[address(arg1)] = 1
    stor10[address(arg1)] = 1
    stor11[address(arg1)] = 0
    emit IceCreamManTransferred(iceCreamManAddress, arg1);
}

function updateDripper1_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    dripper1Address = arg1
    stor33 = arg1
    stor9[address(arg1)] = 1
    stor11[stor27] = 1
    stor10[stor27] = 1
    emit Dripper1Updated(dripper1Address, arg1);
    return 1
}

function updateCreamery_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    creameryAddress = arg1
    stor31 = arg1
    stor9[address(arg1)] = 1
    stor11[address(arg1)] = 1
    stor10[address(arg1)] = 1
    emit CreameryUpdated(creameryAddress, arg1);
    return 1
}

function updateDripper0_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    dripper0Address = arg1
    stor32 = arg1
    stor9[address(arg1)] = 1
    stor11[address(arg1)] = 1
    stor10[address(arg1)] = 1
    emit Dripper0Updated(dripper0Address, arg1);
    return 1
}

function addAllowance_OB(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if allowance[address(arg1)][address(arg2)] > !arg3:
        revert with 0, 17
    allowance[address(arg1)][address(arg2)] += arg3
    emit Approval(arg3, arg1, arg2);
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(this.address)
    call this.address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_9d5e15ae(?) {
    return bool(uint8(stor36.field_200)), 
           bool(uint8(stor36.field_208)),
           bool(uint8(stor36.field_216)),
           bool(uint8(stor36.field_224)),
           bool(uint8(stor36.field_232)),
           bool(uint8(stor36.field_240)),
           bool(uint8(stor36.field_248)),
           bool(uint8(stor37.field_0)),
           bool(uint8(stor37.field_8)),
           bool(uint8(stor37.field_16)),
           bool(uint8(stor37.field_24)),
           bool(uint8(stor37.field_32))
}

function sub_6b120df3(?) {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    Mask(96, 0, stor12.field_0) = 0xcb204b000640190015e015e
    stor4 = totalSupply / 20
    uint8(stor36.field_168) = 1
    sub_8de890bd = block.number
    launchedAtTimestamp = block.timestamp
    require ext_code.size(stor31)
    call stor31.0x22ac0f04 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    45,
                    0xfe464c41564f52533a2043616e6e6f7420446563726561736520416c6c6f77616e63652042656c6f77205a6572, mem[173 len 19] >> 104,
                    0
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setSwapThreshold_OA(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(address(stor36.field_0))
    staticcall address(stor36.field_0).isAuthorized(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FLAVORS: onlyAuthorized => caller not Authorized'
    swapThreshold = arg1
}

function updateShares_OB(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bridgeAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyBridge => caller not bridge'
    if not stor11[address(arg1)]:
        require ext_code.size(stor32)
        call stor32.0x35ecb621 with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    if not stor11[address(arg1)]:
        require ext_code.size(stor33)
        call stor33.0x35ecb621 with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
}

function addLiquidityETH(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor30)
    call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value arg2 wei
         gas gas_remaining wei
        args 0, uint32(this.address), arg1, 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit LiquidityAdded(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]);
    return ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]
}

function setGas(uint32 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(address(stor36.field_0))
    staticcall address(stor36.field_0).isAuthorized(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FLAVORS: onlyAuthorized => caller not Authorized'
    uint32(stor12.field_96) = arg1
    uint32(stor12.field_128) = arg2
    uint32(stor12.field_160) = arg3
    uint32(stor12.field_192) = arg4
    uint32(stor12.field_224) = arg5
    emit GasUpdated(arg1 << 224, arg2 << 224, arg3 << 224, arg4 << 224, arg5);
}

function sub_c1e511c6(?) {
    if iceCreamManAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyIceCreamMan => caller not iceCreamMan'
    mem[128] = this.address
    mem[160] = wrappedNativeAddress
    if balanceOf[this.address] and 50 > -1 / balanceOf[this.address]:
        revert with 0, 17
    mem[192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
    mem[196] = 50 * balanceOf[this.address] / 100
    idx = 0
    s = 388
    t = 128
    while idx < 2:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor30)
    call stor30.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 50 * balanceOf[this.address] / 100, 0, 160, address(this.address), block.timestamp, 2, mem[388 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function updateOwnable_OAD(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    ownableAddress = arg1
    address(stor36.field_0) = arg1
    require ext_code.size(arg1)
    call arg1.upgrade(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9, address arg10, address arg11, address arg12) with:
         gas gas_remaining wei
        args 0, uint32(stor15), iceCreamManAddress, bridgeAddress, flavor0Address, flavor1Address, dripper0Address, dripper1Address, creameryAddress, bridgeTrollAddress, address(this.address), flavorsChainDataAddress, pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor9[address(arg1)] = 1
    stor11[address(arg1)] = 1
    emit OwnableFlavorsUpdated(ownableAddress, arg1);
}

function sub_6c95d950(?) {
    require calldata.size - 4 >= 384
    require arg1 == bool(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 == bool(arg5)
    require arg6 == bool(arg6)
    require arg7 == bool(arg7)
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    require arg10 == bool(arg10)
    require arg11 == bool(arg11)
    require arg12 == bool(arg12)
    stor36.field_200 % 72057594037927936 = bool(arg1) % 72057594037927936
    stor36.field_208 % 281474976710656 = bool(arg2) % 281474976710656
    stor36.field_216 % 1099511627776 = bool(arg3) % 1099511627776
    uint32(stor36.field_224) = uint32(bool(arg4))
    stor36.field_232 % 16777216 = bool(arg5) % 16777216
    uint16(stor36.field_240) = uint16(bool(arg6))
    uint8(stor36.field_248) = uint8(bool(arg7))
    uint8(stor37.field_0) = uint8(bool(arg8))
    Mask(248, 0, stor37.field_8) = Mask(248, 0, bool(arg9))
    Mask(240, 0, stor37.field_16) = Mask(240, 0, bool(arg10))
    Mask(232, 0, stor37.field_24) = Mask(232, 0, bool(arg11))
    Mask(224, 0, stor37.field_32) = Mask(224, 0, bool(arg12))
}

function sub_a799aec7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if iceCreamManAddress != msg.sender:
        if address(owner) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'FLAVORS: onlyAdmin => caller not IceCreamMan or Owner'
    stor11[address(arg1)] = uint8(bool(arg2))
    if arg2:
        require ext_code.size(stor32)
        call stor32.0x35ecb621 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor33)
        call stor33.0x35ecb621 with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        if not stor11[address(arg1)]:
            require ext_code.size(stor32)
            call stor32.0x35ecb621 with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
        if not stor11[address(arg1)]:
            require ext_code.size(stor33)
            call stor33.0x35ecb621 with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
}

function setFees_OA(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require ext_code.size(address(stor36.field_0))
    staticcall address(stor36.field_0).isAuthorized(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'FLAVORS: onlyAuthorized => caller not Authorized'
    if arg1 > 1000:
        revert with 0, 'FLAVORS: setFees => fee_flavor0_ MUST BE LESS THAN 10% (1000)'
    if arg2 > 1000:
        revert with 0, 'FLAVORS: setFees => fee_flavor1_ MUST BE LESS THAN 10% (1000)'
    if arg3 > 1000:
        revert with 0, 'FLAVORS: setFees => fee_creamery_ MUST BE LESS THAN 10% (1000)'
    if 100 > arg4:
        revert with 0, 'FLAVORS: setFees => fee_icm_ MUST BE BETWEEN 1% (100) & 3% (300)'
    if arg4 > 300:
        revert with 0, 'FLAVORS: setFees => fee_icm_ MUST BE BETWEEN 1% (100) & 3% (300)'
    if arg5 > 4000:
        revert with 0, 'FLAVORS: setFees => fee_total_sell_ MUST BE LESS THAN 40% (4000)'
    uint16(stor12.field_0) = arg1
    uint16(stor12.field_16) = arg2
    uint16(stor12.field_32) = arg3
    uint16(stor12.field_48) = arg4
    if arg1 > -arg2 + 65535:
        revert with 0, 17
    if uint16(arg2 + arg1) > -arg3 + 65535:
        revert with 0, 17
    if uint16(arg3 + uint16(arg2 + arg1)) > -arg4 + 65535:
        revert with 0, 17
    uint16(stor12.field_64) = uint16(arg4 + uint16(arg3 + uint16(arg2 + arg1)))
    uint16(stor12.field_80) = arg5
    emit FeesUpdated(uint16(stor12.field_0), uint16(stor12.field_0), uint16(stor12.field_0), uint16(stor12.field_0), arg4 + uint16(arg3 + uint16(arg2 + arg1)) << 240, arg5);
}

function updateRouter_OO(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if ownableAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FLAVORS: onlyOwnable => caller not ownableFlavors'
    routerAddress = arg1
    stor30 = arg1
    require ext_code.size(this.address)
    call this.address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor11[address(arg1)] = 1
    emit RouterUpdated(routerAddress, arg1);
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args wrappedNativeAddress, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stor29 = ext_call.return_data[12 len 20]
    pairAddress = ext_call.return_data[12 len 20]
    stor8[ext_call.return_data[12 len 20]] = 1
    require ext_code.size(this.address)
    call this.address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pairAddress, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor11[stor24] = 1
    emit PoolDeployed(pairAddress, arg1, wrappedNativeAddress);
    return pairAddress
}

function name() {
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor0.length):
            if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor0.length):
                if 31 < uint255(stor0.length) * 0.5:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor0.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        else:
            if bool(stor0.length) == stor0.length.field_1 < 32:
                revert with 0, 34
            if stor0.length.field_1:
                if 31 < stor0.length.field_1:
                    mem[128] = uint256(stor0.field_0)
                    idx = 128
                    s = 0
                    while stor0.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor0[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)])
                mem[128] = 256 * stor0.length.field_8
        mem[ceil32(uint255(stor0.length) * 0.5) + 192 len ceil32(uint255(stor0.length) * 0.5)] = mem[128 len ceil32(uint255(stor0.length) * 0.5)]
        if ceil32(uint255(stor0.length) * 0.5) > uint255(stor0.length) * 0.5:
            mem[(uint255(stor0.length) * 0.5) + ceil32(uint255(stor0.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor0.length), data=mem[128 len ceil32(uint255(stor0.length) * 0.5)], mem[(2 * ceil32(uint255(stor0.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor0.length) * 0.5)]), 
    if bool(stor0.length) == stor0.length.field_1 < 32:
        revert with 0, 34
    if bool(stor0.length):
        if bool(stor0.length) == uint255(stor0.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor0.length):
            if 31 < uint255(stor0.length) * 0.5:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while (uint255(stor0.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    else:
        if bool(stor0.length) == stor0.length.field_1 < 32:
            revert with 0, 34
        if stor0.length.field_1:
            if 31 < stor0.length.field_1:
                mem[128] = uint256(stor0.field_0)
                idx = 128
                s = 0
                while stor0.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor0[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)])
            mem[128] = 256 * stor0.length.field_8
    mem[ceil32(stor0.length.field_1) + 192 len ceil32(stor0.length.field_1)] = mem[128 len ceil32(stor0.length.field_1)]
    if ceil32(stor0.length.field_1) > stor0.length.field_1:
        mem[stor0.length.field_1 + ceil32(stor0.length.field_1) + 192] = 0
    return Array(len=stor0.length % 128, data=mem[128 len ceil32(stor0.length.field_1)], mem[(2 * ceil32(stor0.length.field_1)) + 192 len 2 * ceil32(stor0.length.field_1)]), 
}

function symbol() {
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor1.length):
            if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor1.length):
                if 31 < uint255(stor1.length) * 0.5:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor1.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        else:
            if bool(stor1.length) == stor1.length.field_1 < 32:
                revert with 0, 34
            if stor1.length.field_1:
                if 31 < stor1.length.field_1:
                    mem[128] = uint256(stor1.field_0)
                    idx = 128
                    s = 0
                    while stor1.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor1[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)])
                mem[128] = 256 * stor1.length.field_8
        mem[ceil32(uint255(stor1.length) * 0.5) + 192 len ceil32(uint255(stor1.length) * 0.5)] = mem[128 len ceil32(uint255(stor1.length) * 0.5)]
        if ceil32(uint255(stor1.length) * 0.5) > uint255(stor1.length) * 0.5:
            mem[(uint255(stor1.length) * 0.5) + ceil32(uint255(stor1.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor1.length), data=mem[128 len ceil32(uint255(stor1.length) * 0.5)], mem[(2 * ceil32(uint255(stor1.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor1.length) * 0.5)]), 
    if bool(stor1.length) == stor1.length.field_1 < 32:
        revert with 0, 34
    if bool(stor1.length):
        if bool(stor1.length) == uint255(stor1.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor1.length):
            if 31 < uint255(stor1.length) * 0.5:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while (uint255(stor1.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    else:
        if bool(stor1.length) == stor1.length.field_1 < 32:
            revert with 0, 34
        if stor1.length.field_1:
            if 31 < stor1.length.field_1:
                mem[128] = uint256(stor1.field_0)
                idx = 128
                s = 0
                while stor1.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor1[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)])
            mem[128] = 256 * stor1.length.field_8
    mem[ceil32(stor1.length.field_1) + 192 len ceil32(stor1.length.field_1)] = mem[128 len ceil32(stor1.length.field_1)]
    if ceil32(stor1.length.field_1) > stor1.length.field_1:
        mem[stor1.length.field_1 + ceil32(stor1.length.field_1) + 192] = 0
    return Array(len=stor1.length % 128, data=mem[128 len ceil32(stor1.length.field_1)], mem[(2 * ceil32(stor1.length.field_1)) + 192 len 2 * ceil32(stor1.length.field_1)]), 
}

function _fallback() payable {
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVORS: creamAndFreeze => value must be greater than zero'
    require ext_code.size(stor29)
    staticcall stor29.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor29)
    staticcall stor29.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor29)
    call stor29.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor29)
    staticcall stor29.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    emit GetReserves(ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64]));
    if address(ext_call.return_data[0]) != this.address:
        if address(ext_call.return_data[0]) != this.address:
            emit TokenPrice(0);
            revert with 0, 18
        if wrappedNativeAddress != address(ext_call.return_data[0]):
            emit TokenPrice(0);
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        emit TokenPrice((Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])));
        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        totalSupply += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(stor30)
        call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value msg.value wei
             gas gas_remaining wei
            args this.address, msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
    else:
        if wrappedNativeAddress == address(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            emit TokenPrice((Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])));
            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            totalSupply += msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor30)
            call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
        else:
            if address(ext_call.return_data[0]) != this.address:
                emit TokenPrice(0);
                revert with 0, 18
            if wrappedNativeAddress != address(ext_call.return_data[0]):
                emit TokenPrice(0);
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            emit TokenPrice((Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])));
            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            totalSupply += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor30)
            call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit LiquidityAdded(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]);
    require ext_code.size(stor29)
    call stor29.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pairAddress, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args 0, ext_call.return_data[64] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[64] and uint16(stor12.field_48) > -1 / ext_call.return_data[64]:
        revert with 0, 17
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args iceCreamManAddress, ext_call.return_data[64] * uint16(stor12.field_48) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args creameryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function creamAndFreeze() payable {
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FLAVORS: creamAndFreeze => value must be greater than zero'
    require ext_code.size(stor29)
    staticcall stor29.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor29)
    staticcall stor29.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(stor29)
    call stor29.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor29)
    staticcall stor29.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    emit GetReserves(ext_call.return_data[18 len 14], ext_call.return_data[32] << 144, uint32(ext_call.return_data[64]));
    if address(ext_call.return_data[0]) != this.address:
        if address(ext_call.return_data[0]) != this.address:
            emit TokenPrice(0);
            revert with 0, 18
        if wrappedNativeAddress != address(ext_call.return_data[0]):
            emit TokenPrice(0);
            revert with 0, 18
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        emit TokenPrice((Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])));
        if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
            revert with 0, 18
        if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        totalSupply += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
            revert with 0, 17
        balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
        require ext_code.size(stor30)
        call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
           value msg.value wei
             gas gas_remaining wei
            args this.address, msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
    else:
        if wrappedNativeAddress == address(ext_call.return_data[0]):
            if not Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            emit TokenPrice((Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])));
            if not Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]):
                revert with 0, 18
            if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            totalSupply += msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])):
                revert with 0, 17
            balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0])
            require ext_code.size(stor30)
            call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, msg.value / Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]), 0, 0, this.address, block.timestamp
        else:
            if address(ext_call.return_data[0]) != this.address:
                emit TokenPrice(0);
                revert with 0, 18
            if wrappedNativeAddress != address(ext_call.return_data[0]):
                emit TokenPrice(0);
                revert with 0, 18
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            emit TokenPrice((Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])));
            if not Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]):
                revert with 0, 18
            if totalSupply > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            totalSupply += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            if balanceOf[address(this.address)] > !(msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])):
                revert with 0, 17
            balanceOf[address(this.address)] += msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32])
            require ext_code.size(stor30)
            call stor30.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value msg.value wei
                 gas gas_remaining wei
                args this.address, msg.value / Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]), 0, 0, this.address, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit LiquidityAdded(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64]);
    require ext_code.size(stor29)
    call stor29.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args pairAddress, ext_call.return_data[64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args 0, ext_call.return_data[64] / 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[64] and uint16(stor12.field_48) > -1 / ext_call.return_data[64]:
        revert with 0, 17
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args iceCreamManAddress, ext_call.return_data[64] * uint16(stor12.field_48) / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(stor29)
    staticcall stor29.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor29)
    call stor29.0xa9059cbb with:
         gas gas_remaining wei
        args creameryAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
