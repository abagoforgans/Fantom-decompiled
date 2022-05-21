contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'not owner'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_83d95d5d(?) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'not owner'
    mem[128] = 96
    mem[224] = arg3.length
    mem[256 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 256] = 0
    mem[160] = floor32(arg3.length) + 128
    mem[floor32(arg3.length) + 256] = arg4.length
    mem[floor32(arg3.length) + 288 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[floor32(arg3.length) + (32 * arg4.length) + 288] = 0
    mem[192] = floor32(arg3.length) + floor32(arg4.length) + 160
    mem[floor32(arg3.length) + floor32(arg4.length) + 288] = arg5.length
    mem[floor32(arg3.length) + floor32(arg4.length) + 320 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[floor32(arg3.length) + floor32(arg4.length) + (32 * arg5.length) + 320] = 0
    require ext_code.size(arg1)
    call arg1.flashLoan(address arg1, uint256 arg2, bytes arg3) with:
         gas gas_remaining wei
        args address(this.address), arg2, Array(len=floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + 192, data=mem[128 len floor32(floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + 31) + 6], mem[floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + floor32(floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + 31) + 458 len floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + -floor32(floor32(arg3.length) + floor32(arg4.length) + floor32(arg5.length) + 31) + 186])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeOperation(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[100] = this.address
    require ext_code.size(arg2)
    staticcall arg2.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe496e76616c69642062616c616e63652c207761732074686520666c6173684c6f616e207375636365737366756c,
                    mem[210 len 18]
    require arg5.length >= 96
    require cd[(arg5 + 36)] <= 4294967296
    require cd[(arg5 + 36)] + 68 <= arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 36)] + 36)] <= 4294967296 and cd[(arg5 + 36)] + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 68 <= arg5.length + 36
    mem[96] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    mem[128 len 32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]] = call.data[arg5 + cd[(arg5 + 36)] + 68 len 32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]]
    require cd[(arg5 + 68)] <= 4294967296
    require cd[(arg5 + 68)] + 68 <= arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 68)] + 36)] <= 4294967296 and cd[(arg5 + 68)] + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 68 <= arg5.length + 36
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 128] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 160 len 32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]] = call.data[arg5 + cd[(arg5 + 68)] + 68 len 32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]]
    require cd[(arg5 + 100)] <= 4294967296
    require cd[(arg5 + 100)] + 68 <= arg5.length + 36
    require cd[(arg5 + cd[(arg5 + 100)] + 36)] <= 4294967296 and cd[(arg5 + 100)] + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 68 <= arg5.length + 36
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 160] = cd[(arg5 + cd[(arg5 + 100)] + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192 len 32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]] = call.data[arg5 + cd[(arg5 + 100)] + 68 len 32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = 0
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]), 0
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no success :('
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require ext_code.size(mem[140 len 20])
    call mem[140 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]), arg3
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no success :('
    require 0 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    _31 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 192]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 196] = arg3
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 228] = 1
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 292] = this.address
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 324] = block.timestamp + 1200
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 260] = 160
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 356] = cd[(arg5 + cd[(arg5 + 36)] + 36)]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 388 len floor32(cd[(arg5 + cd[(arg5 + 36)] + 36)])] = call.data[arg5 + cd[(arg5 + 36)] + 68 len floor32(cd[(arg5 + cd[(arg5 + 36)] + 36)])]
    require ext_code.size(address(_31))
    call address(_31).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args arg3, 1, Array(len=cd[(arg5 + cd[(arg5 + 36)] + 36)], data=call.data[arg5 + cd[(arg5 + 36)] + 68 len floor32(cd[(arg5 + cd[(arg5 + 36)] + 36)])], mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + floor32(cd[(arg5 + cd[(arg5 + 36)] + 36)]) + 388 len (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) - floor32(cd[(arg5 + cd[(arg5 + 36)] + 36)])]), address(this.address), block.timestamp + 1200
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 192
    require return_data.size >= 32
    _99 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192] <= 4294967296 and mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192]) + 32 <= return_data.size
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 192] = mem[mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192 len 4], Mask(224, 32, arg3) >> 32 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192]
    _102 = mem[_99 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192]
    mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len floor32(mem[_99 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192])] = mem[_99 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 224 len floor32(mem[_99 + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + 192])]
    require 1 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require ext_code.size(mem[172 len 20])
    staticcall mem[172 len 20].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 1 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 1 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 224]), 0
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no success :('
    require 1 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require 1 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    require ext_code.size(mem[172 len 20])
    call mem[172 len 20].approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 224]), ext_call.return_data[0]
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'no success :('
    require 1 < cd[(arg5 + cd[(arg5 + 100)] + 36)]
    _185 = mem[(32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 224]
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 228] = ext_call.return_data[0]
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 260] = 1
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 324] = this.address
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 356] = block.timestamp + 1200
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 388] = cd[(arg5 + cd[(arg5 + 68)] + 36)]
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 420 len floor32(cd[(arg5 + cd[(arg5 + 68)] + 36)])] = call.data[arg5 + cd[(arg5 + 68)] + 68 len floor32(cd[(arg5 + cd[(arg5 + 68)] + 36)])]
    require ext_code.size(address(_185))
    call address(_185).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 1, Array(len=cd[(arg5 + cd[(arg5 + 68)] + 36)], data=call.data[arg5 + cd[(arg5 + 68)] + 68 len floor32(cd[(arg5 + cd[(arg5 + 68)] + 36)])], mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + floor32(cd[(arg5 + cd[(arg5 + 68)] + 36)]) + 420 len (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) - floor32(cd[(arg5 + cd[(arg5 + 68)] + 36)])]), address(this.address), block.timestamp + 1200
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    require mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
    require mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
    require mem[mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[(32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224 len 4], ext_call.return_data[0 len 28] + (32 * _102) + (32 * cd[(arg5 + cd[(arg5 + 36)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 68)] + 36)]) + (32 * cd[(arg5 + cd[(arg5 + 100)] + 36)]) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    require 0 < cd[(arg5 + cd[(arg5 + 36)] + 36)]
    require ext_code.size(mem[140 len 20])
    staticcall mem[140 len 20].balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'Not positive'
    require ext_code.size(arg2)
    call arg2.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg3 + arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer fund back failed'
}



}
