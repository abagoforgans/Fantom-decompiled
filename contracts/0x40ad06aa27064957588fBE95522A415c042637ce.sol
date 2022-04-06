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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg4.length >= 544
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == address(cd[(arg4 + 68)])
    require cd[(arg4 + 100)] == address(cd[(arg4 + 100)])
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] == address(cd[(arg4 + 164)])
    require cd[(arg4 + 196)] == address(cd[(arg4 + 196)])
    require cd[(arg4 + 228)] == Mask(112, 0, cd[(arg4 + 228)])
    require cd[(arg4 + 260)] == Mask(112, 0, cd[(arg4 + 260)])
    require cd[(arg4 + 292)] == Mask(112, 0, cd[(arg4 + 292)])
    require cd[(arg4 + 324)] == Mask(112, 0, cd[(arg4 + 324)])
    require cd[(arg4 + 356)] == Mask(112, 0, cd[(arg4 + 356)])
    require cd[(arg4 + 388)] == Mask(112, 0, cd[(arg4 + 388)])
    require cd[(arg4 + 420)] == Mask(112, 0, cd[(arg4 + 420)])
    require cd[(arg4 + 452)] == Mask(112, 0, cd[(arg4 + 452)])
    require cd[(arg4 + 484)] == Mask(112, 0, cd[(arg4 + 484)])
    require cd[(arg4 + 516)] == Mask(112, 0, cd[(arg4 + 516)])
    require cd[(arg4 + 548)] == uint8(cd[(arg4 + 548)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    if Mask(112, 0, cd[(arg4 + 260)]) <= Mask(112, 0, cd[(arg4 + 292)]):
        call address(cd[(arg4 + 68)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 164)]), Mask(112, 0, cd[(arg4 + 292)])
    else:
        call address(cd[(arg4 + 68)]).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(cd[(arg4 + 164)]), Mask(112, 0, cd[(arg4 + 260)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 164)]))
    if uint8(cd[(arg4 + 548)]) != 1:
        call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 324)] << 144, cd[(arg4 + 356)] << 144, address(this.address), 128, 0
    else:
        call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 324)] << 144, cd[(arg4 + 356)] << 144, address(cd[(arg4 + 196)]), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 196)]))
        call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
             gas gas_remaining wei
            args cd[(arg4 + 388)] << 144, cd[(arg4 + 420)] << 144, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, Mask(112, 0, cd[(arg4 + 228)])
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
    require ('cd', 4).length >= 544
    require ('cd', 4)[0] == address(('cd', 4)[0])
    require ('cd', 4)[1] == address(('cd', 4)[1])
    require ('cd', 4)[2] == address(('cd', 4)[2])
    require ('cd', 4)[3] == address(('cd', 4)[3])
    require ('cd', 4)[4] == address(('cd', 4)[4])
    require ('cd', 4)[5] == address(('cd', 4)[5])
    require ('cd', 4)[6] == Mask(112, 0, ('cd', 4)[6])
    require ('cd', 4)[7] == Mask(112, 0, ('cd', 4)[7])
    require ('cd', 4)[8] == Mask(112, 0, ('cd', 4)[8])
    require ('cd', 4)[9] == Mask(112, 0, ('cd', 4)[9])
    require ('cd', 4)[10] == Mask(112, 0, ('cd', 4)[10])
    require ('cd', 4)[11] == Mask(112, 0, ('cd', 4)[11])
    require ('cd', 4)[12] == Mask(112, 0, ('cd', 4)[12])
    require ('cd', 4)[13] == Mask(112, 0, ('cd', 4)[13])
    require ('cd', 4)[14] == Mask(112, 0, ('cd', 4)[14])
    require ('cd', 4)[15] == Mask(112, 0, ('cd', 4)[15])
    require ('cd', 4)[16] == uint8(('cd', 4)[16])
    require ext_code.size(address(('cd', 4)[3]))
    staticcall address(('cd', 4)[3]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(address(('cd', 4)[4]))
    staticcall address(('cd', 4)[4]).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if not uint8(('cd', 4)[16]):
        if Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ('cd', 4)[13]):
            revert with 0, 'Reserve Discrepancy'
        if ext_call.return_data[18 len 14] != Mask(112, 0, ('cd', 4)[14]):
            revert with 0, 'Reserve Discrepancy'
    else:
        require ext_code.size(address(('cd', 4)[5]))
        staticcall address(('cd', 4)[5]).getReserves() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        if Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ('cd', 4)[13]):
            revert with 0, 'Reserve Discrepancy'
        if Mask(112, 0, ext_call.return_data[0]) != Mask(112, 0, ('cd', 4)[14]):
            revert with 0, 'Reserve Discrepancy'
        if ext_call.return_data[18 len 14] != Mask(112, 0, ('cd', 4)[15]):
            revert with 0, 'Reserve Discrepancy'
    require ext_code.size(address(('cd', 4)[3]))
    call address(('cd', 4)[3]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining wei
        args ('cd', 4)[7] << 144, ('cd', 4)[8] << 144, address(this.address), Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
