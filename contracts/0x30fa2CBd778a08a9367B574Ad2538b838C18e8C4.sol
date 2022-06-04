contract main {




// =====================  Runtime code  =====================


address sub_e61b28dbAddress;
address stor1;
mapping of struct trade;
uint256 stor3;
address sub_4fe71d13Address;
address sub_ec039514Address;

function trades(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return trade[arg1].field_0, trade[arg1].field_256, trade[arg1].field_512, trade[arg1].field_768
}

function getTrade(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return trade[arg1].field_0, trade[arg1].field_256, trade[arg1].field_512, trade[arg1].field_768
}

function sub_4fe71d13(?) {
    return sub_4fe71d13Address
}

function sub_e61b28db(?) {
    return sub_e61b28dbAddress
}

function sub_ec039514(?) {
    return sub_ec039514Address
}

function _fallback() payable {
    revert
}

function getReputationCount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return 0
}

function reputation(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    return 0
}

function sub_493c2176(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    if trade[arg2].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Trade is not Open.'
    trade[arg2].field_0 = address(arg3)
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg3), trade[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe4d38ed: arg2, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
}

function sub_49b1d3e7(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor3++
    trade[stor3 + 1].field_0 = msg.sender
    trade[stor3 + 1].field_256 = arg2
    trade[stor3 + 1].field_512 = arg3
    trade[stor3 + 1].field_768 = 0x4f70656e00000000000000000000000000000000000000000000000000000000
    emit 0xfe4d38ed: stor3 - 1, 0x4f70656e00000000000000000000000000000000000000000000000000000000
}

function sub_80a279c4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(stor1)
    call stor1.0x9bab7f4a with:
         gas gas_remaining wei
        args 0, 0, 64, 4, 0x4f70656e00000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if trade[arg2].field_0 != msg.sender:
        revert with 0, 'Trade can be open only by seller.'
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), trade[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    trade[arg2].field_768 = 0x4f70656e00000000000000000000000000000000000000000000000000000000
    emit 0xfe4d38ed: arg2, 0x4f70656e00000000000000000000000000000000000000000000000000000000
}

function sub_759c4bf3(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(stor1)
    call stor1.0x9bab7f4a with:
         gas gas_remaining wei
        args 0, 0, 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if trade[arg2].field_0 != msg.sender:
        revert with 0, 'Trade can be cancelled only by seller.'
    if trade[arg2].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Trade is not Open.'
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), trade[arg2].field_0, trade[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    trade[arg2].field_768 = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
    emit 0xfe4d38ed: arg2, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
}

