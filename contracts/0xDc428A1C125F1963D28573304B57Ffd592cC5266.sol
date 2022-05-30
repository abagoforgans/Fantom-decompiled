contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_6a9eef49Address;
address sub_dd280bdcAddress;
address sub_c5acd6b7Address;
uint256 profit;
uint256 balance0;
uint256 balance1;
uint256 sub_323c9332;
uint256 sub_3d6012a7;
uint256 sub_701f6b82;
address stor10;
address sub_1e0ec341Address;

function router1() {
    return sub_6a9eef49Address
}

function sub_08b9cdc4(?) {
    return sub_c5acd6b7Address
}

function sub_1e0ec341(?) {
    return sub_1e0ec341Address
}

function sub_323c9332(?) {
    return sub_323c9332
}

function sub_3d6012a7(?) {
    return sub_3d6012a7
}

function getBalance1() {
    return balance1
}

function getBalance0() {
    return balance0
}

function getProfit() {
    return profit
}

function sub_6a9eef49(?) {
    return sub_6a9eef49Address
}

function sub_701f6b82(?) {
    return sub_701f6b82
}

function router2() {
    return sub_dd280bdcAddress
}

function sub_c5acd6b7(?) {
    return sub_c5acd6b7Address
}

function sub_dd280bdc(?) {
    return sub_dd280bdcAddress
}

function _fallback() payable {
  stop
}

function sub_af538780(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    sub_c5acd6b7Address = arg1
}

function sub_d08429a9(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    sub_6a9eef49Address = arg1
}

function sub_e3532f2f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    sub_dd280bdcAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function swap2(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor0
    if stor10 == arg1:
        revert with 0, '!!! NULL token'
    if stor10 == sub_6a9eef49Address:
        revert with 0, '!!! NULL router1'
    if stor10 == sub_dd280bdcAddress:
        revert with 0, '!!! NULL router2'
    emit 0x1206790b: 96, 160, msg.value, 5, 'swap2', 5, 'start'
    balance0 = msg.value
    mem[96] = 2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 100
    mem[260] = this.address
    mem[292] = block.timestamp + 3600
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(sub_6a9eef49Address)
    call sub_6a9eef49Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 100, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _69 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _72 = mem[_69 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_69 + 192])] = mem[_69 + 224 len floor32(mem[_69 + 192])]
    mem[128] = arg1
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    mem[(32 * _72) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require 1 < mem[ceil32(return_data.size) + 192]
    _121 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 228] = sub_dd280bdcAddress
    mem[(32 * _72) + ceil32(return_data.size) + 260] = _121
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd280bdcAddress, _121
    mem[(32 * _72) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router2 approve() failed'
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _72) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 224] = 96
    mem[(32 * _72) + ceil32(return_data.size) + 256] = 160
    mem[(32 * _72) + ceil32(return_data.size) + 416] = 'swap2'
    emit 0x1206790b: 96, 160, mem[(32 * _72) + ceil32(return_data.size) + 288], 5, 'swap2', 5, 'swap2'
    require 1 < mem[ceil32(return_data.size) + 192]
    _133 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _72) + ceil32(return_data.size) + 228] = _133
    mem[(32 * _72) + ceil32(return_data.size) + 260] = 100
    mem[(32 * _72) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _72) + ceil32(return_data.size) + 356] = block.timestamp + 3600
    mem[(32 * _72) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _72) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _72) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(sub_dd280bdcAddress)
    call sub_dd280bdcAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _133, 100, Array(len=2, data=Mask(224, 0, 'swap2'), mem[(32 * _72) + ceil32(return_data.size) + 448 len 36]), msg.sender, block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _72) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _72) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _156 = mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32
    require mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 <= 4294967296
    require mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224]
    mem[(32 * _72) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_156 + (32 * _72) + ceil32(return_data.size) + 224])] = mem[_156 + (32 * _72) + ceil32(return_data.size) + 256 len floor32(mem[_156 + (32 * _72) + ceil32(return_data.size) + 224])]
    require 1 < mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224]
    balance1 = mem[(32 * _72) + (2 * ceil32(return_data.size)) + 288]
    if balance0 >= balance1:
        revert with 0, '!!! profit = 0'
    profit = balance1 - balance0
    sub_323c9332++
    sub_3d6012a7 += profit
    sub_701f6b82 = block.timestamp
    require 1 < mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224]
    emit 0x1206790b: 96, 160, mem[(32 * _72) + (2 * ceil32(return_data.size)) + 288], 5, 'swap2', 6, 'return'
}

