contract main {




// =====================  Runtime code  =====================


const bentoBox = 0xf5bce5077908a1b7370b9ae04adc565ebd643966

const MIM = 0x82f0b8b456c1a451378467398982d4834b6829c1


function _fallback() payable {
    revert
}

function swapExact(address arg1, address arg2, address arg3, address arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    return 0
}

function swap(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg3 != 0x587643333d13c7fd4e38cdf894624fde7a23660a:
        revert with 0, 'nopes'
    mem[132] = this.address
    mem[164] = this.address
    mem[196] = 0
    mem[228] = arg5
    require ext_code.size(0xf5bce5077908a1b7370b9ae04adc565ebd643966)
    call 0xf5bce5077908a1b7370b9ae04adc565ebd643966.withdraw(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, 0, address(this.address), address(this.address), 0, arg5
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    mem[ceil32(return_data.size) + 96] = 2
    mem[ceil32(return_data.size) + 128] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    mem[ceil32(return_data.size) + 160] = 0x4068da6c83afcfa0e13ba15a6696662335d5b75
    mem[ceil32(return_data.size) + 196] = this.address
    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    if 100 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = 160
    mem[(2 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 388
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 292] = this.address
    mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 100
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    call 0xf491e7b69e4244ad4002bc14e878a34207e38c29.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _49 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _50 = mem[_49]
    require mem[_49] <= test266151307()
    require _49 + mem[_49] + 31 < _49 + return_data.size
    _51 = mem[_49 + mem[_49]]
    if mem[_49 + mem[_49]] > test266151307():
        revert with 0, 65
    if _49 + ceil32(return_data.size) + (32 * mem[_49 + mem[_49]]) + 32 > test266151307() or (32 * mem[_49 + mem[_49]]) + 32 < 0:
        revert with 0, 65
    mem[64] = _49 + ceil32(return_data.size) + (32 * mem[_49 + mem[_49]]) + 32
    mem[_49 + ceil32(return_data.size)] = _51
    require return_data.size >= _50 + (32 * _51) + 32
    mem[_49 + ceil32(return_data.size) + 32 len 32 * _51] = mem[_49 + _50 + 32 len 32 * _51]
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
    staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _80 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _81 = mem[_80]
    if mem[_80] <= 0:
        revert with 0, 'first swap fail'
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = _81
    mem[mem[64] + 100] = 0
    require ext_code.size(0x2dd7c9371965472e5a5fd28fbe165007c61439e1)
    call 0x2dd7c9371965472e5a5fd28fbe165007c61439e1.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 2, 0, _81, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(0x82f0b8b456c1a451378467398982d4834b6829c1)
    staticcall 0x82f0b8b456c1a451378467398982d4834b6829c1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _90 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_90] <= 0:
        revert with 0, 'second swap fail'
    require ext_code.size(0xf5bce5077908a1b7370b9ae04adc565ebd643966)
    call 0xf5bce5077908a1b7370b9ae04adc565ebd643966.deposit(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args address(arg2), address(this.address), address(arg3), mem[_90], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return 0
}



}
