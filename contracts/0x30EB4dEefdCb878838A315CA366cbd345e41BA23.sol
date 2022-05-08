contract main {




// =====================  Runtime code  =====================


address stor1;
address stor3;
address stor4;

function _fallback() payable {
    revert
}

function sub_cff50af5(?) payable {
    mem[96] = 2
    mem[128] = stor1
    mem[160] = stor3
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = 10^18
    mem[228] = 64
    mem[260] = 2
    mem[292 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 10^18, 64, 2, mem[292 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 192
    require return_data.size >= 32
    _25 = mem[192 len 4], 232830643
    require mem[192 len 4], 232830643 <= 4294967296
    require mem[192 len 4], 232830643 + 32 <= return_data.size
    require mem[mem[192 len 4], 232830643 + 192] <= 4294967296 and mem[192 len 4], 232830643 + (32 * mem[mem[192 len 4], 232830643 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 232830643 + 192]
    _28 = mem[_25 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_25 + 192])] = mem[_25 + 224 len floor32(mem[_25 + 192])]
    mem[(32 * _28) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])] = mem[ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 192])]
    emit 0x88fb0d2f: sha3(mem[(32 * _28) + ceil32(return_data.size) + 224 len 32 * mem[ceil32(return_data.size) + 192]])
}



}