function sub_366e502a(?) payable {
    require calldata.size - 4 >= 96
    require msg.sender == stor0
    sub_6a9eef49Address = arg2
    sub_dd280bdcAddress = arg3
    if stor10 == arg1:
        revert with 0, '!!! NULL token'
    if stor10 == sub_6a9eef49Address:
        revert with 0, '!!! NULL router1'
    if stor10 == sub_dd280bdcAddress:
        revert with 0, '!!! NULL router2'
    emit 0x1206790b: 96, 160, msg.value, 5, 'swap2', 5, 'start'
    balance0 = msg.value
    mem[96] = 2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 100
    mem[260] = this.address
    mem[292] = block.timestamp + 3600
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(sub_6a9eef49Address)
    call sub_6a9eef49Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 100, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _69 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _72 = mem[_69 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_69 + 192])] = mem[_69 + 224 len floor32(mem[_69 + 192])]
    mem[128] = arg1
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    mem[(32 * _72) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require 1 < mem[ceil32(return_data.size) + 192]
    _121 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 228] = sub_dd280bdcAddress
    mem[(32 * _72) + ceil32(return_data.size) + 260] = _121
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd280bdcAddress, _121
    mem[(32 * _72) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router2 approve() failed'
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _72) + ceil32(return_data.size) + 288] = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 224] = 96
    mem[(32 * _72) + ceil32(return_data.size) + 256] = 160
    mem[(32 * _72) + ceil32(return_data.size) + 416] = 'swap2'
    emit 0x1206790b: 96, 160, mem[(32 * _72) + ceil32(return_data.size) + 288], 5, 'swap2', 5, 'swap2'
    require 1 < mem[ceil32(return_data.size) + 192]
    _133 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _72) + ceil32(return_data.size) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _72) + ceil32(return_data.size) + 228] = _133
    mem[(32 * _72) + ceil32(return_data.size) + 260] = 100
    mem[(32 * _72) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _72) + ceil32(return_data.size) + 356] = block.timestamp + 3600
    mem[(32 * _72) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _72) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _72) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(sub_dd280bdcAddress)
    call sub_dd280bdcAddress.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _133, 100, Array(len=2, data=Mask(224, 0, 'swap2'), mem[(32 * _72) + ceil32(return_data.size) + 448 len 36]), msg.sender, block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _72) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _72) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _156 = mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32
    require mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 <= 4294967296
    require mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _72) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _133) >> 32 + (32 * _72) + ceil32(return_data.size) + 224]
    mem[(32 * _72) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_156 + (32 * _72) + ceil32(return_data.size) + 224])] = mem[_156 + (32 * _72) + ceil32(return_data.size) + 256 len floor32(mem[_156 + (32 * _72) + ceil32(return_data.size) + 224])]
    require 1 < mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224]
    balance1 = mem[(32 * _72) + (2 * ceil32(return_data.size)) + 288]
    if balance0 >= balance1:
        revert with 0, '!!! profit = 0'
    profit = balance1 - balance0
    sub_323c9332++
    sub_3d6012a7 += profit
    sub_701f6b82 = block.timestamp
    require 1 < mem[(32 * _72) + (2 * ceil32(return_data.size)) + 224]
    emit 0x1206790b: 96, 160, mem[(32 * _72) + (2 * ceil32(return_data.size)) + 288], 5, 'swap2', 6, 'return'
}

