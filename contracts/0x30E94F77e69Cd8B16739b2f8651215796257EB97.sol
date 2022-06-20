contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == cd[4]
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'CurveCryptoAdaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 'NH{q', 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
    mem[128] = 0x321162cd933e2be498cd2267a90534a804051b11
    mem[160] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
    idx = 0
    while idx < 3:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 'NH{q', 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[192] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[224] = 0x321162cd933e2be498cd2267a90534a804051b11
        mem[256] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        s = 0
        while s < 3:
            if address(('cd', 100)[1]) != mem[(32 * s) + 204 len 20]:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                continue 
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).get_dy(uint256 arg1, uint256 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args idx, s, cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            return ext_call.return_data[0]
        revert with 0, 'CurveCryptoAdaptor: TokenError'
    revert with 0, 'CurveCryptoAdaptor: TokenError'
}

function sub_b9dfb211(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == address(cd[68])
    require cd[100] == cd[100]
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    if ('cd', 132).length != 2:
        revert with 0, 'CurveCryptoAdaptor: PathError'
    if address(cd[164]) == this.address:
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[96] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[128] = 0x321162cd933e2be498cd2267a90534a804051b11
        mem[160] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        idx = 0
        while idx < 3:
            if address(('cd', 132)[0]) != mem[(32 * idx) + 108 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[192] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            mem[224] = 0x321162cd933e2be498cd2267a90534a804051b11
            mem[256] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            s = 0
            while s < 3:
                if address(('cd', 132)[1]) != mem[(32 * s) + 204 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                require ext_code.size(address(cd[68]))
                call address(cd[68]).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args idx, s, cd[4], cd[36], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'CurveCryptoAdaptor: TokenError'
    else:
        if ('cd', 132).length < 1:
            revert with 'NH{q', 17
        if ('cd', 132).length - 1 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)])
        mem[100] = this.address
        require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
        staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if 0 >= ('cd', 132).length:
            revert with 'NH{q', 50
        require ('cd', 132)[0] == address(('cd', 132)[0])
        mem[ceil32(return_data.size) + 96] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
        mem[ceil32(return_data.size) + 128] = 0x321162cd933e2be498cd2267a90534a804051b11
        mem[ceil32(return_data.size) + 160] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
        idx = 0
        while idx < 3:
            if address(('cd', 132)[0]) != mem[(32 * idx) + ceil32(return_data.size) + 108 len 20]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if 1 >= ('cd', 132).length:
                revert with 'NH{q', 50
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[ceil32(return_data.size) + 192] = 0x49d68029688eabf473097a2fc38ef61633a3c7a
            mem[ceil32(return_data.size) + 224] = 0x321162cd933e2be498cd2267a90534a804051b11
            mem[ceil32(return_data.size) + 256] = 0x74b23882a30290451a17c44f4f05243b6b58c76d
            s = 0
            while s < 3:
                if address(('cd', 132)[1]) != mem[(32 * s) + ceil32(return_data.size) + 204 len 20]:
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    continue 
                require ext_code.size(address(cd[68]))
                call address(cd[68]).exchange(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
                     gas gas_remaining wei
                    args idx, s, cd[4], cd[36], 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]))
                staticcall address(cd[((32 * ('cd', 132).length - 1) + cd[132] + 36)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 'NH{q', 17
                revert with 0, 'CurveCryptoPoolAdaptor: INSUFFICIENT_OUTPUT'
            revert with 0, 'CurveCryptoAdaptor: TokenError'
    revert with 0, 'CurveCryptoAdaptor: TokenError'
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = 96
    mem[384] = 0
    mem[416] = 0
    mem[448] = 96
    mem[480] = 0
    mem[512] = 0
    mem[352] = block.number
    require ext_code.size(arg1)
    staticcall arg1.A() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[288] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.D() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[320] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x92526c0c with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[224] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0xee8de675 with:
            gas gas_remaining wei
    mem[(4 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[256] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.gamma() with:
            gas gas_remaining wei
    mem[(6 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[160] = ext_call.return_data[0]
    require ext_code.size(arg1)
    staticcall arg1.0x72d4f0e2 with:
            gas gas_remaining wei
    mem[(7 * ceil32(return_data.size)) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[192] = ext_call.return_data[0]
    mem[(8 * ceil32(return_data.size)) + 544] = 2
    mem[64] = (8 * ceil32(return_data.size)) + 640
    mem[(8 * ceil32(return_data.size)) + 576 len 64] = call.data[calldata.size len 64]
    mem[96] = (8 * ceil32(return_data.size)) + 544
    if var148002 < 2:
        mem[(8 * ceil32(return_data.size)) + 640] = 0xa3f7cdd500000000000000000000000000000000000000000000000000000000
        mem[var158003] = var158001
        require ext_code.size(arg1)
        staticcall arg1.mem[var164003 len 4] with:
                gas gas_remaining wei
               args mem[var164003 + 4 len var164004 - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require var168002 - var168001 >= 32
        # nil
    else:
        mem[(8 * ceil32(return_data.size)) + 640] = 3
        mem[64] = (8 * ceil32(return_data.size)) + 768
        mem[(8 * ceil32(return_data.size)) + 672 len 96] = call.data[calldata.size len 96]
        mem[128] = (8 * ceil32(return_data.size)) + 640
        idx = 0
        while idx < 3:
            mem[mem[64] + 4] = idx
            require ext_code.size(arg1)
            staticcall arg1.balances(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_153] == mem[_153]
            if idx >= mem[mem[128]]:
                revert with 'NH{q', 50
            mem[(32 * idx) + mem[128] + 32] = mem[_153]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        _147 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = 288
        _149 = mem[mem[96]]
        mem[mem[64] + 352] = mem[mem[96]]
        mem[mem[64] + 384 len 32 * _149] = mem[mem[96] + 32 len 32 * _149]
        _188 = mem[128]
        mem[mem[64] + 96] = (32 * _149) + 320
        _189 = mem[mem[128]]
        mem[mem[64] + (32 * _149) + 384] = mem[mem[128]]
        mem[mem[64] + (32 * _149) + 416 len 32 * _189] = mem[_188 + 32 len 32 * _189]
        mem[mem[64] + 128] = mem[160]
        mem[mem[64] + 160] = mem[192]
        mem[mem[64] + 192] = mem[224]
        mem[mem[64] + 224] = mem[256]
        mem[mem[64] + 256] = mem[288]
        mem[mem[64] + 288] = mem[320]
        mem[mem[64] + 320] = mem[352]
        mem[mem[64] + 32] = (32 * _149) + (32 * _189) + 416
        mem[_147 + (32 * _149) + (32 * _189) + 416] = mem[384]
        mem[_147 + (32 * _149) + (32 * _189) + 448] = mem[416]
        mem[_147 + (32 * _149) + (32 * _189) + 480] = 160
        _238 = mem[mem[448]]
        mem[_147 + (32 * _149) + (32 * _189) + 576] = mem[mem[448]]
        mem[_147 + (32 * _149) + (32 * _189) + 608 len 32 * _238] = mem[mem[448] + 32 len 32 * _238]
        mem[_147 + (32 * _149) + (32 * _189) + 512] = mem[480]
        mem[_147 + (32 * _149) + (32 * _189) + 544] = mem[512]
        return memory
          from mem[64]
           len _147 + (32 * _149) + (32 * _189) + (32 * _238) + -mem[64] + 608
}



}