function sub_16f946ef(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0
    mem[128] = 96
    mem[160] = 96
    mem[192] = 0
    mem[224] = 0
    mem[256] = 96
    mem[288] = 96
    mem[320] = 0
    mem[352] = 0x7fd6c40500000000000000000000000000000000000000000000000000000000
    mem[356] = address(arg1)
    require ext_code.size(sub_ec039514Address)
    staticcall sub_ec039514Address.0x7fd6c405 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[352 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _5 = mem[352 len 4], address(arg1) << 64
    require mem[352 len 4], address(arg1) << 64 <= test266151307()
    require return_data.size - mem[352 len 4], address(arg1) << 64 >= 256
    require bool(ceil32(return_data.size) + 608 <= test266151307())
    mem[64] = ceil32(return_data.size) + 608
    require mem[mem[352 len 4], address(arg1) << 64 + 352] == mem[mem[352 len 4], address(arg1) << 64 + 364 len 20]
    mem[ceil32(return_data.size) + 352] = mem[mem[352 len 4], address(arg1) << 64 + 352]
    _8 = mem[_5 + 384]
    require mem[_5 + 384] <= test266151307()
    require _5 + mem[_5 + 384] + 383 < return_data.size + 352
    _9 = mem[_5 + mem[_5 + 384] + 352]
    require mem[_5 + mem[_5 + 384] + 352] <= test266151307()
    require ceil32(mem[_5 + mem[_5 + 384] + 352]) + 288 >= 256 and ceil32(return_data.size) + ceil32(mem[_5 + mem[_5 + 384] + 352]) + 640 <= test266151307()
    mem[64] = ceil32(return_data.size) + ceil32(mem[_5 + mem[_5 + 384] + 352]) + 640
    mem[ceil32(return_data.size) + 608] = _9
    require _5 + _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 640 len ceil32(_9)] = mem[_5 + _8 + 384 len ceil32(_9)]
    if ceil32(_9) <= _9:
        mem[ceil32(return_data.size) + 384] = ceil32(return_data.size) + 608
        _445 = mem[_5 + 416]
        require mem[_5 + 416] <= test266151307()
        require _5 + mem[_5 + 416] + 383 < return_data.size + 352
        _447 = mem[_5 + mem[_5 + 416] + 352]
        require mem[_5 + mem[_5 + 416] + 352] <= test266151307()
        _449 = mem[64]
        require mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32
        mem[_449] = mem[_5 + mem[_5 + 416] + 352]
        require _5 + _445 + _447 + 32 <= return_data.size
        mem[_449 + 32 len ceil32(_447)] = mem[_5 + _445 + 384 len ceil32(_447)]
        if ceil32(_447) <= _447:
            mem[ceil32(return_data.size) + 416] = _449
            require mem[_5 + 448] == mem[_5 + 460 len 20]
            mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
            require mem[_5 + 480] == mem[_5 + 480]
            mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
            _1111 = mem[_5 + 512]
            require mem[_5 + 512] <= test266151307()
            require _5 + mem[_5 + 512] + 383 < return_data.size + 352
            _1115 = mem[_5 + mem[_5 + 512] + 352]
            require mem[_5 + mem[_5 + 512] + 352] <= test266151307()
            _1119 = mem[64]
            require mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32
            mem[_1119] = _1115
            require _5 + _1111 + _1115 + 32 <= return_data.size
            mem[_1119 + 32 len ceil32(_1115)] = mem[_5 + _1111 + 384 len ceil32(_1115)]
            if ceil32(_1115) <= _1115:
                mem[ceil32(return_data.size) + 512] = _1119
                _1819 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1827 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1835 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1835] = _1827
                require _5 + _1819 + _1827 + 32 <= return_data.size
                mem[_1835 + 32 len ceil32(_1827)] = mem[_5 + _1819 + 384 len ceil32(_1827)]
                if ceil32(_1827) <= _1827:
                    mem[ceil32(return_data.size) + 544] = _1835
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2739 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2755 = mem[_2739]
                    require mem[_2739] == mem[_2739 + 12 len 20]
                    _2771 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2771] = 0
                    mem[_2771 + 32] = 0
                    mem[_2771 + 64] = 0
                    mem[_2771 + 96] = 0
                    _2787 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2787] = 0
                    mem[_2787 + 32] = 0
                    mem[_2787 + 64] = 0
                    mem[_2787 + 96] = 0
                    _2803 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2803] = 0
                    mem[_2803 + 32] = 0
                    mem[_2803 + 64] = 0
                    mem[_2803 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2820 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2820] = trade[1].field_0
                    mem[_2820 + 32] = trade[1].field_256
                    mem[_2820 + 64] = trade[1].field_512
                    mem[_2820 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2963 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2963] = 0
                    mem[_2963 + 32] = 0
                    mem[_2963 + 64] = 0
                    mem[_2963 + 96] = 0
                    _2979 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2979] = 0
                    mem[_2979 + 32] = 0
                    mem[_2979 + 64] = 0
                    mem[_2979 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2996 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2996] = trade[1].field_0
                    mem[_2996 + 32] = trade[1].field_256
                    mem[_2996 + 64] = trade[1].field_512
                    mem[_2996 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3123 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3123] == bool(mem[_3123])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3187 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3187] == bool(mem[_3187])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3251 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3251] == mem[_3251 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2755), mem[_3251 + 12 len 20]
                else:
                    mem[_1827 + _1835 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1835
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2740 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2756 = mem[_2740]
                    require mem[_2740] == mem[_2740 + 12 len 20]
                    _2772 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2772] = 0
                    mem[_2772 + 32] = 0
                    mem[_2772 + 64] = 0
                    mem[_2772 + 96] = 0
                    _2788 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2788] = 0
                    mem[_2788 + 32] = 0
                    mem[_2788 + 64] = 0
                    mem[_2788 + 96] = 0
                    _2804 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2804] = 0
                    mem[_2804 + 32] = 0
                    mem[_2804 + 64] = 0
                    mem[_2804 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2822 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2822] = trade[1].field_0
                    mem[_2822 + 32] = trade[1].field_256
                    mem[_2822 + 64] = trade[1].field_512
                    mem[_2822 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2964 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2964] = 0
                    mem[_2964 + 32] = 0
                    mem[_2964 + 64] = 0
                    mem[_2964 + 96] = 0
                    _2980 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2980] = 0
                    mem[_2980 + 32] = 0
                    mem[_2980 + 64] = 0
                    mem[_2980 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2998 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2998] = trade[1].field_0
                    mem[_2998 + 32] = trade[1].field_256
                    mem[_2998 + 64] = trade[1].field_512
                    mem[_2998 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3124 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3124] == bool(mem[_3124])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3188 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3188] == bool(mem[_3188])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3252 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3252] == mem[_3252 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2756), mem[_3252 + 12 len 20]
            else:
                mem[_1115 + _1119 + 32] = 0
                mem[ceil32(return_data.size) + 512] = _1119
                _1820 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1828 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1836 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1836] = _1828
                require _5 + _1820 + _1828 + 32 <= return_data.size
                mem[_1836 + 32 len ceil32(_1828)] = mem[_5 + _1820 + 384 len ceil32(_1828)]
                if ceil32(_1828) <= _1828:
                    mem[ceil32(return_data.size) + 544] = _1836
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2741 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2757 = mem[_2741]
                    require mem[_2741] == mem[_2741 + 12 len 20]
                    _2773 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2773] = 0
                    mem[_2773 + 32] = 0
                    mem[_2773 + 64] = 0
                    mem[_2773 + 96] = 0
                    _2789 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2789] = 0
                    mem[_2789 + 32] = 0
                    mem[_2789 + 64] = 0
                    mem[_2789 + 96] = 0
                    _2805 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2805] = 0
                    mem[_2805 + 32] = 0
                    mem[_2805 + 64] = 0
                    mem[_2805 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2824 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2824] = trade[1].field_0
                    mem[_2824 + 32] = trade[1].field_256
                    mem[_2824 + 64] = trade[1].field_512
                    mem[_2824 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2965 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2965] = 0
                    mem[_2965 + 32] = 0
                    mem[_2965 + 64] = 0
                    mem[_2965 + 96] = 0
                    _2981 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2981] = 0
                    mem[_2981 + 32] = 0
                    mem[_2981 + 64] = 0
                    mem[_2981 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3000 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3000] = trade[1].field_0
                    mem[_3000 + 32] = trade[1].field_256
                    mem[_3000 + 64] = trade[1].field_512
                    mem[_3000 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3125 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3125] == bool(mem[_3125])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3189 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3189] == bool(mem[_3189])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3253 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3253] == mem[_3253 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2757), mem[_3253 + 12 len 20]
                else:
                    mem[_1828 + _1836 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1836
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2758 = mem[_2742]
                    require mem[_2742] == mem[_2742 + 12 len 20]
                    _2774 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2774] = 0
                    mem[_2774 + 32] = 0
                    mem[_2774 + 64] = 0
                    mem[_2774 + 96] = 0
                    _2790 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2790] = 0
                    mem[_2790 + 32] = 0
                    mem[_2790 + 64] = 0
                    mem[_2790 + 96] = 0
                    _2806 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2806] = 0
                    mem[_2806 + 32] = 0
                    mem[_2806 + 64] = 0
                    mem[_2806 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2826 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2826] = trade[1].field_0
                    mem[_2826 + 32] = trade[1].field_256
                    mem[_2826 + 64] = trade[1].field_512
                    mem[_2826 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2966 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2966] = 0
                    mem[_2966 + 32] = 0
                    mem[_2966 + 64] = 0
                    mem[_2966 + 96] = 0
                    _2982 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2982] = 0
                    mem[_2982 + 32] = 0
                    mem[_2982 + 64] = 0
                    mem[_2982 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3002 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3002] = trade[1].field_0
                    mem[_3002 + 32] = trade[1].field_256
                    mem[_3002 + 64] = trade[1].field_512
                    mem[_3002 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3126 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3126] == bool(mem[_3126])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3190 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3190] == bool(mem[_3190])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3254 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3254] == mem[_3254 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2758), mem[_3254 + 12 len 20]
        else:
            mem[_447 + _449 + 32] = 0
            mem[ceil32(return_data.size) + 416] = _449
            require mem[_5 + 448] == mem[_5 + 460 len 20]
            mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
            require mem[_5 + 480] == mem[_5 + 480]
            mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
            _1112 = mem[_5 + 512]
            require mem[_5 + 512] <= test266151307()
            require _5 + mem[_5 + 512] + 383 < return_data.size + 352
            _1116 = mem[_5 + mem[_5 + 512] + 352]
            require mem[_5 + mem[_5 + 512] + 352] <= test266151307()
            _1120 = mem[64]
            require mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32
            mem[_1120] = _1116
            require _5 + _1112 + _1116 + 32 <= return_data.size
            mem[_1120 + 32 len ceil32(_1116)] = mem[_5 + _1112 + 384 len ceil32(_1116)]
            if ceil32(_1116) <= _1116:
                mem[ceil32(return_data.size) + 512] = _1120
                _1821 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1829 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1837 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1837] = _1829
                require _5 + _1821 + _1829 + 32 <= return_data.size
                mem[_1837 + 32 len ceil32(_1829)] = mem[_5 + _1821 + 384 len ceil32(_1829)]
                if ceil32(_1829) <= _1829:
                    mem[ceil32(return_data.size) + 544] = _1837
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2759 = mem[_2743]
                    require mem[_2743] == mem[_2743 + 12 len 20]
                    _2775 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2775] = 0
                    mem[_2775 + 32] = 0
                    mem[_2775 + 64] = 0
                    mem[_2775 + 96] = 0
                    _2791 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2791] = 0
                    mem[_2791 + 32] = 0
                    mem[_2791 + 64] = 0
                    mem[_2791 + 96] = 0
                    _2807 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2807] = 0
                    mem[_2807 + 32] = 0
                    mem[_2807 + 64] = 0
                    mem[_2807 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2828 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2828] = trade[1].field_0
                    mem[_2828 + 32] = trade[1].field_256
                    mem[_2828 + 64] = trade[1].field_512
                    mem[_2828 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2967 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2967] = 0
                    mem[_2967 + 32] = 0
                    mem[_2967 + 64] = 0
                    mem[_2967 + 96] = 0
                    _2983 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2983] = 0
                    mem[_2983 + 32] = 0
                    mem[_2983 + 64] = 0
                    mem[_2983 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3004 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3004] = trade[1].field_0
                    mem[_3004 + 32] = trade[1].field_256
                    mem[_3004 + 64] = trade[1].field_512
                    mem[_3004 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3127 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3127] == bool(mem[_3127])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3191 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3191] == bool(mem[_3191])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3255 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3255] == mem[_3255 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2759), mem[_3255 + 12 len 20]
                else:
                    mem[_1829 + _1837 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1837
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2760 = mem[_2744]
                    require mem[_2744] == mem[_2744 + 12 len 20]
                    _2776 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2776] = 0
                    mem[_2776 + 32] = 0
                    mem[_2776 + 64] = 0
                    mem[_2776 + 96] = 0
                    _2792 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2792] = 0
                    mem[_2792 + 32] = 0
                    mem[_2792 + 64] = 0
                    mem[_2792 + 96] = 0
                    _2808 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2808] = 0
                    mem[_2808 + 32] = 0
                    mem[_2808 + 64] = 0
                    mem[_2808 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2830 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2830] = trade[1].field_0
                    mem[_2830 + 32] = trade[1].field_256
                    mem[_2830 + 64] = trade[1].field_512
                    mem[_2830 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2968 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2968] = 0
                    mem[_2968 + 32] = 0
                    mem[_2968 + 64] = 0
                    mem[_2968 + 96] = 0
                    _2984 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2984] = 0
                    mem[_2984 + 32] = 0
                    mem[_2984 + 64] = 0
                    mem[_2984 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3006 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3006] = trade[1].field_0
                    mem[_3006 + 32] = trade[1].field_256
                    mem[_3006 + 64] = trade[1].field_512
                    mem[_3006 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3128 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3128] == bool(mem[_3128])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3192 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3192] == bool(mem[_3192])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3256 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3256] == mem[_3256 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2760), mem[_3256 + 12 len 20]
            else:
                mem[_1116 + _1120 + 32] = 0
                mem[ceil32(return_data.size) + 512] = _1120
                _1822 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1830 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1838 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1838] = _1830
                require _5 + _1822 + _1830 + 32 <= return_data.size
                mem[_1838 + 32 len ceil32(_1830)] = mem[_5 + _1822 + 384 len ceil32(_1830)]
                if ceil32(_1830) <= _1830:
                    mem[ceil32(return_data.size) + 544] = _1838
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2761 = mem[_2745]
                    require mem[_2745] == mem[_2745 + 12 len 20]
                    _2777 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2777] = 0
                    mem[_2777 + 32] = 0
                    mem[_2777 + 64] = 0
                    mem[_2777 + 96] = 0
                    _2793 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2793] = 0
                    mem[_2793 + 32] = 0
                    mem[_2793 + 64] = 0
                    mem[_2793 + 96] = 0
                    _2809 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2809] = 0
                    mem[_2809 + 32] = 0
                    mem[_2809 + 64] = 0
                    mem[_2809 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2832 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2832] = trade[1].field_0
                    mem[_2832 + 32] = trade[1].field_256
                    mem[_2832 + 64] = trade[1].field_512
                    mem[_2832 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2969 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2969] = 0
                    mem[_2969 + 32] = 0
                    mem[_2969 + 64] = 0
                    mem[_2969 + 96] = 0
                    _2985 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2985] = 0
                    mem[_2985 + 32] = 0
                    mem[_2985 + 64] = 0
                    mem[_2985 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3008 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3008] = trade[1].field_0
                    mem[_3008 + 32] = trade[1].field_256
                    mem[_3008 + 64] = trade[1].field_512
                    mem[_3008 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3129 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3129] == bool(mem[_3129])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3193 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3193] == bool(mem[_3193])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3257 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3257] == mem[_3257 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2761), mem[_3257 + 12 len 20]
                else:
                    mem[_1830 + _1838 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1838
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2762 = mem[_2746]
                    require mem[_2746] == mem[_2746 + 12 len 20]
                    _2778 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2778] = 0
                    mem[_2778 + 32] = 0
                    mem[_2778 + 64] = 0
                    mem[_2778 + 96] = 0
                    _2794 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2794] = 0
                    mem[_2794 + 32] = 0
                    mem[_2794 + 64] = 0
                    mem[_2794 + 96] = 0
                    _2810 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2810] = 0
                    mem[_2810 + 32] = 0
                    mem[_2810 + 64] = 0
                    mem[_2810 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2834 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2834] = trade[1].field_0
                    mem[_2834 + 32] = trade[1].field_256
                    mem[_2834 + 64] = trade[1].field_512
                    mem[_2834 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2970 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2970] = 0
                    mem[_2970 + 32] = 0
                    mem[_2970 + 64] = 0
                    mem[_2970 + 96] = 0
                    _2986 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2986] = 0
                    mem[_2986 + 32] = 0
                    mem[_2986 + 64] = 0
                    mem[_2986 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3010 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3010] = trade[1].field_0
                    mem[_3010 + 32] = trade[1].field_256
                    mem[_3010 + 64] = trade[1].field_512
                    mem[_3010 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3130 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3130] == bool(mem[_3130])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3194 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3194] == bool(mem[_3194])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3258 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3258] == mem[_3258 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2762), mem[_3258 + 12 len 20]
    else:
        mem[_9 + ceil32(return_data.size) + 640] = 0
        mem[ceil32(return_data.size) + 384] = ceil32(return_data.size) + 608
        _446 = mem[_5 + 416]
        require mem[_5 + 416] <= test266151307()
        require _5 + mem[_5 + 416] + 383 < return_data.size + 352
        _448 = mem[_5 + mem[_5 + 416] + 352]
        require mem[_5 + mem[_5 + 416] + 352] <= test266151307()
        _450 = mem[64]
        require mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32 <= test266151307()
        mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 416] + 352]) + 32
        mem[_450] = mem[_5 + mem[_5 + 416] + 352]
        require _5 + _446 + _448 + 32 <= return_data.size
        mem[_450 + 32 len ceil32(_448)] = mem[_5 + _446 + 384 len ceil32(_448)]
        if ceil32(_448) <= _448:
            mem[ceil32(return_data.size) + 416] = _450
            require mem[_5 + 448] == mem[_5 + 460 len 20]
            mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
            require mem[_5 + 480] == mem[_5 + 480]
            mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
            _1113 = mem[_5 + 512]
            require mem[_5 + 512] <= test266151307()
            require _5 + mem[_5 + 512] + 383 < return_data.size + 352
            _1117 = mem[_5 + mem[_5 + 512] + 352]
            require mem[_5 + mem[_5 + 512] + 352] <= test266151307()
            _1121 = mem[64]
            require mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32
            mem[_1121] = _1117
            require _5 + _1113 + _1117 + 32 <= return_data.size
            mem[_1121 + 32 len ceil32(_1117)] = mem[_5 + _1113 + 384 len ceil32(_1117)]
            if ceil32(_1117) <= _1117:
                mem[ceil32(return_data.size) + 512] = _1121
                _1823 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1831 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1839 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1839] = _1831
                require _5 + _1823 + _1831 + 32 <= return_data.size
                mem[_1839 + 32 len ceil32(_1831)] = mem[_5 + _1823 + 384 len ceil32(_1831)]
                if ceil32(_1831) <= _1831:
                    mem[ceil32(return_data.size) + 544] = _1839
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2763 = mem[_2747]
                    require mem[_2747] == mem[_2747 + 12 len 20]
                    _2779 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2779] = 0
                    mem[_2779 + 32] = 0
                    mem[_2779 + 64] = 0
                    mem[_2779 + 96] = 0
                    _2795 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2795] = 0
                    mem[_2795 + 32] = 0
                    mem[_2795 + 64] = 0
                    mem[_2795 + 96] = 0
                    _2811 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2811] = 0
                    mem[_2811 + 32] = 0
                    mem[_2811 + 64] = 0
                    mem[_2811 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2836 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2836] = trade[1].field_0
                    mem[_2836 + 32] = trade[1].field_256
                    mem[_2836 + 64] = trade[1].field_512
                    mem[_2836 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2971 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2971] = 0
                    mem[_2971 + 32] = 0
                    mem[_2971 + 64] = 0
                    mem[_2971 + 96] = 0
                    _2987 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2987] = 0
                    mem[_2987 + 32] = 0
                    mem[_2987 + 64] = 0
                    mem[_2987 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3012 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3012] = trade[1].field_0
                    mem[_3012 + 32] = trade[1].field_256
                    mem[_3012 + 64] = trade[1].field_512
                    mem[_3012 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3131 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3131] == bool(mem[_3131])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3195 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3195] == bool(mem[_3195])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3259 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3259] == mem[_3259 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2763), mem[_3259 + 12 len 20]
                else:
                    mem[_1831 + _1839 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1839
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2764 = mem[_2748]
                    require mem[_2748] == mem[_2748 + 12 len 20]
                    _2780 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2780] = 0
                    mem[_2780 + 32] = 0
                    mem[_2780 + 64] = 0
                    mem[_2780 + 96] = 0
                    _2796 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2796] = 0
                    mem[_2796 + 32] = 0
                    mem[_2796 + 64] = 0
                    mem[_2796 + 96] = 0
                    _2812 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2812] = 0
                    mem[_2812 + 32] = 0
                    mem[_2812 + 64] = 0
                    mem[_2812 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2838 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2838] = trade[1].field_0
                    mem[_2838 + 32] = trade[1].field_256
                    mem[_2838 + 64] = trade[1].field_512
                    mem[_2838 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2972 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2972] = 0
                    mem[_2972 + 32] = 0
                    mem[_2972 + 64] = 0
                    mem[_2972 + 96] = 0
                    _2988 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2988] = 0
                    mem[_2988 + 32] = 0
                    mem[_2988 + 64] = 0
                    mem[_2988 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3014 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3014] = trade[1].field_0
                    mem[_3014 + 32] = trade[1].field_256
                    mem[_3014 + 64] = trade[1].field_512
                    mem[_3014 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3132 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3132] == bool(mem[_3132])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3196] == bool(mem[_3196])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3260 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3260] == mem[_3260 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2764), mem[_3260 + 12 len 20]
            else:
                mem[_1117 + _1121 + 32] = 0
                mem[ceil32(return_data.size) + 512] = _1121
                _1824 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1832 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1840 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1840] = _1832
                require _5 + _1824 + _1832 + 32 <= return_data.size
                mem[_1840 + 32 len ceil32(_1832)] = mem[_5 + _1824 + 384 len ceil32(_1832)]
                if ceil32(_1832) <= _1832:
                    mem[ceil32(return_data.size) + 544] = _1840
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2765 = mem[_2749]
                    require mem[_2749] == mem[_2749 + 12 len 20]
                    _2781 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2781] = 0
                    mem[_2781 + 32] = 0
                    mem[_2781 + 64] = 0
                    mem[_2781 + 96] = 0
                    _2797 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2797] = 0
                    mem[_2797 + 32] = 0
                    mem[_2797 + 64] = 0
                    mem[_2797 + 96] = 0
                    _2813 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2813] = 0
                    mem[_2813 + 32] = 0
                    mem[_2813 + 64] = 0
                    mem[_2813 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2840 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2840] = trade[1].field_0
                    mem[_2840 + 32] = trade[1].field_256
                    mem[_2840 + 64] = trade[1].field_512
                    mem[_2840 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2973 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2973] = 0
                    mem[_2973 + 32] = 0
                    mem[_2973 + 64] = 0
                    mem[_2973 + 96] = 0
                    _2989 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2989] = 0
                    mem[_2989 + 32] = 0
                    mem[_2989 + 64] = 0
                    mem[_2989 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3016 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3016] = trade[1].field_0
                    mem[_3016 + 32] = trade[1].field_256
                    mem[_3016 + 64] = trade[1].field_512
                    mem[_3016 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3133 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3133] == bool(mem[_3133])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3197 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3197] == bool(mem[_3197])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3261 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3261] == mem[_3261 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2765), mem[_3261 + 12 len 20]
                else:
                    mem[_1832 + _1840 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1840
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2750 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2766 = mem[_2750]
                    require mem[_2750] == mem[_2750 + 12 len 20]
                    _2782 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2782] = 0
                    mem[_2782 + 32] = 0
                    mem[_2782 + 64] = 0
                    mem[_2782 + 96] = 0
                    _2798 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2798] = 0
                    mem[_2798 + 32] = 0
                    mem[_2798 + 64] = 0
                    mem[_2798 + 96] = 0
                    _2814 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2814] = 0
                    mem[_2814 + 32] = 0
                    mem[_2814 + 64] = 0
                    mem[_2814 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2842 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2842] = trade[1].field_0
                    mem[_2842 + 32] = trade[1].field_256
                    mem[_2842 + 64] = trade[1].field_512
                    mem[_2842 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2974 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2974] = 0
                    mem[_2974 + 32] = 0
                    mem[_2974 + 64] = 0
                    mem[_2974 + 96] = 0
                    _2990 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2990] = 0
                    mem[_2990 + 32] = 0
                    mem[_2990 + 64] = 0
                    mem[_2990 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3018 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3018] = trade[1].field_0
                    mem[_3018 + 32] = trade[1].field_256
                    mem[_3018 + 64] = trade[1].field_512
                    mem[_3018 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3134 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3134] == bool(mem[_3134])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3198 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3198] == bool(mem[_3198])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3262 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3262] == mem[_3262 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2766), mem[_3262 + 12 len 20]
        else:
            mem[_448 + _450 + 32] = 0
            mem[ceil32(return_data.size) + 416] = _450
            require mem[_5 + 448] == mem[_5 + 460 len 20]
            mem[ceil32(return_data.size) + 448] = mem[_5 + 448]
            require mem[_5 + 480] == mem[_5 + 480]
            mem[ceil32(return_data.size) + 480] = mem[_5 + 480]
            _1114 = mem[_5 + 512]
            require mem[_5 + 512] <= test266151307()
            require _5 + mem[_5 + 512] + 383 < return_data.size + 352
            _1118 = mem[_5 + mem[_5 + 512] + 352]
            require mem[_5 + mem[_5 + 512] + 352] <= test266151307()
            _1122 = mem[64]
            require mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32 <= test266151307()
            mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 512] + 352]) + 32
            mem[_1122] = _1118
            require _5 + _1114 + _1118 + 32 <= return_data.size
            mem[_1122 + 32 len ceil32(_1118)] = mem[_5 + _1114 + 384 len ceil32(_1118)]
            if ceil32(_1118) <= _1118:
                mem[ceil32(return_data.size) + 512] = _1122
                _1825 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1833 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1841 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1841] = _1833
                require _5 + _1825 + _1833 + 32 <= return_data.size
                mem[_1841 + 32 len ceil32(_1833)] = mem[_5 + _1825 + 384 len ceil32(_1833)]
                if ceil32(_1833) <= _1833:
                    mem[ceil32(return_data.size) + 544] = _1841
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2751 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2767 = mem[_2751]
                    require mem[_2751] == mem[_2751 + 12 len 20]
                    _2783 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2783] = 0
                    mem[_2783 + 32] = 0
                    mem[_2783 + 64] = 0
                    mem[_2783 + 96] = 0
                    _2799 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2799] = 0
                    mem[_2799 + 32] = 0
                    mem[_2799 + 64] = 0
                    mem[_2799 + 96] = 0
                    _2815 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2815] = 0
                    mem[_2815 + 32] = 0
                    mem[_2815 + 64] = 0
                    mem[_2815 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2844 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2844] = trade[1].field_0
                    mem[_2844 + 32] = trade[1].field_256
                    mem[_2844 + 64] = trade[1].field_512
                    mem[_2844 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2975 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2975] = 0
                    mem[_2975 + 32] = 0
                    mem[_2975 + 64] = 0
                    mem[_2975 + 96] = 0
                    _2991 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2991] = 0
                    mem[_2991 + 32] = 0
                    mem[_2991 + 64] = 0
                    mem[_2991 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3020 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3020] = trade[1].field_0
                    mem[_3020 + 32] = trade[1].field_256
                    mem[_3020 + 64] = trade[1].field_512
                    mem[_3020 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3135 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3135] == bool(mem[_3135])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3199 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3199] == bool(mem[_3199])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3263] == mem[_3263 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2767), mem[_3263 + 12 len 20]
                else:
                    mem[_1833 + _1841 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1841
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2752 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2768 = mem[_2752]
                    require mem[_2752] == mem[_2752 + 12 len 20]
                    _2784 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2784] = 0
                    mem[_2784 + 32] = 0
                    mem[_2784 + 64] = 0
                    mem[_2784 + 96] = 0
                    _2800 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2800] = 0
                    mem[_2800 + 32] = 0
                    mem[_2800 + 64] = 0
                    mem[_2800 + 96] = 0
                    _2816 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2816] = 0
                    mem[_2816 + 32] = 0
                    mem[_2816 + 64] = 0
                    mem[_2816 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2846 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2846] = trade[1].field_0
                    mem[_2846 + 32] = trade[1].field_256
                    mem[_2846 + 64] = trade[1].field_512
                    mem[_2846 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2976 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2976] = 0
                    mem[_2976 + 32] = 0
                    mem[_2976 + 64] = 0
                    mem[_2976 + 96] = 0
                    _2992 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2992] = 0
                    mem[_2992 + 32] = 0
                    mem[_2992 + 64] = 0
                    mem[_2992 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3022 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3022] = trade[1].field_0
                    mem[_3022 + 32] = trade[1].field_256
                    mem[_3022 + 64] = trade[1].field_512
                    mem[_3022 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3136 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3136] == bool(mem[_3136])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3200 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3200] == bool(mem[_3200])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3264] == mem[_3264 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2768), mem[_3264 + 12 len 20]
            else:
                mem[_1118 + _1122 + 32] = 0
                mem[ceil32(return_data.size) + 512] = _1122
                _1826 = mem[_5 + 544]
                require mem[_5 + 544] <= test266151307()
                require _5 + mem[_5 + 544] + 383 < return_data.size + 352
                _1834 = mem[_5 + mem[_5 + 544] + 352]
                require mem[_5 + mem[_5 + 544] + 352] <= test266151307()
                _1842 = mem[64]
                require mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 >= mem[64] and mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32 <= test266151307()
                mem[64] = mem[64] + ceil32(mem[_5 + mem[_5 + 544] + 352]) + 32
                mem[_1842] = _1834
                require _5 + _1826 + _1834 + 32 <= return_data.size
                mem[_1842 + 32 len ceil32(_1834)] = mem[_5 + _1826 + 384 len ceil32(_1834)]
                if ceil32(_1834) <= _1834:
                    mem[ceil32(return_data.size) + 544] = _1842
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2753 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2769 = mem[_2753]
                    require mem[_2753] == mem[_2753 + 12 len 20]
                    _2785 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2785] = 0
                    mem[_2785 + 32] = 0
                    mem[_2785 + 64] = 0
                    mem[_2785 + 96] = 0
                    _2801 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2801] = 0
                    mem[_2801 + 32] = 0
                    mem[_2801 + 64] = 0
                    mem[_2801 + 96] = 0
                    _2817 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2817] = 0
                    mem[_2817 + 32] = 0
                    mem[_2817 + 64] = 0
                    mem[_2817 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2848 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2848] = trade[1].field_0
                    mem[_2848 + 32] = trade[1].field_256
                    mem[_2848 + 64] = trade[1].field_512
                    mem[_2848 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2977 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2977] = 0
                    mem[_2977 + 32] = 0
                    mem[_2977 + 64] = 0
                    mem[_2977 + 96] = 0
                    _2993 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2993] = 0
                    mem[_2993 + 32] = 0
                    mem[_2993 + 64] = 0
                    mem[_2993 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3024 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3024] = trade[1].field_0
                    mem[_3024 + 32] = trade[1].field_256
                    mem[_3024 + 64] = trade[1].field_512
                    mem[_3024 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3137 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3137] == bool(mem[_3137])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3201 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3201] == bool(mem[_3201])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3265 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3265] == mem[_3265 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2769), mem[_3265 + 12 len 20]
                else:
                    mem[_1834 + _1842 + 32] = 0
                    mem[ceil32(return_data.size) + 544] = _1842
                    require mem[_5 + 576] == mem[_5 + 576]
                    mem[ceil32(return_data.size) + 576] = mem[_5 + 576]
                    if mem[ceil32(return_data.size) + 480] != msg.value:
                        revert with 0, 'msg.value should be equal to the buyAmount'
                    call mem[ceil32(return_data.size) + 460 len 20] with:
                       value mem[ceil32(return_data.size) + 480] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 36] = 1
                    require ext_code.size(address(arg1))
                    call address(arg1).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2754 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _2770 = mem[_2754]
                    require mem[_2754] == mem[_2754 + 12 len 20]
                    _2786 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2786] = 0
                    mem[_2786 + 32] = 0
                    mem[_2786 + 64] = 0
                    mem[_2786 + 96] = 0
                    _2802 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2802] = 0
                    mem[_2802 + 32] = 0
                    mem[_2802 + 64] = 0
                    mem[_2802 + 96] = 0
                    _2818 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2818] = 0
                    mem[_2818 + 32] = 0
                    mem[_2818 + 64] = 0
                    mem[_2818 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _2850 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2850] = trade[1].field_0
                    mem[_2850 + 32] = trade[1].field_256
                    mem[_2850 + 64] = trade[1].field_512
                    mem[_2850 + 96] = trade[1].field_768
                    if trade[1].field_768 != 0x4f70656e00000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'Trade is not Open.'
                    mem[0] = 1
                    mem[32] = 2
                    trade[1].field_0 = msg.sender
                    mem[mem[64] + 68] = trade[1].field_256
                    require ext_code.size(address(arg1))
                    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), msg.sender, trade[1].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _2978 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2978] = 0
                    mem[_2978 + 32] = 0
                    mem[_2978 + 64] = 0
                    mem[_2978 + 96] = 0
                    _2994 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_2994] = 0
                    mem[_2994 + 32] = 0
                    mem[_2994 + 64] = 0
                    mem[_2994 + 96] = 0
                    mem[0] = 1
                    mem[32] = 2
                    _3026 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_3026] = trade[1].field_0
                    mem[_3026 + 32] = trade[1].field_256
                    mem[_3026 + 64] = trade[1].field_512
                    mem[_3026 + 96] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[0] = 1
                    emit 0xfe4d38ed: 1, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = msg.sender
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x7cb1479b with:
                         gas gas_remaining wei
                        args address(arg1), msg.sender
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3138 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3138] == bool(mem[_3138])
                    mem[mem[64] + 4] = address(arg1)
                    mem[mem[64] + 36] = 64
                    mem[mem[64] + 68] = 9
                    mem[mem[64] + 100] = 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    require ext_code.size(sub_ec039514Address)
                    call sub_ec039514Address.0x9bab7f4a with:
                         gas gas_remaining wei
                        args address(arg1), 64, 9, 0x43616e63656c6c65640000000000000000000000000000000000000000000000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3202] == bool(mem[_3202])
                    mem[mem[64] + 4] = 1
                    require ext_code.size(address(arg1))
                    staticcall address(arg1).ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args 1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3266 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3266] == mem[_3266 + 12 len 20]
                    emit 0xa8ffd005: address(arg1), 1, address(_2770), mem[_3266 + 12 len 20]
    return 0
}



}
