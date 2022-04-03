contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    revert
}

function pureTokenApprove(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    stor2 = arg1
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function pureTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function wethWithdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    stor2 = arg1
    require ext_code.size(stor2)
    call stor2.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pureTokenTransfer(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if 0x5d2238753f3ca5e649f9250c303d5c196a069f24 != msg.sender:
        if 0x9d3592092e23606e899fb8f05692ed1a3b323f4e != msg.sender:
            if 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13 != msg.sender:
                require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    stor2 = arg1
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_121f611a(?) {
    require calldata.size - 4 >= 256
    require arg7 <= 4294967296
    require arg7 + 36 <= calldata.size
    require arg7.length <= 4294967296 and arg7 + (32 * arg7.length) + 36 <= calldata.size
    mem[96] = arg7.length
    mem[128 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg8 <= 4294967296
    require arg8 + 36 <= calldata.size
    require arg8.length <= 4294967296 and arg8 + (32 * arg8.length) + 36 <= calldata.size
    mem[(32 * arg7.length) + 128] = arg8.length
    mem[(32 * arg7.length) + 160 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    if msg.sender == 0x5d2238753f3ca5e649f9250c303d5c196a069f24:
        stor0 = arg1
        stor1 = arg2
        stor2 = arg5
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg3:
            mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
            mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
            mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
            mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
            mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
            mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
            mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _563 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
            _587 = mem[_563 + (32 * arg7.length) + (32 * arg8.length) + 160]
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_563 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_563 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_563 + (32 * arg7.length) + (32 * arg8.length) + 160])]
            mem[64] = (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
            stor2 = arg6
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1043 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            if ext_call.return_data[0] >= _1043:
                _1115 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1115
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _1115, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1491 = mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32
                require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 <= 4294967296
                require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 + (32 * mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1115) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                _1539 = mem[_1491 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1491 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1491 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1491 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
                mem[64] = (32 * _1539) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
                mem[(32 * _1539) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
                return memory
                  from (32 * _1539) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                   len 32
            _1119 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1119 + 0xc9f2c9cd04674edea3fffffff
            require ext_code.size(stor2)
            call stor2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), _1119 + 0xc9f2c9cd04674edea3fffffff
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1229 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1229
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1229, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1493 = mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32
            require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 <= 4294967296
            require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 + (32 * mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1229) >> 32 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1540 = mem[_1493 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1493 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1493 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1493 + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1540) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1540) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1540) + (32 * _587) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3 + 0xc9f2c9cd04674edea3fffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
        mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
        mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
        mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
        mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
        mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
        mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _565 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
        _588 = mem[_565 + (32 * arg7.length) + (32 * arg8.length) + 160]
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_565 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_565 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_565 + (32 * arg7.length) + (32 * arg8.length) + 160])]
        mem[64] = (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
        stor2 = arg6
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1046 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        if ext_call.return_data[0] >= _1046:
            _1122 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1122
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1122, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1495 = mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32
            require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 <= 4294967296
            require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 + (32 * mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1122) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1541 = mem[_1495 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1495 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1495 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1495 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1541) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1541) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1541) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        _1126 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1126 + 0xc9f2c9cd04674edea3fffffff
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _1126 + 0xc9f2c9cd04674edea3fffffff
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1235 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1235
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1235, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1497 = mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32
        require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 <= 4294967296
        require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 + (32 * mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1235) >> 32 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        _1542 = mem[_1497 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1497 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1497 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1497 + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
        mem[64] = (32 * _1542) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
        require mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _1542) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
        return memory
          from (32 * _1542) + (32 * _588) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
           len 32
    if msg.sender == 0x9d3592092e23606e899fb8f05692ed1a3b323f4e:
        stor0 = arg1
        stor1 = arg2
        stor2 = arg5
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg3:
            mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
            mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
            mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
            mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
            mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
            mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
            mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _567 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
            _589 = mem[_567 + (32 * arg7.length) + (32 * arg8.length) + 160]
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_567 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_567 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_567 + (32 * arg7.length) + (32 * arg8.length) + 160])]
            mem[64] = (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
            stor2 = arg6
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1049 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            if ext_call.return_data[0] >= _1049:
                _1129 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1129
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _1129, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1499 = mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32
                require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 <= 4294967296
                require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 + (32 * mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1129) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                _1543 = mem[_1499 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1499 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1499 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1499 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
                mem[64] = (32 * _1543) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
                mem[(32 * _1543) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
                return memory
                  from (32 * _1543) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                   len 32
            _1133 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1133 + 0xc9f2c9cd04674edea3fffffff
            require ext_code.size(stor2)
            call stor2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), _1133 + 0xc9f2c9cd04674edea3fffffff
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1241 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1241
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1241, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1501 = mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32
            require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 <= 4294967296
            require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 + (32 * mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1241) >> 32 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1544 = mem[_1501 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1501 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1501 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1501 + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1544) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1544) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1544) + (32 * _589) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3 + 0xc9f2c9cd04674edea3fffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
        mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
        mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
        mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
        mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
        mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
        mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _569 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
        _590 = mem[_569 + (32 * arg7.length) + (32 * arg8.length) + 160]
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_569 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_569 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_569 + (32 * arg7.length) + (32 * arg8.length) + 160])]
        mem[64] = (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
        stor2 = arg6
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1052 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        if ext_call.return_data[0] >= _1052:
            _1136 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1136
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1136, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1503 = mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32
            require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 <= 4294967296
            require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 + (32 * mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1136) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1545 = mem[_1503 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1503 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1503 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1503 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1545) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1545) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1545) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        _1140 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1140 + 0xc9f2c9cd04674edea3fffffff
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _1140 + 0xc9f2c9cd04674edea3fffffff
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1247 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1247
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1247, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1505 = mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32
        require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 <= 4294967296
        require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 + (32 * mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1247) >> 32 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        _1546 = mem[_1505 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1505 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1505 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1505 + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
        mem[64] = (32 * _1546) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
        require mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _1546) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
        return memory
          from (32 * _1546) + (32 * _590) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
           len 32
    if msg.sender == 0x220c54f34d68b4d43fdc42d30e6ac5e6efe56b13:
        stor0 = arg1
        stor1 = arg2
        stor2 = arg5
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= arg3:
            mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
            mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
            mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
            mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
            mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
            mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
            mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
            require ext_code.size(stor0)
            call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
            require return_data.size >= 32
            _571 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
            _591 = mem[_571 + (32 * arg7.length) + (32 * arg8.length) + 160]
            mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_571 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_571 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_571 + (32 * arg7.length) + (32 * arg8.length) + 160])]
            mem[64] = (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
            stor2 = arg6
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1055 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
            require ext_code.size(stor2)
            staticcall stor2.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), arg2
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            if ext_call.return_data[0] >= _1055:
                _1143 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1143
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
                require ext_code.size(stor1)
                call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args _1143, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _1507 = mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32
                require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 <= 4294967296
                require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 + (32 * mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1143) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                _1547 = mem[_1507 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
                mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1507 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1507 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1507 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
                mem[64] = (32 * _1547) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
                mem[(32 * _1547) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
                return memory
                  from (32 * _1547) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
                   len 32
            _1147 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1147 + 0xc9f2c9cd04674edea3fffffff
            require ext_code.size(stor2)
            call stor2.approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(arg2), _1147 + 0xc9f2c9cd04674edea3fffffff
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
            _1253 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1253
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1253, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1509 = mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32
            require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 <= 4294967296
            require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 + (32 * mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1253) >> 32 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1548 = mem[_1509 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1509 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1509 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1509 + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1548) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1548) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1548) + (32 * _591) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg3 + 0xc9f2c9cd04674edea3fffffff
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
        mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
        mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
        mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
        mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
        mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
        mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _573 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
        _592 = mem[_573 + (32 * arg7.length) + (32 * arg8.length) + 160]
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_573 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_573 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_573 + (32 * arg7.length) + (32 * arg8.length) + 160])]
        mem[64] = (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
        stor2 = arg6
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1058 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        if ext_call.return_data[0] >= _1058:
            _1150 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1150
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1150, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1511 = mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32
            require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 <= 4294967296
            require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 + (32 * mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1150) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1549 = mem[_1511 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1511 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1511 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1511 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1549) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1549) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        _1154 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1154 + 0xc9f2c9cd04674edea3fffffff
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _1154 + 0xc9f2c9cd04674edea3fffffff
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1259 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1259
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1259, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1513 = mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32
        require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 <= 4294967296
        require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 + (32 * mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1259) >> 32 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        _1550 = mem[_1513 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1513 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1513 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1513 + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
        require mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _1550) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
        return memory
          from (32 * _1550) + (32 * _592) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
           len 32
    require msg.sender == 0x2dac8c52e54056656da31f0b1d0a1e923d13fc96
    stor0 = arg1
    stor1 = arg2
    stor2 = arg5
    require ext_code.size(stor2)
    staticcall stor2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= arg3:
        mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
        mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
        mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
        mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
        mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
        mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
        mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
        require ext_code.size(stor0)
        call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
        require return_data.size >= 32
        _575 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
        _593 = mem[_575 + (32 * arg7.length) + (32 * arg8.length) + 160]
        mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_575 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_575 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_575 + (32 * arg7.length) + (32 * arg8.length) + 160])]
        mem[64] = (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
        stor2 = arg6
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1061 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
        require ext_code.size(stor2)
        staticcall stor2.0xdd62ed3e with:
                gas gas_remaining wei
               args address(this.address), arg2
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        if ext_call.return_data[0] >= _1061:
            _1157 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1157
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
            require ext_code.size(stor1)
            call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args _1157, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _1515 = mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32
            require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 <= 4294967296
            require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 + 32 <= return_data.size
            require mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 + (32 * mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1157) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            _1551 = mem[_1515 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
            mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1515 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1515 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1515 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
            mem[64] = (32 * _1551) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
            require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
            mem[(32 * _1551) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
            return memory
              from (32 * _1551) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
               len 32
        _1161 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1161 + 0xc9f2c9cd04674edea3fffffff
        require ext_code.size(stor2)
        call stor2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), _1161 + 0xc9f2c9cd04674edea3fffffff
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
        _1265 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1265
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1265, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1517 = mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32
        require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 <= 4294967296
        require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 + (32 * mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1265) >> 32 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        _1552 = mem[_1517 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1517 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1517 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1517 + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
        mem[64] = (32 * _1552) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
        require mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _1552) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
        return memory
          from (32 * _1552) + (32 * _593) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
           len 32
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg3 + 0xc9f2c9cd04674edea3fffffff
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg7.length) + (32 * arg8.length) + 160] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * arg7.length) + (32 * arg8.length) + 164] = arg3
    mem[(32 * arg7.length) + (32 * arg8.length) + 196] = 0
    mem[(32 * arg7.length) + (32 * arg8.length) + 260] = this.address
    mem[(32 * arg7.length) + (32 * arg8.length) + 292] = stor3
    mem[(32 * arg7.length) + (32 * arg8.length) + 228] = 160
    mem[(32 * arg7.length) + (32 * arg8.length) + 324] = arg7.length
    mem[(32 * arg7.length) + (32 * arg8.length) + 356 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    require ext_code.size(stor0)
    call stor0.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args arg3, 0, 160, address(this.address), stor3, arg7.length, call.data[arg7 + 36 len floor32(arg7.length)], mem[(32 * arg7.length) + (32 * arg8.length) + floor32(arg7.length) + 356 len (32 * arg7.length) - floor32(arg7.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg7.length) + (32 * arg8.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _577 = mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160] <= 4294967296 and mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg7.length) + (32 * arg8.length) + 160 len 4], Mask(224, 32, arg3) >> 32 + (32 * arg7.length) + (32 * arg8.length) + 160]
    _594 = mem[_577 + (32 * arg7.length) + (32 * arg8.length) + 160]
    mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len floor32(mem[_577 + (32 * arg7.length) + (32 * arg8.length) + 160])] = mem[_577 + (32 * arg7.length) + (32 * arg8.length) + 192 len floor32(mem[_577 + (32 * arg7.length) + (32 * arg8.length) + 160])]
    mem[64] = (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192
    stor2 = arg6
    require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
    _1064 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = this.address
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg2
    require ext_code.size(stor2)
    staticcall stor2.0xdd62ed3e with:
            gas gas_remaining wei
           args address(this.address), arg2
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
    if ext_call.return_data[0] >= _1064:
        _1164 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1164
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
        require ext_code.size(stor1)
        call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args _1164, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        _1519 = mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32
        require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 <= 4294967296
        require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 + 32 <= return_data.size
        require mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 + (32 * mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1164) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        _1553 = mem[_1519 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
        mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1519 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1519 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1519 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
        mem[64] = (32 * _1553) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
        require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
        mem[(32 * _1553) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
        return memory
          from (32 * _1553) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
           len 32
    _1168 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = arg2
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = _1168 + 0xc9f2c9cd04674edea3fffffff
    require ext_code.size(stor2)
    call stor2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), _1168 + 0xc9f2c9cd04674edea3fffffff
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1 < mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160]
    _1271 = mem[(32 * mem[(32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 160] - 1) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 196] = _1271
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 228] = arg4
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 292] = this.address
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 324] = stor3
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 260] = 160
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 356] = arg8.length
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 388 len floor32(arg8.length)] = call.data[arg8 + 36 len floor32(arg8.length)]
    require ext_code.size(stor1)
    call stor1.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
         gas gas_remaining wei
        args _1271, arg4, Array(len=arg8.length, data=call.data[arg8 + 36 len floor32(arg8.length)], mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + floor32(arg8.length) + 388 len (32 * arg8.length) - floor32(arg8.length)]), address(this.address), stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _1521 = mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32
    require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 <= 4294967296
    require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 + (32 * mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, _1271) >> 32 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
    _1554 = mem[_1521 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192]
    mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_1521 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])] = mem[_1521 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 224 len floor32(mem[_1521 + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + ceil32(return_data.size) + 192])]
    mem[64] = (32 * _1554) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
    require mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1 < mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192]
    mem[(32 * _1554) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224] = mem[(32 * mem[(32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 192] - 1) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224]
    return memory
      from (32 * _1554) + (32 * _594) + (32 * arg7.length) + (32 * arg8.length) + (2 * ceil32(return_data.size)) + 224
       len 32
}



}
