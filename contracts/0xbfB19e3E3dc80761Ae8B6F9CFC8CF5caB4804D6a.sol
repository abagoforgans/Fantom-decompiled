contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const getBalanceOf = ext_call.return_data[0]


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_805c195d(?) payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a4a48034(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x2e1a7d4d with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a6a6dfac(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.deposit() with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_0dd84faa(?) {
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'no monies to rug'
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_a38b9b7b(?) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'not owner'
    mem[96] = 2
    mem[192] = 2
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg4), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg2
    mem[160] = arg3
    mem[224] = arg3
    mem[256] = arg2
    mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[292] = arg1
    mem[324] = 64
    mem[356] = 2
    mem[388 len 0] = None
    require ext_code.size(arg4)
    staticcall arg4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[388 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 288
    require return_data.size >= 32
    _63 = mem[288 len 4], Mask(224, 32, arg1) >> 32
    require mem[288 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[288 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg1) >> 32 + 288]
    _66 = mem[_63 + 288]
    mem[ceil32(return_data.size) + 320 len floor32(mem[_63 + 288])] = mem[_63 + 320 len floor32(mem[_63 + 288])]
    require 1 < mem[ceil32(return_data.size) + 288]
    if mem[ceil32(return_data.size) + 352] <= 0:
        revert with 0, 'bad trade'
    mem[(32 * _66) + ceil32(return_data.size) + 320] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _66) + ceil32(return_data.size) + 324] = arg1
    mem[(32 * _66) + ceil32(return_data.size) + 356] = 0
    mem[(32 * _66) + ceil32(return_data.size) + 420] = this.address
    mem[(32 * _66) + ceil32(return_data.size) + 452] = block.timestamp + 30
    mem[(32 * _66) + ceil32(return_data.size) + 388] = 160
    mem[(32 * _66) + ceil32(return_data.size) + 484] = 2
    mem[(32 * _66) + ceil32(return_data.size) + 516 len 0] = None
    require ext_code.size(arg4)
    call arg4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * _66) + ceil32(return_data.size) + 516 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _66) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _66) + (2 * ceil32(return_data.size)) + 320
    require return_data.size >= 32
    _144 = mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * _66) + ceil32(return_data.size) + 320] <= 4294967296 and mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * _66) + ceil32(return_data.size) + 320]) + 32 <= return_data.size
    mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320] = mem[mem[(32 * _66) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg1) >> 32 + (32 * _66) + ceil32(return_data.size) + 320]
    _147 = mem[_144 + (32 * _66) + ceil32(return_data.size) + 320]
    mem[(32 * _66) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[_144 + (32 * _66) + ceil32(return_data.size) + 320])] = mem[_144 + (32 * _66) + ceil32(return_data.size) + 352 len floor32(mem[_144 + (32 * _66) + ceil32(return_data.size) + 320])]
    require 1 < mem[(32 * _66) + (2 * ceil32(return_data.size)) + 320]
    _172 = mem[(32 * _66) + (2 * ceil32(return_data.size)) + 384]
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), mem[(32 * _66) + (2 * ceil32(return_data.size)) + 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 356] = _172
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 388] = 0
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 452] = this.address
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 484] = block.timestamp + 30
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 420] = 160
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 516] = 2
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 548 len 0] = None
    require ext_code.size(arg5)
    call arg5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _172, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 548 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _147) + (32 * _66) + (4 * ceil32(return_data.size)) + 352
    require return_data.size >= 32
    _195 = mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32
    require mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 <= 4294967296
    require mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352] <= 4294967296 and mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 + (32 * mem[mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352]) + 32 <= return_data.size
    mem[(32 * _147) + (32 * _66) + (4 * ceil32(return_data.size)) + 352] = mem[mem[(32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352 len 4], Mask(224, 32, _172) >> 32 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352]
    mem[(32 * _147) + (32 * _66) + (4 * ceil32(return_data.size)) + 384 len floor32(mem[_195 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352])] = mem[_195 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[_195 + (32 * _147) + (32 * _66) + (2 * ceil32(return_data.size)) + 352])]
    require 1 < mem[(32 * _147) + (32 * _66) + (4 * ceil32(return_data.size)) + 352]
    if mem[(32 * _147) + (32 * _66) + (4 * ceil32(return_data.size)) + 416] <= arg1:
        revert with 0, 'lose monies'
}

