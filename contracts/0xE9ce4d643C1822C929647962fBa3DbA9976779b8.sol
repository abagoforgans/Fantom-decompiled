contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ad60c6d(?)
#  - sub_2f5e93ce(?)
#  - sub_dc4b7c57(?)
#
address stor0;
address stor1;

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor1 = arg1
}

function sub_e48ad60d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    stor0 = address(arg1)
}

function withdrawEth() {
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    call stor1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawErc20(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 != msg.sender:
        revert with 0, 'Sender not authorized.'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
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
    require cd[(arg4 + 228)] == Mask(112, 0, cd[(arg4 + 228)])
    require cd[(arg4 + 260)] == Mask(112, 0, cd[(arg4 + 260)])
    require cd[(arg4 + 292)] == Mask(112, 0, cd[(arg4 + 292)])
    require cd[(arg4 + 324)] == Mask(112, 0, cd[(arg4 + 324)])
    require ext_code.size(address(cd[(arg4 + 68)]))
    call address(cd[(arg4 + 68)]).0xa9059cbb with:
         gas gas_remaining wei
        args address(cd[(arg4 + 164)]), Mask(112, 0, cd[(arg4 + 260)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 164)]))
    if address(cd[(arg4 + 164)]) == address(cd[(arg4 + 196)]):
        if address(cd[(arg4 + 68)]) >= address(cd[(arg4 + 36)]):
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)] << 144, 0, address(this.address), 128, 0, None
        else:
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)] << 144, address(this.address), 128, 0, None
    else:
        if address(cd[(arg4 + 68)]) >= address(cd[(arg4 + 100)]):
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args cd[(arg4 + 292)] << 144, 0, address(cd[(arg4 + 196)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 196)]))
            if address(cd[(arg4 + 100)]) >= address(cd[(arg4 + 36)]):
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)] << 144, 0, address(this.address), 128, 0, None
            else:
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)] << 144, address(this.address), 128, 0, None
        else:
            call address(cd[(arg4 + 164)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                 gas gas_remaining wei
                args 0, cd[(arg4 + 292)] << 144, address(cd[(arg4 + 196)]), 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 196)]))
            if address(cd[(arg4 + 100)]) >= address(cd[(arg4 + 36)]):
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 324)] << 144, 0, address(this.address), 128, 0, None
            else:
                call address(cd[(arg4 + 196)]).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 324)] << 144, address(this.address), 128, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, Mask(112, 0, cd[(arg4 + 228)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
