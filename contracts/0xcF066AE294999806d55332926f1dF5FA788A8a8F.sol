contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 stor0;
address stor1;
address stor2;
address lastTokenBorrowAddress;
uint256 lastAmount;
address lastTokenPayAddress;
uint256 lastamountToRepay;
array of uint256 lastUserData;

function lastUserData() {
    return lastUserData[0 len lastUserData.length]
}

function lastTokenBorrow() {
    return lastTokenBorrowAddress
}

function lastamountToRepay() {
    return lastamountToRepay
}

function lastTokenPay() {
    return lastTokenPayAddress
}

function lastAmount() {
    return lastAmount
}

function _fallback() payable {
  stop
}

function getBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return eth.balance(this.address)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function flashSwap(address arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    if arg1:
        if not arg3:
            if arg1 == stor1:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[294 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if arg1 == address(ext_call.return_data[0]):
                    if arg1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, arg2, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 1, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 1, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if arg1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 1, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 1, 256, 288, 0, 64, address(this.address), 1234
            else:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(arg1), stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor1 == stor1:
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    if arg1 == address(ext_call.return_data[0]):
                        if arg1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, stor1, 0, 1, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 384, 1, address(arg1), arg2, stor1, 0, 1, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        if arg1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, stor1, 0, 1, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, address(arg1), arg2, stor1, 0, 1, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 32, 40, 0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
                    require ext_code.size(arg1)
                    staticcall arg1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg2:
                        revert with 0, '_amount is too big'
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require (997 * ext_call.return_data[0]) - (997 * arg2)
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    if stor1 == address(ext_call.return_data[0]):
                        if stor1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, address(arg1), arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, 0, address(this.address), 128, 448, 2, address(arg1), arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                    else:
                        if stor1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, address(arg1), arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 448, 2, address(arg1), arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
        else:
            if arg1 == arg3:
                if arg1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), stor2
                else:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[294 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if arg1 == address(ext_call.return_data[0]):
                    if arg1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, arg2, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if arg1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, address(arg1), arg2, address(arg1), 0, 0, 256, 288, 0, 64, address(this.address), 1234
            else:
                if arg1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    if arg1 == address(ext_call.return_data[0]):
                        if arg1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        if arg1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if arg3 == stor1:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        if arg1 == address(ext_call.return_data[0]):
                            if arg1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            if arg1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 384, 1, address(arg1), arg2, address(arg3), 0, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 32, 40, 0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg3), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
                        require ext_code.size(arg1)
                        staticcall arg1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg2:
                            revert with 0, '_amount is too big'
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, address(arg1), arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, 0, address(this.address), 128, 448, 2, address(arg1), arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, address(arg1), arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 448, 2, address(arg1), arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
    else:
        if not arg3:
            if stor1 == stor1:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[294 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, arg2, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 1, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 1, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 1, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 1, 256, 288, 0, 64, address(this.address), 1234
            else:
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 32, 40, 0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg2:
                    revert with 0, '_amount is too big'
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require (997 * ext_call.return_data[0]) - (997 * arg2)
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, stor1, arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, 0, address(this.address), 128, 448, 2, stor1, arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, stor1, arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 448, 2, stor1, arg2, stor1, 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
        else:
            if stor1 == arg3:
                if stor1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor2
                else:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                if not address(stor0):
                    revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[294 len 30]
                require ext_code.size(address(stor0))
                staticcall address(stor0).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                staticcall address(stor0).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(stor0))
                if stor1 == address(ext_call.return_data[0]):
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, arg2, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args arg2, 0, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 0, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if stor1 == ext_call.return_data[12 len 20]:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, arg2, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 384, 0, stor1, arg2, stor1, 1, 0, 256, 288, 0, 64, address(this.address), 1234
            else:
                if stor1 == stor1:
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                    if not address(stor0):
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    staticcall address(stor0).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(stor0))
                    if stor1 == address(ext_call.return_data[0]):
                        if stor1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, arg2, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args arg2, 0, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        if stor1 == ext_call.return_data[12 len 20]:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, arg2, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                else:
                    if arg3 == stor1:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, arg2, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args arg2, 0, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, arg2, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 384, 1, stor1, arg2, address(arg3), 1, 0, 256, 288, 0, 64, address(this.address), 1234
                    else:
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 32, 40, 0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg3), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg2:
                            revert with 0, '_amount is too big'
                        require ext_code.size(stor1)
                        staticcall stor1.0x70a08231 with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0])
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        staticcall address(stor0).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(stor0))
                        if stor1 == address(ext_call.return_data[0]):
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, stor1, arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, 0, address(this.address), 128, 448, 2, stor1, arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                        else:
                            if stor1 == ext_call.return_data[12 len 20]:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1, address(this.address), 128, 448, 2, stor1, arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
                            else:
                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 448, 2, stor1, arg2, address(arg3), 0, 0, 256, 352, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1 >> 256, 64, address(this.address), 1234
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