function sub_25f15a4d(?) {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'not owner'
    mem[96] = 2
    mem[192] = 2
    mem[288] = 2
    require ext_code.size(arg2)
    call arg2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg5), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg2
    mem[160] = arg3
    mem[224] = arg3
    mem[256] = arg4
    mem[320] = arg4
    mem[352] = arg2
    mem[384] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[388] = arg1
    mem[420] = 64
    mem[452] = 2
    mem[484 len 0] = None
    require ext_code.size(arg5)
    staticcall arg5.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, Array(len=2, data=mem[484 len 64])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[384 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 384
    require return_data.size >= 32
    _83 = mem[384 len 4], Mask(224, 32, arg1) >> 32
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[384 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384] <= 4294967296 and mem[384 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 384] = mem[mem[384 len 4], Mask(224, 32, arg1) >> 32 + 384]
    _86 = mem[_83 + 384]
    mem[ceil32(return_data.size) + 416 len floor32(mem[_83 + 384])] = mem[_83 + 416 len floor32(mem[_83 + 384])]
    require 1 < mem[ceil32(return_data.size) + 384]
    if mem[ceil32(return_data.size) + 448] <= 0:
        revert with 0, 'bad trade'
    mem[(32 * _86) + ceil32(return_data.size) + 416] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _86) + ceil32(return_data.size) + 420] = arg1
    mem[(32 * _86) + ceil32(return_data.size) + 452] = 0
    mem[(32 * _86) + ceil32(return_data.size) + 516] = this.address
    mem[(32 * _86) + ceil32(return_data.size) + 548] = block.timestamp + 30
    mem[(32 * _86) + ceil32(return_data.size) + 484] = 160
    mem[(32 * _86) + ceil32(return_data.size) + 580] = 2
    mem[(32 * _86) + ceil32(return_data.size) + 612 len 0] = None
    require ext_code.size(arg5)
    call arg5.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg1, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * _86) + ceil32(return_data.size) + 612 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _86) + ceil32(return_data.size) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _86) + (2 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    _198 = mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * _86) + ceil32(return_data.size) + 416] <= 4294967296 and mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * _86) + ceil32(return_data.size) + 416]) + 32 <= return_data.size
    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 416] = mem[mem[(32 * _86) + ceil32(return_data.size) + 416 len 4], Mask(224, 32, arg1) >> 32 + (32 * _86) + ceil32(return_data.size) + 416]
    _201 = mem[_198 + (32 * _86) + ceil32(return_data.size) + 416]
    mem[(32 * _86) + (2 * ceil32(return_data.size)) + 448 len floor32(mem[_198 + (32 * _86) + ceil32(return_data.size) + 416])] = mem[_198 + (32 * _86) + ceil32(return_data.size) + 448 len floor32(mem[_198 + (32 * _86) + ceil32(return_data.size) + 416])]
    require 1 < mem[(32 * _86) + (2 * ceil32(return_data.size)) + 416]
    _243 = mem[(32 * _86) + (2 * ceil32(return_data.size)) + 480]
    require ext_code.size(arg3)
    call arg3.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg6), mem[(32 * _86) + (2 * ceil32(return_data.size)) + 480]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 452] = _243
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 484] = 0
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 548] = this.address
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 580] = block.timestamp + 30
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 516] = 160
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 612] = 2
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 644 len 0] = None
    require ext_code.size(arg6)
    call arg6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _243, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 644 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 448
    require return_data.size >= 32
    _283 = mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32
    require mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 <= 4294967296
    require mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448] <= 4294967296 and mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 + (32 * mem[mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448]) + 32 <= return_data.size
    mem[(32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 448] = mem[mem[(32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448 len 4], Mask(224, 32, _243) >> 32 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448]
    _286 = mem[_283 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448]
    mem[(32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len floor32(mem[_283 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448])] = mem[_283 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 480 len floor32(mem[_283 + (32 * _201) + (32 * _86) + (2 * ceil32(return_data.size)) + 448])]
    require 1 < mem[(32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 448]
    _311 = mem[(32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 512]
    require ext_code.size(arg4)
    call arg4.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg7), mem[(32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 512]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 484] = _311
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 516] = 0
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 580] = this.address
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 612] = block.timestamp + 30
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 548] = 160
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 644] = 2
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 676 len 0] = None
    require ext_code.size(arg6)
    call arg6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args _311, 0, 160, address(this.address), block.timestamp + 30, 2, mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 676 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _286) + (32 * _201) + (32 * _86) + (6 * ceil32(return_data.size)) + 480
    require return_data.size >= 32
    _334 = mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32
    require mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 <= 4294967296
    require mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480] <= 4294967296 and mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 + (32 * mem[mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480]) + 32 <= return_data.size
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (6 * ceil32(return_data.size)) + 480] = mem[mem[(32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480 len 4], Mask(224, 32, _311) >> 32 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480]
    mem[(32 * _286) + (32 * _201) + (32 * _86) + (6 * ceil32(return_data.size)) + 512 len floor32(mem[_334 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480])] = mem[_334 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 512 len floor32(mem[_334 + (32 * _286) + (32 * _201) + (32 * _86) + (4 * ceil32(return_data.size)) + 480])]
    require 1 < mem[(32 * _286) + (32 * _201) + (32 * _86) + (6 * ceil32(return_data.size)) + 480]
    if mem[(32 * _286) + (32 * _201) + (32 * _86) + (6 * ceil32(return_data.size)) + 544] <= arg1:
        revert with 0, 'lose monies'
}



}
