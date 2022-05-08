contract main {




// =====================  Runtime code  =====================


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

function sub_a31a74a2(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(stor1)
    call stor1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[192] = stor3
    mem[224] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[228] = arg2
    mem[260] = 64
    mem[292] = 3
    mem[324 len 0] = None
    require ext_code.size(stor4)
    staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg2, Array(len=3, data=mem[324 len 96])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 224
    require return_data.size >= 32
    _28 = mem[224 len 4], Mask(224, 32, arg2) >> 32
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 <= 4294967296
    require mem[224 len 4], Mask(224, 32, arg2) >> 32 + 32 <= return_data.size
    require mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= 4294967296 and mem[224 len 4], Mask(224, 32, arg2) >> 32 + (32 * mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 224] = mem[mem[224 len 4], Mask(224, 32, arg2) >> 32 + 224]
    mem[ceil32(return_data.size) + 256 len floor32(mem[_28 + 224])] = mem[_28 + 256 len floor32(mem[_28 + 224])]
    require 2 < mem[ceil32(return_data.size) + 224]
    emit 0x5c3421eb: mem[ceil32(return_data.size) + 320]
}



}