function sub_c2893076(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if stor10 == arg1:
        revert with 0, '!!! NULL token0'
    if stor10 == arg2:
        revert with 0, '!!! NULL token1'
    if stor10 == sub_6a9eef49Address:
        revert with 0, '!!! NULL router1'
    if stor10 == sub_dd280bdcAddress:
        revert with 0, '!!! NULL router2'
    if stor10 == sub_c5acd6b7Address:
        revert with 0, '!!! NULL router3'
    emit 0x1206790b: 96, 160, msg.value, 5, 'swap3', 5, 'start'
    balance0 = msg.value
    mem[96] = 2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 100
    mem[260] = this.address
    mem[292] = block.timestamp + 3600
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(sub_6a9eef49Address)
    call sub_6a9eef49Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 100, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _92 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _95 = mem[_92 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_92 + 192])] = mem[_92 + 224 len floor32(mem[_92 + 192])]
    mem[128] = arg1
    mem[160] = arg2
    require 1 < mem[ceil32(return_data.size) + 192]
    _159 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _95) + ceil32(return_data.size) + 228] = sub_dd280bdcAddress
    mem[(32 * _95) + ceil32(return_data.size) + 260] = _159
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd280bdcAddress, _159
    mem[(32 * _95) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router2 approve() failed'
    require 1 < mem[ceil32(return_data.size) + 192]
    _167 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _95) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _95) + ceil32(return_data.size) + 228] = _167
    mem[(32 * _95) + ceil32(return_data.size) + 260] = 100
    mem[(32 * _95) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _95) + ceil32(return_data.size) + 356] = block.timestamp + 3600
    mem[(32 * _95) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _95) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _95) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(sub_dd280bdcAddress)
    call sub_dd280bdcAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _167, 100, Array(len=2, data=mem[(32 * _95) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _95) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _95) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _217 = mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32
    require mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 <= 4294967296
    require mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224]
    _220 = mem[_217 + (32 * _95) + ceil32(return_data.size) + 224]
    mem[(32 * _95) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_217 + (32 * _95) + ceil32(return_data.size) + 224])] = mem[_217 + (32 * _95) + ceil32(return_data.size) + 256 len floor32(mem[_217 + (32 * _95) + ceil32(return_data.size) + 224])]
    mem[128] = arg2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    _265 = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 260] = sub_c5acd6b7Address
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 292] = _265
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_c5acd6b7Address, _265
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router3 approve() failed'
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    _273 = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 260] = _273
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 292] = 100
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 356] = msg.sender
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 3600
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 324] = 160
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(sub_c5acd6b7Address)
    call sub_c5acd6b7Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _273, 100, Array(len=2, data=mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 452 len 64]), msg.sender, block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _296 = mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32
    require mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 <= 4294967296
    require mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] <= 4294967296 and mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]) + 32 <= return_data.size
    mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]
    _299 = mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]
    mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256])] = mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256])]
    require 1 < mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256]
    balance1 = mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 320]
    if balance0 >= balance1:
        revert with 0, '!!! profit = 0'
    profit = balance1 - balance0
    sub_323c9332++
    sub_3d6012a7 += profit
    sub_701f6b82 = block.timestamp
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _299) + (32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    emit 0x1206790b: 96, 160, mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288], 5, 'swap3', 6, 'return'
}

