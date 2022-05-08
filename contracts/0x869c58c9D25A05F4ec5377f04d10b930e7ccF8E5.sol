contract main {




// =====================  Runtime code  =====================


address stor1;

function _fallback() payable {
    revert
}

function sub_1cafd977(?) payable {
    require calldata.size - 4 >= 32
    require 0 < mem[96]
    require 1 < mem[96]
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg1), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
    require ext_code.size(stor1)
    staticcall stor1.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg1, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 32 <= return_data.size
}



}
