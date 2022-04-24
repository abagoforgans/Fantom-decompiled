contract main {




// =====================  Runtime code  =====================


#
#  - uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4)
#
address stor0;
uint256 stor0;
address stor1;
address stor2;
address owner;
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

function getOwner() {
    return owner
}

function _fallback() payable {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    emit OwnerSet(owner, arg1);
    owner = arg1
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

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
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
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function flashSwap(address arg1, uint256 arg2, address arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    else:
        mem[96] = arg4.length
        mem[128 len arg4.length] = arg4[all]
        mem[arg4.length + 128] = 0
        if arg1:
            if arg3:
                if arg1 != arg3:
                    if arg1 == stor1:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 'Requested pair is not available.'
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if arg1 == address(ext_call.return_data[0]):
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                    else:
                        if arg3 != stor1:
                            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), stor1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                                mem[ceil32(arg4.length) + 236 len 24]
                                else:
                                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(arg3), stor1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                        if not address(stor0):
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                                        mem[ceil32(arg4.length) + 233 len 27]
                                        else:
                                            require ext_code.size(arg1)
                                            staticcall arg1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < arg2:
                                                    revert with 0, '_amount is too big'
                                                else:
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                                                        require ext_code.size(address(stor0))
                                                        staticcall address(stor0).token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(stor0))
                                                            staticcall address(stor0).token1() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if stor1 == address(ext_call.return_data[0]):
                                                                    if stor1 == ext_call.return_data[12 len 20]:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = arg1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = arg1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    if stor1 == ext_call.return_data[12 len 20]:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = arg1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = arg1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                        else:
                            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args address(arg1), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                if not address(stor0):
                                    revert with 0, 'Requested pair is not available.'
                                else:
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor0))
                                        staticcall address(stor0).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if arg1 == address(ext_call.return_data[0]):
                                                if arg1 == ext_call.return_data[12 len 20]:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = arg1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 0
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = arg1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 0
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                if arg1 == ext_call.return_data[12 len 20]:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = arg1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 0
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = arg1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 0
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                else:
                    if arg1 == stor1:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(arg4.length) + 230 len 30]
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if arg1 == address(ext_call.return_data[0]):
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                    else:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(arg4.length) + 230 len 30]
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if arg1 == address(ext_call.return_data[0]):
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
            else:
                if arg1 != stor1:
                    if stor1 != stor1:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 
                                            32,
                                            40,
                                            0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(arg4.length) + 236 len 24]
                            else:
                                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                        gas gas_remaining wei
                                       args stor1, stor1
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                    if not address(stor0):
                                        revert with 0, 
                                                    32,
                                                    37,
                                                    0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                                    mem[ceil32(arg4.length) + 233 len 27]
                                    else:
                                        require ext_code.size(arg1)
                                        staticcall arg1.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(ext_call.return_data[0])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if ext_call.return_data[0] < arg2:
                                                revert with 0, '_amount is too big'
                                            else:
                                                require ext_code.size(stor1)
                                                staticcall stor1.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(ext_call.return_data[0])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require (997 * ext_call.return_data[0]) - (997 * arg2)
                                                    require ext_code.size(address(stor0))
                                                    staticcall address(stor0).token0() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require ext_code.size(address(stor0))
                                                        staticcall address(stor0).token1() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            if stor1 == address(ext_call.return_data[0]):
                                                                if stor1 == ext_call.return_data[12 len 20]:
                                                                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                    mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[ceil32(arg4.length) + 128] = 64
                                                                    mem[64] = ceil32(arg4.length) + 224
                                                                    mem[ceil32(arg4.length) + 256] = 2
                                                                    mem[ceil32(arg4.length) + 288] = arg1
                                                                    mem[ceil32(arg4.length) + 320] = arg2
                                                                    mem[ceil32(arg4.length) + 352] = stor1
                                                                    mem[ceil32(arg4.length) + 384] = 0
                                                                    mem[ceil32(arg4.length) + 416] = 0
                                                                    mem[ceil32(arg4.length) + 448] = 256
                                                                    mem[ceil32(arg4.length) + 512] = 0, 64
                                                                    mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                    mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                    mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                    mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                    if not arg4.length % 32:
                                                                        mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                        mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                        if not arg4.length + 0, 64 + 320 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                        mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                        if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                else:
                                                                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                    mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[ceil32(arg4.length) + 128] = 64
                                                                    mem[64] = ceil32(arg4.length) + 224
                                                                    mem[ceil32(arg4.length) + 256] = 2
                                                                    mem[ceil32(arg4.length) + 288] = arg1
                                                                    mem[ceil32(arg4.length) + 320] = arg2
                                                                    mem[ceil32(arg4.length) + 352] = stor1
                                                                    mem[ceil32(arg4.length) + 384] = 0
                                                                    mem[ceil32(arg4.length) + 416] = 0
                                                                    mem[ceil32(arg4.length) + 448] = 256
                                                                    mem[ceil32(arg4.length) + 512] = 0, 64
                                                                    mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                    mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                    mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                    mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                    if not arg4.length % 32:
                                                                        mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                        mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                        if not arg4.length + 0, 64 + 320 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                        mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                        if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                            else:
                                                                if stor1 == ext_call.return_data[12 len 20]:
                                                                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                    mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[ceil32(arg4.length) + 128] = 64
                                                                    mem[64] = ceil32(arg4.length) + 224
                                                                    mem[ceil32(arg4.length) + 256] = 2
                                                                    mem[ceil32(arg4.length) + 288] = arg1
                                                                    mem[ceil32(arg4.length) + 320] = arg2
                                                                    mem[ceil32(arg4.length) + 352] = stor1
                                                                    mem[ceil32(arg4.length) + 384] = 0
                                                                    mem[ceil32(arg4.length) + 416] = 0
                                                                    mem[ceil32(arg4.length) + 448] = 256
                                                                    mem[ceil32(arg4.length) + 512] = 0, 64
                                                                    mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                    mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                    mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                    mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                    if not arg4.length % 32:
                                                                        mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                        mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                        if not arg4.length + 0, 64 + 320 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                        mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                        if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                else:
                                                                    mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                    mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[ceil32(arg4.length) + 128] = 64
                                                                    mem[64] = ceil32(arg4.length) + 224
                                                                    mem[ceil32(arg4.length) + 256] = 2
                                                                    mem[ceil32(arg4.length) + 288] = arg1
                                                                    mem[ceil32(arg4.length) + 320] = arg2
                                                                    mem[ceil32(arg4.length) + 352] = stor1
                                                                    mem[ceil32(arg4.length) + 384] = 0
                                                                    mem[ceil32(arg4.length) + 416] = 0
                                                                    mem[ceil32(arg4.length) + 448] = 256
                                                                    mem[ceil32(arg4.length) + 512] = 0, 64
                                                                    mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                    mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                    mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                    mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                    if not arg4.length % 32:
                                                                        mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                        mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                        mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                        if not arg4.length + 0, 64 + 320 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                    else:
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                        mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                        mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                        if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                                                                        else:
                                                                            mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                            require ext_code.size(address(stor0))
                                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                 gas gas_remaining wei
                                                                                args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                            if not ext_call.success:
                                                                                revert with ext_call.return_data[0 len return_data.size]
                                                                            else:
                    else:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args address(arg1), stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 'Requested pair is not available.'
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if arg1 == address(ext_call.return_data[0]):
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 1
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 1
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if arg1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 1
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = arg1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 0
                                                mem[ceil32(arg4.length) + 352] = 1
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                else:
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args address(arg1), stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 
                                        32,
                                        34,
                                        0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 230 len 30]
                        else:
                            require ext_code.size(address(stor0))
                            staticcall address(stor0).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if arg1 == address(ext_call.return_data[0]):
                                        if arg1 == ext_call.return_data[12 len 20]:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = arg1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = arg1
                                            mem[ceil32(arg4.length) + 320] = 0
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                require ext_code.size(address(stor0))
                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                            else:
                                                require ext_code.size(address(stor0))
                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = arg1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = arg1
                                            mem[ceil32(arg4.length) + 320] = 0
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        if arg1 == ext_call.return_data[12 len 20]:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = arg1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = arg1
                                            mem[ceil32(arg4.length) + 320] = 0
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = arg1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = arg1
                                            mem[ceil32(arg4.length) + 320] = 0
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
        else:
            if arg3:
                if stor1 != arg3:
                    if stor1 == stor1:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 'Requested pair is not available.'
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if stor1 == address(ext_call.return_data[0]):
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 1
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = arg3
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                    else:
                        if arg3 != stor1:
                            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor1, stor1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                if not ext_call.return_data[12 len 20]:
                                    revert with 0, 
                                                32,
                                                40,
                                                0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                                mem[ceil32(arg4.length) + 236 len 24]
                                else:
                                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                            gas gas_remaining wei
                                           args address(arg3), stor1
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                        if not address(stor0):
                                            revert with 0, 
                                                        32,
                                                        37,
                                                        0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                                        mem[ceil32(arg4.length) + 233 len 27]
                                        else:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] < arg2:
                                                    revert with 0, '_amount is too big'
                                                else:
                                                    require ext_code.size(stor1)
                                                    staticcall stor1.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(ext_call.return_data[0])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        require (997 * ext_call.return_data[0]) - (997 * arg2)
                                                        require ext_code.size(address(stor0))
                                                        staticcall address(stor0).token0() with:
                                                                gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                            require return_data.size >= 32
                                                            require ext_code.size(address(stor0))
                                                            staticcall address(stor0).token1() with:
                                                                    gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                                require return_data.size >= 32
                                                                if stor1 == address(ext_call.return_data[0]):
                                                                    if stor1 == ext_call.return_data[12 len 20]:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = stor1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = stor1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                else:
                                                                    if stor1 == ext_call.return_data[12 len 20]:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = stor1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                    else:
                                                                        mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                        mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                        mem[ceil32(arg4.length) + 128] = 64
                                                                        mem[64] = ceil32(arg4.length) + 224
                                                                        mem[ceil32(arg4.length) + 256] = 2
                                                                        mem[ceil32(arg4.length) + 288] = stor1
                                                                        mem[ceil32(arg4.length) + 320] = arg2
                                                                        mem[ceil32(arg4.length) + 352] = arg3
                                                                        mem[ceil32(arg4.length) + 384] = 0
                                                                        mem[ceil32(arg4.length) + 416] = 0
                                                                        mem[ceil32(arg4.length) + 448] = 256
                                                                        mem[ceil32(arg4.length) + 512] = 0, 64
                                                                        mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                        mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                        mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                        mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                        if not arg4.length % 32:
                                                                            mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                            mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                            mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                            if not arg4.length + 0, 64 + 320 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                        else:
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                            mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                            mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                            if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                                                                            else:
                                                                                mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                                require ext_code.size(address(stor0))
                                                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                                     gas gas_remaining wei
                                                                                    args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                                if not ext_call.success:
                                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                                else:
                        else:
                            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor1, arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                if not address(stor0):
                                    revert with 0, 'Requested pair is not available.'
                                else:
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token0() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        require ext_code.size(address(stor0))
                                        staticcall address(stor0).token1() with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require return_data.size >= 32
                                            if stor1 == address(ext_call.return_data[0]):
                                                if stor1 == ext_call.return_data[12 len 20]:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = stor1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 1
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = stor1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 1
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                            else:
                                                if stor1 == ext_call.return_data[12 len 20]:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = stor1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 1
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                else:
                                                    mem[ceil32(arg4.length) + 128] = 0
                                                    mem[ceil32(arg4.length) + 192] = 1
                                                    mem[ceil32(arg4.length) + 224] = stor1
                                                    mem[ceil32(arg4.length) + 256] = arg2
                                                    mem[ceil32(arg4.length) + 288] = arg3
                                                    mem[ceil32(arg4.length) + 320] = 1
                                                    mem[ceil32(arg4.length) + 352] = 0
                                                    mem[ceil32(arg4.length) + 384] = 256
                                                    mem[ceil32(arg4.length) + 448] = 0
                                                    mem[ceil32(arg4.length) + 480 len 0] = None
                                                    mem[ceil32(arg4.length) + 416] = 288
                                                    mem[ceil32(arg4.length) + 480] = arg4.length
                                                    mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                    if not arg4.length % 32:
                                                        if not arg4.length + 320 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                    else:
                                                        if not floor32(arg4.length) + 352 % 32:
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                                                        else:
                                                            mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                            require ext_code.size(address(stor0))
                                                            call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                 gas gas_remaining wei
                                                                args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            else:
                else:
                    if stor1 == stor1:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, stor2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(arg4.length) + 230 len 30]
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if stor1 == address(ext_call.return_data[0]):
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                    else:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args stor1, stor1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require return_data.size >= 32
                            uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                            if not address(stor0):
                                revert with 0, 
                                            32,
                                            34,
                                            0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                            mem[ceil32(arg4.length) + 230 len 30]
                            else:
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token0() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    require ext_code.size(address(stor0))
                                    staticcall address(stor0).token1() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if stor1 == address(ext_call.return_data[0]):
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                        else:
                                            if stor1 == ext_call.return_data[12 len 20]:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                            else:
                                                mem[ceil32(arg4.length) + 128] = 0
                                                mem[ceil32(arg4.length) + 192] = 0
                                                mem[ceil32(arg4.length) + 224] = stor1
                                                mem[ceil32(arg4.length) + 256] = arg2
                                                mem[ceil32(arg4.length) + 288] = stor1
                                                mem[ceil32(arg4.length) + 320] = 1
                                                mem[ceil32(arg4.length) + 352] = 0
                                                mem[ceil32(arg4.length) + 384] = 256
                                                mem[ceil32(arg4.length) + 448] = 0
                                                mem[ceil32(arg4.length) + 480 len 0] = None
                                                mem[ceil32(arg4.length) + 416] = 288
                                                mem[ceil32(arg4.length) + 480] = arg4.length
                                                mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                if not arg4.length % 32:
                                                    if not arg4.length + 320 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                else:
                                                    if not floor32(arg4.length) + 352 % 32:
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
                                                    else:
                                                        mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                        require ext_code.size(address(stor0))
                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                             gas gas_remaining wei
                                                            args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        else:
            else:
                if stor1 != stor1:
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 
                                        32,
                                        40,
                                        0x2e52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 236 len 24]
                        else:
                            require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                            staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                                    gas gas_remaining wei
                                   args stor1, stor1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                                if not address(stor0):
                                    revert with 0, 
                                                32,
                                                37,
                                                0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65,
                                                mem[ceil32(arg4.length) + 233 len 27]
                                else:
                                    require ext_code.size(stor1)
                                    staticcall stor1.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(ext_call.return_data[0])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require return_data.size >= 32
                                        if ext_call.return_data[0] < arg2:
                                            revert with 0, '_amount is too big'
                                        else:
                                            require ext_code.size(stor1)
                                            staticcall stor1.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(ext_call.return_data[0])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                require return_data.size >= 32
                                                require (997 * ext_call.return_data[0]) - (997 * arg2)
                                                require ext_code.size(address(stor0))
                                                staticcall address(stor0).token0() with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    require return_data.size >= 32
                                                    require ext_code.size(address(stor0))
                                                    staticcall address(stor0).token1() with:
                                                            gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        require return_data.size >= 32
                                                        if stor1 == address(ext_call.return_data[0]):
                                                            if stor1 == ext_call.return_data[12 len 20]:
                                                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                mem[ceil32(arg4.length) + 128] = 64
                                                                mem[64] = ceil32(arg4.length) + 224
                                                                mem[ceil32(arg4.length) + 256] = 2
                                                                mem[ceil32(arg4.length) + 288] = stor1
                                                                mem[ceil32(arg4.length) + 320] = arg2
                                                                mem[ceil32(arg4.length) + 352] = stor1
                                                                mem[ceil32(arg4.length) + 384] = 0
                                                                mem[ceil32(arg4.length) + 416] = 0
                                                                mem[ceil32(arg4.length) + 448] = 256
                                                                mem[ceil32(arg4.length) + 512] = 0, 64
                                                                mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                if not arg4.length % 32:
                                                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                    if not arg4.length + 0, 64 + 320 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                mem[ceil32(arg4.length) + 128] = 64
                                                                mem[64] = ceil32(arg4.length) + 224
                                                                mem[ceil32(arg4.length) + 256] = 2
                                                                mem[ceil32(arg4.length) + 288] = stor1
                                                                mem[ceil32(arg4.length) + 320] = arg2
                                                                mem[ceil32(arg4.length) + 352] = stor1
                                                                mem[ceil32(arg4.length) + 384] = 0
                                                                mem[ceil32(arg4.length) + 416] = 0
                                                                mem[ceil32(arg4.length) + 448] = 256
                                                                mem[ceil32(arg4.length) + 512] = 0, 64
                                                                mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                if not arg4.length % 32:
                                                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                    if not arg4.length + 0, 64 + 320 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                        else:
                                                            if stor1 == ext_call.return_data[12 len 20]:
                                                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                mem[ceil32(arg4.length) + 128] = 64
                                                                mem[64] = ceil32(arg4.length) + 224
                                                                mem[ceil32(arg4.length) + 256] = 2
                                                                mem[ceil32(arg4.length) + 288] = stor1
                                                                mem[ceil32(arg4.length) + 320] = arg2
                                                                mem[ceil32(arg4.length) + 352] = stor1
                                                                mem[ceil32(arg4.length) + 384] = 0
                                                                mem[ceil32(arg4.length) + 416] = 0
                                                                mem[ceil32(arg4.length) + 448] = 256
                                                                mem[ceil32(arg4.length) + 512] = 0, 64
                                                                mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                if not arg4.length % 32:
                                                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                    if not arg4.length + 0, 64 + 320 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                            else:
                                                                mem[ceil32(arg4.length) + 160] = address(ext_call.return_data[0])
                                                                mem[ceil32(arg4.length) + 192] = (1000 * ext_call.return_data[0] * arg2 / (997 * ext_call.return_data[0]) - (997 * arg2)) + 1
                                                                mem[ceil32(arg4.length) + 128] = 64
                                                                mem[64] = ceil32(arg4.length) + 224
                                                                mem[ceil32(arg4.length) + 256] = 2
                                                                mem[ceil32(arg4.length) + 288] = stor1
                                                                mem[ceil32(arg4.length) + 320] = arg2
                                                                mem[ceil32(arg4.length) + 352] = stor1
                                                                mem[ceil32(arg4.length) + 384] = 0
                                                                mem[ceil32(arg4.length) + 416] = 0
                                                                mem[ceil32(arg4.length) + 448] = 256
                                                                mem[ceil32(arg4.length) + 512] = 0, 64
                                                                mem[ceil32(arg4.length) + 544 len ceil32(0, 64)] = address(ext_call.return_data[0]), mem[ceil32(arg4.length) + 192 len ceil32(0, 64) - 32]
                                                                mem[ceil32(arg4.length) + 480] = 0, 64 + 288
                                                                mem[0, 64 + ceil32(arg4.length) + 544] = arg4.length
                                                                mem[0, 64 + ceil32(arg4.length) + 576 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                                                if not arg4.length % 32:
                                                                    mem[ceil32(arg4.length) + 224] = arg4.length + 0, 64 + 320
                                                                    mem[64] = arg4.length + 0, 64 + ceil32(arg4.length) + 576
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 576] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580] = 0
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 644] = this.address
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 676] = 128
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 708] = arg4.length + 0, 64 + 320
                                                                    mem[arg4.length + 0, 64 + ceil32(arg4.length) + 740 len floor32(arg4.length + 0, 64 + 31) + 10] = mem[ceil32(arg4.length) + 256 len floor32(arg4.length + 0, 64 + 31) + 10]
                                                                    if not arg4.length + 0, 64 + 320 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len arg4.length + 0, 64 + 480]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + 740] = mem[floor32(arg4.length + 0, 64 + 320) + arg4.length + 0, 64 + ceil32(arg4.length) + -(arg4.length + 0, 64 + 320 % 32) + 772 len arg4.length + 0, 64 + 320 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[arg4.length + 0, 64 + ceil32(arg4.length) + 580 len floor32(arg4.length + 0, 64 + 320) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                else:
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 576] = mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(arg4.length % 32) + 608 len arg4.length % 32]
                                                                    mem[ceil32(arg4.length) + 224] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[64] = floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 608] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612] = 0
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 644] = 0
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 676] = this.address
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 708] = 128
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 740] = floor32(arg4.length) + 0, 64 + 352
                                                                    mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11] = mem[ceil32(arg4.length) + 256 len floor32(floor32(arg4.length) + 0, 64 + 31) + 11]
                                                                    if not floor32(arg4.length) + 0, 64 + 352 % 32:
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(arg4.length) + 0, 64 + 512]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                                                                    else:
                                                                        mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 772] = mem[floor32(floor32(arg4.length) + 0, 64 + 352) + floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + -(floor32(arg4.length) + 0, 64 + 352 % 32) + 804 len floor32(arg4.length) + 0, 64 + 352 % 32]
                                                                        require ext_code.size(address(stor0))
                                                                        call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                                             gas gas_remaining wei
                                                                            args mem[floor32(arg4.length) + 0, 64 + ceil32(arg4.length) + 612 len floor32(floor32(arg4.length) + 0, 64 + 352) + 192]
                                                                        if not ext_call.success:
                                                                            revert with ext_call.return_data[0 len return_data.size]
                                                                        else:
                else:
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args stor1, stor2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
                        if not address(stor0):
                            revert with 0, 
                                        32,
                                        34,
                                        0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65,
                                        mem[ceil32(arg4.length) + 230 len 30]
                        else:
                            require ext_code.size(address(stor0))
                            staticcall address(stor0).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require return_data.size >= 32
                                require ext_code.size(address(stor0))
                                staticcall address(stor0).token1() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require return_data.size >= 32
                                    if stor1 == address(ext_call.return_data[0]):
                                        if stor1 == ext_call.return_data[12 len 20]:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = stor1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = stor1
                                            mem[ceil32(arg4.length) + 320] = 1
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                require ext_code.size(address(stor0))
                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args arg2, arg2, address(this.address), Array(len=arg4.length + 320, data=mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                            else:
                                                require ext_code.size(address(stor0))
                                                call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                     gas gas_remaining wei
                                                    args arg2, arg2, address(this.address), Array(len=floor32(arg4.length) + 352, data=mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                        else:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = stor1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = stor1
                                            mem[ceil32(arg4.length) + 320] = 1
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args arg2, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                    else:
                                        if stor1 == ext_call.return_data[12 len 20]:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = stor1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = stor1
                                            mem[ceil32(arg4.length) + 320] = 1
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, arg2, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                        else:
                                            mem[ceil32(arg4.length) + 128] = 0
                                            mem[ceil32(arg4.length) + 192] = 0
                                            mem[ceil32(arg4.length) + 224] = stor1
                                            mem[ceil32(arg4.length) + 256] = arg2
                                            mem[ceil32(arg4.length) + 288] = stor1
                                            mem[ceil32(arg4.length) + 320] = 1
                                            mem[ceil32(arg4.length) + 352] = 1
                                            mem[ceil32(arg4.length) + 384] = 256
                                            mem[ceil32(arg4.length) + 448] = 0
                                            mem[ceil32(arg4.length) + 480 len 0] = None
                                            mem[ceil32(arg4.length) + 416] = 288
                                            mem[ceil32(arg4.length) + 480] = arg4.length
                                            mem[ceil32(arg4.length) + 512 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
                                            if not arg4.length % 32:
                                                if not arg4.length + 320 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len arg4.length + -ceil32(arg4.length) + 310]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + 676] = mem[floor32(arg4.length + 320) + arg4.length + ceil32(arg4.length) + -(arg4.length + 320 % 32) + 708 len arg4.length + 320 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, arg4.length + 320, mem[ceil32(arg4.length) + 192 len ceil32(arg4.length) + 10], mem[arg4.length + ceil32(arg4.length) + ceil32(arg4.length) + 686 len floor32(arg4.length + 320) + -ceil32(arg4.length) + 22]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                            else:
                                                if not floor32(arg4.length) + 352 % 32:
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(arg4.length) + -ceil32(floor32(arg4.length)) + 341]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                else:
                                                    mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + 708] = mem[floor32(floor32(arg4.length) + 352) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 352 % 32) + 740 len floor32(arg4.length) + 352 % 32]
                                                    require ext_code.size(address(stor0))
                                                    call address(stor0).swap(uint256 rg1, uint256 rg2, address rg3, bytes rg4) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, address(this.address), 128, floor32(arg4.length) + 352, mem[ceil32(arg4.length) + 192 len ceil32(floor32(arg4.length)) + 11], mem[floor32(arg4.length) + ceil32(arg4.length) + ceil32(floor32(arg4.length)) + 719 len floor32(floor32(arg4.length) + 352) + -ceil32(floor32(arg4.length)) + 21]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    else:
}



}
