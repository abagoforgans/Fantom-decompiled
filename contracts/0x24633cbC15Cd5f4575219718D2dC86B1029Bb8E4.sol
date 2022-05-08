contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function getTokensOut() payable {
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_cff50af5(?) payable {
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor1)
    call stor1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor0, 10^17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 2
    mem[128] = stor1
    mem[160] = stor3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^17
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^17, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _52 = mem[192 len 4], 23283064
    require mem[192 len 4], 23283064 <= 4294967296
    require mem[192 len 4], 23283064 + 32 <= return_data.size
    require mem[mem[192 len 4], 23283064 + 192] <= 4294967296 and mem[192 len 4], 23283064 + (32 * mem[mem[192 len 4], 23283064 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 23283064 + 192]
    _55 = mem[_52 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_52 + 192])] = mem[_52 + 224 len floor32(mem[_52 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    _86 = mem[ceil32(return_data.size) + 256]
    mem[(32 * _55) + ceil32(return_data.size) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _55) + ceil32(return_data.size) + 228] = 10^17
    mem[(32 * _55) + ceil32(return_data.size) + 260] = _86
    mem[(32 * _55) + ceil32(return_data.size) + 324] = msg.sender
    mem[(32 * _55) + ceil32(return_data.size) + 356] = block.timestamp
    mem[(32 * _55) + ceil32(return_data.size) + 292] = 160
    mem[(32 * _55) + ceil32(return_data.size) + 388] = 2
    mem[(32 * _55) + ceil32(return_data.size) + 420 len 0] = None
    require ext_code.size(stor4)
    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 10^17, _86, 160, msg.sender, block.timestamp, 2, mem[(32 * _55) + ceil32(return_data.size) + 420 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _55) + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _55) + (2 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _113 = mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064
    require mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 <= 4294967296
    require mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 + 32 <= return_data.size
    require mem[mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 + (32 * _55) + ceil32(return_data.size) + 224] <= 4294967296 and mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 + (32 * mem[mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 + (32 * _55) + ceil32(return_data.size) + 224]) + 32 <= return_data.size
    mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _55) + ceil32(return_data.size) + 224 len 4], 23283064 + (32 * _55) + ceil32(return_data.size) + 224]
    _116 = mem[_113 + (32 * _55) + ceil32(return_data.size) + 224]
    mem[(32 * _55) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_113 + (32 * _55) + ceil32(return_data.size) + 224])] = mem[_113 + (32 * _55) + ceil32(return_data.size) + 256 len floor32(mem[_113 + (32 * _55) + ceil32(return_data.size) + 224])]
    mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224])] = mem[(32 * _55) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224])]
    emit 0x88fb0d2f: sha3(mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 256 len 32 * mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224]])
    mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 256] = 32
    mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 288] = mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224]
    mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 320 len floor32(mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224])] = mem[(32 * _55) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224])]
    return 32, mem[(32 * _116) + (32 * _55) + (2 * ceil32(return_data.size)) + 288 len (32 * mem[(32 * _55) + (2 * ceil32(return_data.size)) + 224]) + 32], 
}



}
