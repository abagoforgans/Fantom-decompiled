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
    require ext_code.size(stor3)
    call stor3.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 5 * 10^18
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
    _34 = mem[192 len 4], 23283064
    require mem[192 len 4], 23283064 <= 4294967296
    require mem[192 len 4], 23283064 + 32 <= return_data.size
    require mem[mem[192 len 4], 23283064 + 192] <= 4294967296 and mem[192 len 4], 23283064 + (32 * mem[mem[192 len 4], 23283064 + 192]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], 23283064 + 192]
    _37 = mem[_34 + 192]
    mem[ceil32(return_data.size) + 224 len floor32(mem[_34 + 192])] = mem[_34 + 224 len floor32(mem[_34 + 192])]
    require 1 < mem[ceil32(return_data.size) + 192]
    mem[(32 * _37) + ceil32(return_data.size) + 288 len 0] = None
    return Array(len=2, data=mem[(32 * _37) + ceil32(return_data.size) + 288 len 64])
}



}
