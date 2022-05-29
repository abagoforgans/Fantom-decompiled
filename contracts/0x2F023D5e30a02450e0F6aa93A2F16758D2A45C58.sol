contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor0;
array of address stor1;

function _fallback() {
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

function sub_0b94796b(?) {
    require calldata.size - 4 >= 64
    if not arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            call arg2 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            call arg1.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg2), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if arg1 == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
            else:
                require return_data.size >= 32
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if arg1 != this.address:
        revert with 0, 'only this contract may initiate'
    if address(stor0) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x2e6f6e6c79207065726d697373696f6e656420556e6973776170563220706169722063616e2063616c,
                    mem[205 len 23]
    require arg4.length >= 192
    require cd[(arg4 + 164)] <= 4294967296
    require cd[(arg4 + 164)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= 4294967296 and cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    require cd[(arg4 + 196)] <= 4294967296
    require cd[(arg4 + 196)] + 68 <= arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 196)] + 36)] <= 4294967296 and cd[(arg4 + 196)] + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 68 <= arg4.length + 36
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 196)] + 36)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160 len cd[(arg4 + cd[(arg4 + 196)] + 36)]] = call.data[arg4 + cd[(arg4 + 196)] + 68 len cd[(arg4 + cd[(arg4 + 196)] + 36)]]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 196)] + 36)] + 160] = 0
    require uint8(cd[(arg4 + 36)]) <= 1
    if not uint8(cd[(arg4 + 36)]):
        require ext_code.size(address(cd[(arg4 + 68)]))
        staticcall address(cd[(arg4 + 68)]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 164] = address(stor0)
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 998 * ext_call.return_data[0]
        require cd[(arg4 + cd[(arg4 + 196)] + 36)] >= 64
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x27e611fd27b276acbd5ffd632e5eaebec9761e40, cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[(arg4 + 68)]) == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
        else:
            require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('param', 'arg4'), ('cd', ('add', 164, ('param', 'arg4')))))))), 32))), ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('param', 'arg4'), ('cd', ('add', 164, ('param', 'arg4')))))))), 32))), cd[(arg4 + 100)], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, (1000 * ext_call.return_data[0] * cd[(arg4 + 100)] / 998 * ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[(arg4 + 132)]) == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
        else:
            require return_data.size >= 32
    else:
        require cd[(arg4 + cd[(arg4 + 164)] + 36)] >= 64
        _11 = mem[160]
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
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        call 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args mem[140 len 20], mem[160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 160] = 0
        require ext_code.size(mem[140 len 20])
        if address(cd[(arg4 + 68)]) == address(ext_call.return_data[0]):
            if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)], cd[(arg4 + 100)], address(this.address), 128, 0
            else:
                call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args cd[(arg4 + 100)], 0, address(this.address), 128, 0
        else:
            if address(cd[(arg4 + 68)]) == ext_call.return_data[12 len 20]:
                call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, cd[(arg4 + 100)], address(this.address), 128, 0
            else:
                call mem[140 len 20].swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args address(stor0)
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + ceil32(cd[(arg4 + cd[(arg4 + 196)] + 36)]) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 998 * ext_call.return_data[0]
        require Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])] >= 64
        require ext_code.size(address(cd[(arg4 + 68)]))
        call address(cd[(arg4 + 68)]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x27e611fd27b276acbd5ffd632e5eaebec9761e40, cd[(arg4 + 100)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[(arg4 + 68)]) == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
        else:
            require return_data.size >= 32
        require ext_code.size(0x27e611fd27b276acbd5ffd632e5eaebec9761e40)
        call 0x27e611fd27b276acbd5ffd632e5eaebec9761e40.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
             gas gas_remaining wei
            args ('signextend', 15, ('mem', ('range', ('add', 160, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('param', 'arg4'), ('cd', ('add', 164, ('param', 'arg4')))))))), 32))), ('signextend', 15, ('mem', ('range', ('add', 192, ('mask_shl', 251, 5, 0, ('add', 31, ('cd', ('add', 36, ('param', 'arg4'), ('cd', ('add', 164, ('param', 'arg4')))))))), 32))), cd[(arg4 + 100)], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor0), (1000 * ext_call.return_data[0] * _11 / 998 * ext_call.return_data[0]) + 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if address(cd[(arg4 + 132)]) == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
        else:
            require return_data.size >= 32
}

function sub_6eeeaf01(?) {
    require calldata.size - 4 >= 160
    require ('signextend', 15, ('signextend', 15, ('param', 'arg3'))) < stor1.length
    require ('signextend', 15, ('signextend', 15, ('param', 'arg2'))) < stor1.length
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    if not arg1:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]
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
        if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == address(ext_call.return_data[0]):
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg4, arg4, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg4, 0, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
        else:
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg4, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
    else:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 32, 40, 0xfe52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
        if not address(stor0):
            revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
        require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))])
        staticcall stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))].0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, '_amount is too big'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (998 * ext_call.return_data[0]) - (998 * arg4)
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(ext_call.return_data[0]):
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, 0, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
        else:
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]:
        call arg5 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))])
        staticcall stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]:
            call arg5 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))])
            call stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))] == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
            else:
                require return_data.size >= 32
}

function sub_02b022a2(?) {
    require calldata.size - 4 >= 192
    if block.number > arg6:
        revert with 0, 'Deadline exceeded'
    require ('signextend', 15, ('signextend', 15, ('param', 'arg3'))) < stor1.length
    require ('signextend', 15, ('signextend', 15, ('param', 'arg2'))) < stor1.length
    require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
    if not arg1:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]
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
        if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == address(ext_call.return_data[0]):
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg4, arg4, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args arg4, 0, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
        else:
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))] == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, arg4, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 320, 0, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 224, 0, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
    else:
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, 32, 40, 0xfe52657175657374656420626f72726f7720746f6b656e206973206e6f7420617661696c61626c65, mem[300 len 24]
        require ext_code.size(0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3)
        staticcall 0x152ee697f2e276fa89e96742e9bb9ab1f2e61be3.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
        if not address(stor0):
            revert with 0, 32, 37, 0x2e5265717565737465642070617920746f6b656e206973206e6f7420617661696c61626c65, mem[297 len 27]
        require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))])
        staticcall stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))].0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg4:
            revert with 0, '_amount is too big'
        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                gas gas_remaining wei
               args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require (998 * ext_call.return_data[0]) - (998 * arg4)
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
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == address(ext_call.return_data[0]):
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, 0, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
        else:
            if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == ext_call.return_data[12 len 20]:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
            else:
                call address(stor0).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, 0, address(this.address), 128, 384, 1, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg2')))], arg4, stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))], 192, 288, 64, address(ext_call.return_data[0]), (1000 * ext_call.return_data[0] * arg4 / (998 * ext_call.return_data[0]) - (998 * arg4)) + 1 >> 256, 64, ('signextend', 15, ('signextend', 15, ('param', 'arg2'))), ('signextend', 15, ('signextend', 15, ('param', 'arg3')))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]:
        call arg5 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))])
        staticcall stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))]:
            call arg5 with:
               value ext_call.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))])
            call stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))].transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg5), ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if stor1[('signextend', 15, ('signextend', 15, ('param', 'arg3')))] == 0x49d68029688eabf473097a2fc38ef61633a3c7a:
            else:
                require return_data.size >= 32
}



}
