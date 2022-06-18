contract main {




// =====================  Runtime code  =====================


#
#  - sub_f4305035(?)
#
address stor0;
address stor1;
address stor2;
mapping of uint8 stor3;
address stor4;
address stor5;
address stor6;

function getOperator(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function close() {
    require msg.sender == stor0
    selfdestruct(stor1)
}

function _fallback() payable {
  stop
}

function sendEth(uint256 arg1) {
    require calldata.size - 4 >= 32
    call stor1 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed'
}

function withdrawToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if arg2 != stor1:
        if arg2 != stor2:
            revert with 0, 'no'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1a6b31bf(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor3[address(msg.sender)]:
        revert with 0, 'not allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _18 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 132] = arg2
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_18))
        call address(_18).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function sub_f60c03f9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not stor3[address(msg.sender)]:
        revert with 0, 'not allowed'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = -1
        require ext_code.size(address(_21))
        call address(_21).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], -1
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
    return 1
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 == this.address
    mem[100] = address(ext_call.return_data[0])
    mem[132] = address(ext_call.return_data[0])
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg4.length >= 160
    require cd[(arg4 + 164)] <= 4294967296
    require cd[(arg4 + 164)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= 4294967296 and cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[96] = cd[(arg4 + cd[(arg4 + 164)] + 36)]
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    if cd[(arg4 + 36)]:
        require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 160, cd[(arg4 + 132)], mem[204 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, cd[(arg4 + 132)] + (2 * cd[(arg4 + 132)] / 998) + 1
    else:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 164] = address(cd[(arg4 + 100)])
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(cd[(arg4 + 68)]), address(cd[(arg4 + 100)])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 132] = address(ext_call.return_data[0])
        require ext_code.size(address(cd[(arg4 + 100)]))
        staticcall address(cd[(arg4 + 100)]).0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 998 * ext_call.return_data[0]
        require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 96
        require ext_code.size(mem[172 len 20])
        call mem[172 len 20].liquidateBorrow(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args ext_call.return_data[0] << 160, cd[(arg4 + 132)], mem[204 len 20]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(mem[204 len 20])
        call mem[204 len 20].redeem(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if mem[172 len 20] != 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
            if mem[204 len 20] != 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
                require ext_code.size(mem[204 len 20])
                call mem[204 len 20].underlying() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require 0 < 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160] = address(ext_call.return_data[0])
                require 1 < 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 192] = stor4
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] = 0x18cbafe500000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228] = ext_call.return_data[0]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 260] = (1000 * ext_call.return_data[0] * cd[(arg4 + 132)] / 998 * ext_call.return_data[0]) + 1
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 324] = this.address
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 356] = block.timestamp + 30
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 292] = 160
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 388] = 0, 2
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 420 len floor32(0, 2)] = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160 len floor32(0, 2)]
                require ext_code.size(stor5)
                call stor5.swapExactTokensForETH(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 228 len (32 * 0, 2) + 192]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(return_data.size) + 224
                require return_data.size >= 32
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] <= 4294967296
                require mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + 32 <= return_data.size
                require mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224] <= 4294967296 and mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + (32 * mem[mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224 len 4], ext_call.return_data[0 len 28] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 224]) + 32 <= return_data.size
        require ext_code.size(address(cd[(arg4 + 100)]))
        call address(cd[(arg4 + 100)]).0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 132)] / 998 * ext_call.return_data[0]) + 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_932832fc(?) {
    require calldata.size - 4 >= 128
    if not stor3[address(msg.sender)]:
        revert with 0, 'not allowed'
    require ext_code.size(stor6)
    call stor6.getAccountLiquidity(address arg1) with:
         gas gas_remaining wei
        args address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[64]:
        emit Success(0);
    else:
        if address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f) != 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
            require ext_code.size(address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f))
            call address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f).underlying() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f) == 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'Requested pair is not available.'
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                else:
                    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor2 != stor1:
                    if stor2 != stor2:
                        revert with 0, 'no'
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0] / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor1 != stor1:
                    if stor1 != stor2:
                        revert with 0, 'no'
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
            else:
                require ext_code.size(address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f))
                call address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f).underlying() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), stor4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor2 != stor1:
                        if stor2 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(stor4)
                    staticcall stor4.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor1 != stor1:
                        if stor1 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(stor4)
                    call stor4.0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                else:
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[326 len 30]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, arg1, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, 0, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg1, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor2 != stor1:
                        if stor2 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor1 != stor1:
                        if stor1 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
        else:
            if address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f) == 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
                require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args stor4, 0xad84341756bf337f5a0164515b1f6f993d194e1f
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[326 len 30]
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token0() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).token1() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                if stor4 == address(ext_call.return_data[0]):
                    if stor4 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1, arg1, address(this.address), 128, 288, 1, stor4, 0xad84341756bf337f5a0164515b1f6f993d194e1f, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args arg1, 0, address(this.address), 128, 288, 1, stor4, 0xad84341756bf337f5a0164515b1f6f993d194e1f, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                else:
                    if stor4 == ext_call.return_data[12 len 20]:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, arg1, address(this.address), 128, 288, 1, stor4, 0xad84341756bf337f5a0164515b1f6f993d194e1f, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, 0, address(this.address), 128, 288, 1, stor4, 0xad84341756bf337f5a0164515b1f6f993d194e1f, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor2 != stor1:
                    if stor2 != stor2:
                        revert with 0, 'no'
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor2, ext_call.return_data[0] / 10
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(stor4)
                staticcall stor4.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if stor1 != stor1:
                    if stor1 != stor2:
                        revert with 0, 'no'
                require ext_code.size(stor4)
                call stor4.0xa9059cbb with:
                     gas gas_remaining wei
                    args stor1, ext_call.return_data[0]
            else:
                if address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f) == 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
                    require ext_code.size(address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f))
                    call address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f).underlying() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                    staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args stor4, address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[12 len 20]:
                        revert with 0, 'Requested pair is not available.'
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token0() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).token1() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    if stor4 == address(ext_call.return_data[0]):
                        if stor4 == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, arg1, address(this.address), 128, 288, 0, stor4, address(ext_call.return_data[0]), arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args arg1, 0, address(this.address), 128, 288, 0, stor4, address(ext_call.return_data[0]), arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    else:
                        if stor4 == ext_call.return_data[12 len 20]:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, arg1, address(this.address), 128, 288, 0, stor4, address(ext_call.return_data[0]), arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, 0, address(this.address), 128, 288, 0, stor4, address(ext_call.return_data[0]), arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor2 != stor1:
                        if stor2 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor2, ext_call.return_data[0] / 10
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if stor1 != stor1:
                        if stor1 != stor2:
                            revert with 0, 'no'
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0xa9059cbb with:
                         gas gas_remaining wei
                        args stor1, ext_call.return_data[0]
                else:
                    require ext_code.size(address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f))
                    call address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f).underlying() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f) == 0x5aa53f03197e08c4851cad8c92c7922da5857e5d:
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[12 len 20]:
                            revert with 0, 'Requested pair is not available.'
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token0() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).token1() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg1, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args arg1, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        else:
                            if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            else:
                                call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor2 != stor1:
                            if stor2 != stor2:
                                revert with 0, 'no'
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor2, ext_call.return_data[0] / 10
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(stor4)
                        staticcall stor4.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if stor1 != stor1:
                            if stor1 != stor2:
                                revert with 0, 'no'
                        require ext_code.size(stor4)
                        call stor4.0xa9059cbb with:
                             gas gas_remaining wei
                            args stor1, ext_call.return_data[0]
                    else:
                        require ext_code.size(address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f))
                        call address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f).underlying() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
                        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(ext_call.return_data[0]), stor4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) != ext_call.return_data[12 len 20]:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 'Requested pair is not available.'
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg1, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg1, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            else:
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg1, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 288, 0, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor2 != stor1:
                                if stor2 != stor2:
                                    revert with 0, 'no'
                            require ext_code.size(stor4)
                            call stor4.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor2, ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(stor4)
                            staticcall stor4.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor1 != stor1:
                                if stor1 != stor2:
                                    revert with 0, 'no'
                            require ext_code.size(stor4)
                            call stor4.0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, ext_call.return_data[0]
                        else:
                            if not ext_call.return_data[12 len 20]:
                                revert with 0, 32, 34, 0xfe526571756573746564205f746f6b656e206973206e6f7420617661696c61626c65, mem[326 len 30]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token0() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).token1() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            if address(ext_call.return_data[0]) == address(ext_call.return_data[0]):
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg1, arg1, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args arg1, 0, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            else:
                                if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, arg1, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                                else:
                                    call address(ext_call.return_data[0]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                         gas gas_remaining wei
                                        args 0, 0, address(this.address), 128, 288, 1, address(ext_call.return_data[0]), stor4, arg1, 160, 96, address(arg2 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg3 - 0x147ac195469d07bad02a90006c84425fc9a2a3f), address(arg4 - 0x147ac195469d07bad02a90006c84425fc9a2a3f)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor2 != stor1:
                                if stor2 != stor2:
                                    revert with 0, 'no'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor2, ext_call.return_data[0] / 10
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if stor1 != stor1:
                                if stor1 != stor2:
                                    revert with 0, 'no'
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args stor1, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
