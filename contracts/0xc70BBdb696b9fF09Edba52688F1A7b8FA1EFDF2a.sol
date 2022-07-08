contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function _fallback() payable {
    revert
}

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, 'only owner can call'
    stor1[address(arg1)] = uint8(arg2)
}

function withdrawERC20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f479853f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, 'only whiteList can call'
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 100] = address(cd[4])
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 36)[0]))
    call address(('cd', 36)[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 132] = 0
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = ('cd', 36).length
    idx = 0
    s = cd[36] + 36
    t = (4 * ceil32(return_data.size)) + 292
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp + 120
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, ('cd', 36).length, mem[(4 * ceil32(return_data.size)) + 292 len 32 * ('cd', 36).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[(4 * ceil32(return_data.size)) + 100] = this.address
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 100] = address(cd[4])
    mem[(6 * ceil32(return_data.size)) + 132] = ext_call.return_data[0]
    require ext_code.size(address(('cd', 36)[1]))
    call address(('cd', 36)[1]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(cd[4]), ext_call.return_data[0]
    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(7 * ceil32(return_data.size)) + 96] = 2
    if 1 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[1] == address(('cd', 36)[1])
    mem[(7 * ceil32(return_data.size)) + 128] = address(('cd', 36)[1])
    if 0 >= ('cd', 36).length:
        revert with 'NH{q', 50
    require ('cd', 36)[0] == address(('cd', 36)[0])
    mem[(7 * ceil32(return_data.size)) + 160] = address(('cd', 36)[0])
    mem[(7 * ceil32(return_data.size)) + 196] = this.address
    require ext_code.size(address(('cd', 36)[1]))
    staticcall address(('cd', 36)[1]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp > -121:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + 192] = 0x5c11d79500000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 228] = 0
    mem[(8 * ceil32(return_data.size)) + 260] = 160
    mem[(8 * ceil32(return_data.size)) + 356] = 2
    idx = 0
    s = (7 * ceil32(return_data.size)) + 128
    t = (8 * ceil32(return_data.size)) + 388
    while idx < mem[(7 * ceil32(return_data.size)) + 96]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(8 * ceil32(return_data.size)) + 292] = this.address
    mem[(8 * ceil32(return_data.size)) + 324] = block.timestamp + 120
    require ext_code.size(address(cd[4]))
    call address(cd[4]).swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 120, mem[(8 * ceil32(return_data.size)) + 356 len (32 * mem[(7 * ceil32(return_data.size)) + 96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(('cd', 36)[0]))
    staticcall address(('cd', 36)[0]).0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'path[0] balance must > 0'
    stor1[address(msg.sender)] = 0
}



}
