contract main {




// =====================  Runtime code  =====================


address sub_2f03e688Address;
address rmAddress;
mapping of address stor2;
array of uint256 stor3;

function sub_2f03e688(?) payable {
    return sub_2f03e688Address
}

function rm() payable {
    return rmAddress
}

function _fallback() payable {
    revert
}

function withdraw() payable {
    idx = 0
    while idx < stor3[msg.sender]:
        if idx >= stor3[msg.sender]:
            revert with 0, 50
        require stor2[stor3[msg.sender][idx]] == msg.sender
        if idx >= stor3[msg.sender]:
            revert with 0, 50
        stor2[stor3[msg.sender][idx]] = 0
        mem[96] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = msg.sender
        mem[164] = stor3[msg.sender][idx]
        require ext_code.size(rmAddress)
        call rmAddress.0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, stor3[msg.sender][idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        mem[0] = msg.sender
        mem[32] = 3
        idx = idx + 1
        continue 
    stor3[msg.sender] = 0
    idx = 0
    while stor3[msg.sender] > idx:
        stor3[msg.sender][idx] = 0
        idx = idx + 1
        continue 
}

function deposit(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        _20 = mem[(32 * idx) + 128]
        mem[ceil32(32 * arg1.length) + 97] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg1.length) + 101] = msg.sender
        mem[ceil32(32 * arg1.length) + 133] = this.address
        mem[ceil32(32 * arg1.length) + 165] = _20
        require ext_code.size(rmAddress)
        call rmAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, _20
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor2[_20] = msg.sender
        mem[32] = 3
        stor3[address(msg.sender)]++
        mem[0] = sha3(address(msg.sender), 3)
        stor3[address(msg.sender)][stor3[address(msg.sender)]] = _20
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_7d86d43a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _106 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(rmAddress)
        staticcall rmAddress.class(uint256 arg1) with:
                gas gas_remaining wei
               args _106
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _109 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if 1 == mem[_109]:
            if idx >= mem[96]:
                revert with 0, 50
            _113 = mem[(32 * idx) + 128]
            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _113
            mem[mem[64] + 36] = 16
            mem[mem[64] + 68] = 16
            mem[mem[64] + 100] = 16
            mem[mem[64] + 132] = 8
            mem[mem[64] + 164] = 10
            mem[mem[64] + 196] = 8
            require ext_code.size(sub_2f03e688Address)
            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                 gas gas_remaining wei
                args _113, 16, 16, 16, 8, 10, 8
        else:
            if 2 == mem[_109]:
                if idx >= mem[96]:
                    revert with 0, 50
                _117 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _117
                mem[mem[64] + 36] = 8
                mem[mem[64] + 68] = 14
                mem[mem[64] + 100] = 10
                mem[mem[64] + 132] = 15
                mem[mem[64] + 164] = 14
                mem[mem[64] + 196] = 16
                require ext_code.size(sub_2f03e688Address)
                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                     gas gas_remaining wei
                    args _117, 8, 14, 10, 15, 14, 16
            else:
                if 3 == mem[_109]:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _121 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _121
                    mem[mem[64] + 36] = 13
                    mem[mem[64] + 68] = 13
                    mem[mem[64] + 100] = 14
                    mem[mem[64] + 132] = 8
                    mem[mem[64] + 164] = 18
                    mem[mem[64] + 196] = 8
                    require ext_code.size(sub_2f03e688Address)
                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                         gas gas_remaining wei
                        args _121, 13, 13, 14, 8, 18, 8
                else:
                    if 4 == mem[_109]:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _125 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _125
                        mem[mem[64] + 36] = 8
                        mem[mem[64] + 68] = 12
                        mem[mem[64] + 100] = 16
                        mem[mem[64] + 132] = 9
                        mem[mem[64] + 164] = 18
                        mem[mem[64] + 196] = 9
                        require ext_code.size(sub_2f03e688Address)
                        call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                             gas gas_remaining wei
                            args _125, 8, 12, 16, 9, 18, 9
                    else:
                        if 5 == mem[_109]:
                            if idx >= mem[96]:
                                revert with 0, 50
                            _129 = mem[(32 * idx) + 128]
                            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = _129
                            mem[mem[64] + 36] = 17
                            mem[mem[64] + 68] = 9
                            mem[mem[64] + 100] = 16
                            mem[mem[64] + 132] = 8
                            mem[mem[64] + 164] = 15
                            mem[mem[64] + 196] = 8
                            require ext_code.size(sub_2f03e688Address)
                            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                 gas gas_remaining wei
                                args _129, 17, 9, 16, 8, 15, 8
                        else:
                            if 6 == mem[_109]:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _133 = mem[(32 * idx) + 128]
                                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _133
                                mem[mem[64] + 36] = 8
                                mem[mem[64] + 68] = 18
                                mem[mem[64] + 100] = 15
                                mem[mem[64] + 132] = 7
                                mem[mem[64] + 164] = 15
                                mem[mem[64] + 196] = 8
                                require ext_code.size(sub_2f03e688Address)
                                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                     gas gas_remaining wei
                                    args _133, 8, 18, 15, 7, 15, 8
                            else:
                                if 7 == mem[_109]:
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _137 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _137
                                    mem[mem[64] + 36] = 16
                                    mem[mem[64] + 68] = 10
                                    mem[mem[64] + 100] = 16
                                    mem[mem[64] + 132] = 10
                                    mem[mem[64] + 164] = 10
                                    mem[mem[64] + 196] = 14
                                    require ext_code.size(sub_2f03e688Address)
                                    call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                         gas gas_remaining wei
                                        args _137, 16, 10, 16, 10, 10, 14
                                else:
                                    if 8 == mem[_109]:
                                        if idx >= mem[96]:
                                            revert with 0, 50
                                        _141 = mem[(32 * idx) + 128]
                                        mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _141
                                        mem[mem[64] + 36] = 8
                                        mem[mem[64] + 68] = 18
                                        mem[mem[64] + 100] = 15
                                        mem[mem[64] + 132] = 8
                                        mem[mem[64] + 164] = 15
                                        mem[mem[64] + 196] = 8
                                        require ext_code.size(sub_2f03e688Address)
                                        call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                             gas gas_remaining wei
                                            args _141, 8, 18, 15, 8, 15, 8
                                    else:
                                        if 9 == mem[_109]:
                                            if idx >= mem[96]:
                                                revert with 0, 50
                                            _145 = mem[(32 * idx) + 128]
                                            mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _145
                                            mem[mem[64] + 36] = 8
                                            mem[mem[64] + 68] = 16
                                            mem[mem[64] + 100] = 14
                                            mem[mem[64] + 132] = 14
                                            mem[mem[64] + 164] = 12
                                            mem[mem[64] + 196] = 14
                                            require ext_code.size(sub_2f03e688Address)
                                            call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                 gas gas_remaining wei
                                                args _145, 8, 16, 14, 14, 12, 14
                                        else:
                                            if 10 == mem[_109]:
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                _149 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _149
                                                mem[mem[64] + 36] = 9
                                                mem[mem[64] + 68] = 15
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 9
                                                mem[mem[64] + 164] = 9
                                                mem[mem[64] + 196] = 17
                                                require ext_code.size(sub_2f03e688Address)
                                                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args _149, 9, 15, 15, 9, 9, 17
                                            else:
                                                require 11 == mem[_109]
                                                if idx >= mem[96]:
                                                    revert with 0, 50
                                                _152 = mem[(32 * idx) + 128]
                                                mem[mem[64]] = 0xc3c2407c00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _152
                                                mem[mem[64] + 36] = 8
                                                mem[mem[64] + 68] = 14
                                                mem[mem[64] + 100] = 15
                                                mem[mem[64] + 132] = 17
                                                mem[mem[64] + 164] = 13
                                                mem[mem[64] + 196] = 8
                                                require ext_code.size(sub_2f03e688Address)
                                                call sub_2f03e688Address.point_buy(uint256 arg1, uint32 arg2, uint32 arg3, uint32 arg4, uint32 arg5, uint32 arg6, uint32 arg7) with:
                                                     gas gas_remaining wei
                                                    args _152, 8, 14, 15, 17, 13, 8
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
