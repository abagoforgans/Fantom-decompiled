contract main {




// =====================  Runtime code  =====================


address stor3;
address stor4;

function _fallback() payable {
    revert
}

function sub_cff50af5(?) payable {
    mem[192] = stor3
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = 1
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 1, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _24 = mem[224 len 4], 0
    require mem[224 len 4], 0 <= 4294967296
    require mem[224 len 4], 0 + 32 <= return_data.size
    require mem[mem[224 len 4], 0 + 224] <= 4294967296 and mem[224 len 4], 0 + (32 * mem[mem[224 len 4], 0 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], 0 + 224]
    _27 = mem[_24 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_24 + 224])] = mem[_24 + 256 len floor32(mem[_24 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    mem[(32 * _27) + ceil32(return_data.size) + 256] = mem[ceil32(return_data.size) + 320]
    return memory
      from (32 * _27) + ceil32(return_data.size) + 256
       len 32
}



}
