contract main {




// =====================  Runtime code  =====================


address sub_fcce19d0Address;
address sub_664637fcAddress;
uint256 limit;
uint256 sub_e00cda26;
uint256 sub_f7174d07;

function sub_664637fc(?) {
    return sub_664637fcAddress
}

function limit() {
    return limit
}

function sub_e00cda26(?) {
    return sub_e00cda26
}

function sub_f7174d07(?) {
    return sub_f7174d07
}

function sub_fcce19d0(?) {
    return sub_fcce19d0Address
}

function _fallback() payable {
    revert
}

function l(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_fcce19d0Address != msg.sender:
        revert with 0, 'Only Sam4x can change the limit!'
    limit = arg1
}

function e(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_fcce19d0Address != msg.sender:
        revert with 0, 'Only Sam4x can change eliteness!'
    sub_f7174d07 = arg1
}

function c(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_fcce19d0Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe4f6e6c792053616d34782063616e206368616e6765207468652063686172676573,
                    mem[198 len 30]
    sub_e00cda26 = arg1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_fcce19d0Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x214f6e6c792053616d34782063616e207265736375652074686520747265617375726573,
                    mem[200 len 28]
    if not arg1:
        call sub_fcce19d0Address with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_fcce19d0Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function multisend(address arg1, address[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
    require ext_code.size(sub_664637fcAddress)
    staticcall sub_664637fcAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= sub_f7174d07:
        require arg2.length == arg3.length
        require arg2.length <= limit
        idx = 0
        while uint8(idx) < arg2.length:
            require uint8(idx) < arg2.length
            _66 = mem[(32 * uint8(idx)) + 128]
            require uint8(idx) < arg3.length
            _76 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
            mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
            mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_66)
            mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _76
            require ext_code.size(arg1)
            call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(_66), _76
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require bool(ext_call.return_data[0]) == 1
            idx = idx + 1
            continue 
    else:
        if msg.value <= sub_e00cda26 - 1:
            revert with 0, 'Eliteness too low: Pay charges!'
        call sub_fcce19d0Address with:
           value msg.value wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'Inept to pay the charges!'
            require arg2.length == arg3.length
            require arg2.length <= limit
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _70 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _79 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_70)
                mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _79
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(_70), _79
                mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require bool(ext_call.return_data[0]) == 1
                idx = idx + 1
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg3.length) + 160] = return_data.size
            mem[(32 * arg2.length) + (32 * arg3.length) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'Inept to pay the charges!'
            require arg2.length == arg3.length
            require arg2.length <= limit
            idx = 0
            while uint8(idx) < arg2.length:
                require uint8(idx) < arg2.length
                _74 = mem[(32 * uint8(idx)) + 128]
                require uint8(idx) < arg3.length
                _82 = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 165] = msg.sender
                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 197] = address(_74)
                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 229] = _82
                require ext_code.size(arg1)
                call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(_74), _82
                mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require bool(ext_call.return_data[0]) == 1
                idx = idx + 1
                continue 
    return 1
}



}