function sub_da07cd15(?) payable {
    require calldata.size - 4 >= 160
    require msg.sender == stor0
    sub_6a9eef49Address = arg3
    sub_dd280bdcAddress = arg4
    sub_c5acd6b7Address = arg5
    if stor10 == arg1:
        revert with 0, '!!! NULL token0'
    if stor10 == arg2:
        revert with 0, '!!! NULL token1'
    if stor10 == sub_6a9eef49Address:
        revert with 0, '!!! NULL router1'
    if stor10 == sub_dd280bdcAddress:
        revert with 0, '!!! NULL router2'
    if stor10 == sub_c5acd6b7Address:
        revert with 0, '!!! NULL router3'
    emit 0x1206790b: 96, 160, msg.value, 5, 'swap3', 5, 'start'
    balance0 = msg.value
    mem[96] = 2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = arg1
    mem[192] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[196] = 100
    mem[260] = this.address
    mem[292] = block.timestamp + 3600
    mem[228] = 128
    mem[324] = 2
    mem[356 len 0] = None
    require ext_code.size(sub_6a9eef49Address)
    call sub_6a9eef49Address.swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 100, Array(len=2, data=mem[356 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _92 = mem[192 len 4], 0
    require mem[192 len 4], 0 <= 4294967296
    require mem[192 len 4], 0 + 32 <= return_data.size
    require mem[mem[192 len 4], 0 + 192] <= 4294967296 and mem[192 len 4], 0 + (32 * mem[mem[192 len 4], 0 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 0 + 192]
    _95 = mem[_92 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_92 + 192])] = mem[_92 + 224 len floor32(mem[_92 + 192])]
    mem[128] = arg1
    mem[160] = arg2
    require 1 < mem[ceil32(return_data.size) + 192]
    _159 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _95) + ceil32(return_data.size) + 228] = sub_dd280bdcAddress
    mem[(32 * _95) + ceil32(return_data.size) + 260] = _159
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_dd280bdcAddress, _159
    mem[(32 * _95) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router2 approve() failed'
    require 1 < mem[ceil32(return_data.size) + 192]
    _167 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _95) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _95) + ceil32(return_data.size) + 228] = _167
    mem[(32 * _95) + ceil32(return_data.size) + 260] = 100
    mem[(32 * _95) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _95) + ceil32(return_data.size) + 356] = block.timestamp + 3600
    mem[(32 * _95) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _95) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _95) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(sub_dd280bdcAddress)
    call sub_dd280bdcAddress.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _167, 100, Array(len=2, data=mem[(32 * _95) + ceil32(return_data.size) + 420 len 64]), address(this.address), block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _95) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _95) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _217 = mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32
    require mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 <= 4294967296
    require mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _95) + ceil32(return_data.size) + 224 len 4], Mask(224, 32, _167) >> 32 + (32 * _95) + ceil32(return_data.size) + 224]
    _220 = mem[_217 + (32 * _95) + ceil32(return_data.size) + 224]
    mem[(32 * _95) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_217 + (32 * _95) + ceil32(return_data.size) + 224])] = mem[_217 + (32 * _95) + ceil32(return_data.size) + 256 len floor32(mem[_217 + (32 * _95) + ceil32(return_data.size) + 224])]
    mem[128] = arg2
    require ext_code.size(sub_6a9eef49Address)
    staticcall sub_6a9eef49Address.WETH() with:
            gas gas_remaining wei
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[160] = ext_call.return_data[12 len 20]
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    _265 = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 260] = sub_c5acd6b7Address
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 292] = _265
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_c5acd6b7Address, _265
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'router3 approve() failed'
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    _273 = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 260] = _273
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 292] = 100
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 356] = msg.sender
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 388] = block.timestamp + 3600
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 324] = 160
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 420] = 2
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 452 len 0] = None
    require ext_code.size(sub_c5acd6b7Address)
    call sub_c5acd6b7Address.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _273, 100, Array(len=2, data=mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 452 len 64]), msg.sender, block.timestamp + 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _296 = mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32
    require mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 <= 4294967296
    require mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256] <= 4294967296 and mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]) + 32 <= return_data.size
    mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256] = mem[mem[(32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, _273) >> 32 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]
    _299 = mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256]
    mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 288 len floor32(mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256])] = mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 288 len floor32(mem[_296 + (32 * _220) + (32 * _95) + (2 * ceil32(return_data.size)) + 256])]
    require 1 < mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 256]
    balance1 = mem[(32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 320]
    if balance0 >= balance1:
        revert with 0, '!!! profit = 0'
    profit = balance1 - balance0
    sub_323c9332++
    sub_3d6012a7 += profit
    sub_701f6b82 = block.timestamp
    require 1 < mem[(32 * _95) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _299) + (32 * _220) + (32 * _95) + (4 * ceil32(return_data.size)) + 352] = mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288]
    emit 0x1206790b: 96, 160, mem[(32 * _95) + (2 * ceil32(return_data.size)) + 288], 5, 'swap3', 6, 'return'
}



}
