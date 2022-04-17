contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor0 = arg1
}

function withdrawEth() {
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Sender not authorized.'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_8788d082(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    require ('cd', 4).length >= 320
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == address(('cd', 4)[4])
    require ('cd', 4)[5] == address(('cd', 4)[5])
    mem[260 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 260] = 0
    require ext_code.size(address(('cd', 4)[3]))
    if address(('cd', 4)[0]) >= address(('cd', 4)[1]):
        call address(('cd', 4)[3]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, uint32(('cd', 4)[7]), 0, address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 260 len ceil32(('cd', 4).length) - ('cd', 4).length]
    else:
        call address(('cd', 4)[3]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args 0, 0, ('cd', 4)[7], address(this.address), 128, ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 260 len ceil32(('cd', 4).length) - ('cd', 4).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 320
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 164)]), cd[(arg4 + 260)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(cd[(arg4 + 164)]) == address(cd[(arg4 + 196)]):
        require ext_code.size(address(cd[(arg4 + 164)]))
        if address(cd[(arg4 + 68)]) >= address(cd[(arg4 + 36)]):
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)], 0, address(this.address), 128, 0, None
        else:
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)], address(this.address), 128, 0
    else:
        if address(cd[(arg4 + 68)]) < address(cd[(arg4 + 100)]):
            require ext_code.size(address(cd[(arg4 + 164)]))
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)], address(cd[(arg4 + 196)]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 196)]))
            if address(cd[(arg4 + 100)]) >= address(cd[(arg4 + 36)]):
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)], 0, address(this.address), 128, 0, 0
            else:
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)], address(this.address), 128, 0
        else:
            mem[ceil32(return_data.size) + 292 len 0] = None
            require ext_code.size(address(cd[(arg4 + 164)]))
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)], 0, address(cd[(arg4 + 196)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[(arg4 + 100)]) < address(cd[(arg4 + 36)]):
                require ext_code.size(address(cd[(arg4 + 196)]))
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)], address(this.address), 128, 0, None
            else:
                mem[ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 164] = cd[(arg4 + 324)]
                mem[ceil32(return_data.size) + 196] = 0
                mem[ceil32(return_data.size) + 228] = this.address
                mem[ceil32(return_data.size) + 260] = 128
                mem[ceil32(return_data.size) + 292] = 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32
                mem[ceil32(return_data.size) + 324 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)] = mem[ceil32(return_data.size) + 160 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)]
                if ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32) > 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32:
                    mem[ceil32(return_data.size) + 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32 + 324] = 0
                require ext_code.size(address(cd[(arg4 + 196)]))
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)], 0, address(this.address), 128, 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32, mem[ceil32(return_data.size) + 324 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 228)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 320
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(cd[(arg4 + 164)]), cd[(arg4 + 260)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if address(cd[(arg4 + 164)]) == address(cd[(arg4 + 196)]):
        require ext_code.size(address(cd[(arg4 + 164)]))
        if address(cd[(arg4 + 68)]) >= address(cd[(arg4 + 36)]):
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)], 0, address(this.address), 128, 0, None
        else:
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)], address(this.address), 128, 0
    else:
        if address(cd[(arg4 + 68)]) < address(cd[(arg4 + 100)]):
            require ext_code.size(address(cd[(arg4 + 164)]))
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)], address(cd[(arg4 + 196)]), 128, 0, None
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 196)]))
            if address(cd[(arg4 + 100)]) >= address(cd[(arg4 + 36)]):
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)], 0, address(this.address), 128, 0, 0
            else:
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)], address(this.address), 128, 0
        else:
            mem[ceil32(return_data.size) + 292 len 0] = None
            require ext_code.size(address(cd[(arg4 + 164)]))
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)], 0, address(cd[(arg4 + 196)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if address(cd[(arg4 + 100)]) < address(cd[(arg4 + 36)]):
                require ext_code.size(address(cd[(arg4 + 196)]))
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)], address(this.address), 128, 0, None
            else:
                mem[ceil32(return_data.size) + 160] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 164] = cd[(arg4 + 324)]
                mem[ceil32(return_data.size) + 196] = 0
                mem[ceil32(return_data.size) + 228] = this.address
                mem[ceil32(return_data.size) + 260] = 128
                mem[ceil32(return_data.size) + 292] = 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32
                mem[ceil32(return_data.size) + 324 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)] = mem[ceil32(return_data.size) + 160 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)]
                if ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32) > 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32:
                    mem[ceil32(return_data.size) + 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32 + 324] = 0
                require ext_code.size(address(cd[(arg4 + 196)]))
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)], 0, address(this.address), 128, 0, Mask(224, 32, cd[(arg4 + 292)]) >> 32, mem[ceil32(return_data.size) + 324 len ceil32(0, Mask(224, 32, cd[(arg4 + 292)]) >> 32)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, cd[(arg4 + 228)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
