contract main {




// =====================  Runtime code  =====================


#
#  - withdrawTokens(address arg1)
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

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if address(stor0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    require arg4.length >= 256
    require cd[(arg4 + 228)] <= 4294967296
    require cd[(arg4 + 228)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= 4294967296 and cd[(arg4 + 228)] + cd[(arg4 + cd[(arg4 + 228)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 228)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 228)] + 36)]] = call.data[arg4 + cd[(arg4 + 228)] + 68 len cd[(arg4 + cd[(arg4 + 228)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 228)] + 36)] + 128] = 0
    require cd[(arg4 + 260)] <= 4294967296
    require cd[(arg4 + 260)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 260)] + 36)] <= 4294967296 and cd[(arg4 + 260)] + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 260)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 260)] + 36)]] = call.data[arg4 + cd[(arg4 + 260)] + 68 len cd[(arg4 + cd[(arg4 + 260)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 2
    if not uint8(cd[(arg4 + 36)]):
        if not cd[(arg4 + 164)]:
            if cd[(arg4 + 164)]:
                if cd[(arg4 + 196)]:
                    if not cd[(arg4 + 100)]:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196 len 28] = 0x328a7b4d538a2b3942653a9983fda3c1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        _135 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] or Mask(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32, -(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32) + 256, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260])
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len _135 - 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                else:
                    if not cd[(arg4 + 100)]:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196 len 28] = 0x328a7b4d538a2b3942653a9983fda3c1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        _139 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] or Mask(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32, -(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32) + 256, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260])
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len _139 - 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
            else:
                if cd[(arg4 + 196)]:
                    if not cd[(arg4 + 100)]:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196 len 28] = 0x328a7b4d538a2b3942653a9983fda3c1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        _143 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] or Mask(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32, -(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32) + 256, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260])
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len _143 - 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
                else:
                    if not cd[(arg4 + 100)]:
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196] = 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 228] = cd[(arg4 + 100)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 160] = 68
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 196 len 28] = 0x328a7b4d538a2b3942653a9983fda3c1
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        _147 = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])])]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 224 len Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32] or Mask(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32, -(8 * -(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])] % 32) + 32) + 256, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 32, 0, 0), mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + cd[(arg4 + cd[(arg4 + 260)] + 36)] + 192 len -cd[(arg4 + cd[(arg4 + 260)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)])]) + 260])
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len _147 - 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        54,
                                        0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
                        mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
        else:
            require ext_code.size(stor1)
            call stor1.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args cd[(arg4 + 100)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if cd[(arg4 + 100)]:
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
            mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
        else:
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                    revert with 0, 
                                32,
                                42,
                                0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
        require ext_code.size(0x328a7b4d538a2b3942653a9983fda3c12c571141)
        call 0x328a7b4d538a2b3942653a9983fda3c12c571141.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
             gas gas_remaining wei
            args 0xecb949c68c825650fd9d0aebe0cd3796fd126e66, cd[(arg4 + 100)], 0xd528697008ac67a21818751a5e3c58c8dae54696
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg4 + 196)]:
            require ext_code.size(stor1)
            call stor1.deposit() with:
               value cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1 wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 100)] + (3 * cd[(arg4 + 100)] / 997) + 1
    else:
        require uint8(cd[(arg4 + 36)]) <= 2
        if uint8(cd[(arg4 + 36)]) == 1:
            if cd[(arg4 + 164)]:
                require ext_code.size(stor1)
                call stor1.withdraw(uint256 rg1) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 68)]))
            staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(stor0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                    gas gas_remaining wei
                   args address(stor0)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require 997 * ext_call.return_data[0]
            if cd[(arg4 + 100)]:
                require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 282 len 10]
            mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len 4] = approve(address rg1, uint256 rg2)
            if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                revert with 0, 'SafeERC20: call to non-contract'
            if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                revert with 0, 'SafeERC20: call to non-contract'
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len floor32(0, 68)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 192 len floor32(0, 68)]
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 288 len 4] = mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + floor32(0, 68) + 220 len 4]
            call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 260 len 4] with:
                 gas gas_remaining wei
                args mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 264 len 0, 68 - 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 370 len 22]
            else:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 371 len 22]
            require ext_code.size(0x328a7b4d538a2b3942653a9983fda3c12c571141)
            call 0x328a7b4d538a2b3942653a9983fda3c12c571141.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args 0xecb949c68c825650fd9d0aebe0cd3796fd126e66, cd[(arg4 + 100)], 0xd528697008ac67a21818751a5e3c58c8dae54696
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg4 + 196)]:
                require ext_code.size(stor1)
                call stor1.deposit() with:
                   value (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 997 * ext_call.return_data[0]) + 1
        else:
            require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 64
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token0() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(mem[140 len 20])
            staticcall mem[140 len 20].token1() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[140 len 20], mem[160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 0] = None
            require ext_code.size(mem[140 len 20])
            if address(cd[(arg4 + 68)]) == address(ext_call.return_data[0]):
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    if cd[(arg4 + 100)]:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'dSafeERC20: approve from non-zero to non-zero allowanc'
                    if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 743903553, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                         gas gas_remaining wei
                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                else:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 100)], 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    if not cd[(arg4 + 100)]:
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 743903553, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'dSafeERC20: approve from non-zero to non-zero allowanc'
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x2c571141 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
            else:
                if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, cd[(arg4 + 100)], address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    if cd[(arg4 + 100)]:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'dSafeERC20: approve from non-zero to non-zero allowanc'
                    if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 743903553, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                    call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                         gas gas_remaining wei
                        args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                else:
                    call mem[140 len 20].swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, 0, address(this.address), 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor1)
                    staticcall stor1.0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[(arg4 + 132)]))
                    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                            gas gas_remaining wei
                           args address(stor0)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require 997 * ext_call.return_data[0]
                    if not cd[(arg4 + 100)]:
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 743903553, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
                    else:
                        require ext_code.size(0x4068da6c83afcfa0e13ba15a6696662335d5b75)
                        staticcall 0x4068da6c83afcfa0e13ba15a6696662335d5b75.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(this.address), 0x328a7b4d538a2b3942653a9983fda3c12c571141
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'dSafeERC20: approve from non-zero to non-zero allowanc'
                        if not ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if ext_code.hash(0x4068da6c83afcfa0e13ba15a6696662335d5b75) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 292 len 64] = approve(address rg1, uint256 rg2), 0x328a7b4d538a2b3942653a99, 0, Mask(224, 32, cd[(arg4 + 100)]) >> 32
                        call 0x04068da6c83afcfa0e13ba15a6696662335d5b75.0x2c571141 with:
                             gas gas_remaining wei
                            args Mask(224, 32, cd[(arg4 + 100)]) << 224, 0, mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 356 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if cd[(arg4 + cd[(arg4 + 228)] + 36)] > 0:
                    require cd[(arg4 + cd[(arg4 + 228)] + 36)] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 402 len 22]
            else:
                mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + 324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x6c5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 260)] + 36)]) + ceil32(return_data.size) + 403 len 22]
            require ext_code.size(0x328a7b4d538a2b3942653a9983fda3c12c571141)
            call 0x328a7b4d538a2b3942653a9983fda3c12c571141.liquidateBorrow(address rg1, uint256 rg2, address rg3) with:
                 gas gas_remaining wei
                args 0xecb949c68c825650fd9d0aebe0cd3796fd126e66, cd[(arg4 + 100)], 0xd528697008ac67a21818751a5e3c58c8dae54696
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[(arg4 + 132)]))
            call address(cd[(arg4 + 132)]).0xa9059cbb with:
                 gas gas_remaining wei
                args address(stor0), (1000 * ext_call.return_data[0] * mem[160] / 997 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
