contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
address stor3;
uint256 stor4;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function setMinBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor4 = arg1
}

function allow(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function sub_860737cd(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(stor0)
    call stor0.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
}

function withdrawFTM(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1c3133cf(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_ddb912b0(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (256 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 256
        _248 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_248] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_248 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_248 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_248 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_248 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_248 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_248 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_248 + 224] = cd[(s + 224)]
        mem[t] = _248
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        if not mem[mem[(32 * idx) + 128] + 192]:
            idx = idx + 1
            continue 
        _737 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _737:
            _741 = mem[64]
            mem[64] = mem[64] + 256
            mem[_741] = 0
            mem[_741 + 32] = 0
            mem[_741 + 64] = 0
            mem[_741 + 96] = 0
            mem[_741 + 128] = 0
            mem[_741 + 160] = 0
            mem[_741 + 192] = 0
            mem[_741 + 224] = 0
            require idx < mem[96]
            _747 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                _759 = mem[mem[(32 * idx) + 128] + 32]
                _760 = mem[mem[(32 * idx) + 128] + 128]
                _766 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_766][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 224]:
                        _796 = mem[mem[(32 * idx) + 128] + 32]
                        _797 = mem[mem[(32 * idx) + 128] + 64]
                        _798 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_797'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_798'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_796))
                        call address(_796).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_797')), ('signextend', 15, ('var', '_798')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _857 = mem[_747 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_857))
                        staticcall address(_857).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _888 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_888] == mem[_888]
                        _737 = mem[96]
                        idx = idx + 1
                        s = mem[_888]
                        continue 
                    _800 = mem[mem[(32 * idx) + 128] + 32]
                    _801 = mem[mem[(32 * idx) + 128] + 64]
                    _802 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_801'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_802'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_800))
                    call address(_800).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_801')), ('signextend', 15, ('var', '_802')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _859 = mem[_747 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_859))
                    staticcall address(_859).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_889] == mem[_889]
                    _737 = mem[96]
                    idx = idx + 1
                    s = mem[_889]
                    continue 
                mem[mem[64] + 4] = address(_759)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_760))
                call address(_760).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_759), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _822 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_822] == bool(mem[_822])
                mem[0] = address(_760)
                mem[32] = sha3(address(_759), 1)
                if not mem[_747 + 224]:
                    _844 = mem[_747 + 32]
                    _845 = mem[_747 + 64]
                    _846 = mem[_747 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_845'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_846'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_844))
                    call address(_844).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_845')), ('signextend', 15, ('var', '_846')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _910 = mem[_747 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_910))
                    staticcall address(_910).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _937 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_937] == mem[_937]
                    _737 = mem[96]
                    idx = idx + 1
                    s = mem[_937]
                    continue 
                _848 = mem[_747 + 32]
                _849 = mem[_747 + 64]
                _850 = mem[_747 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_849'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_850'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_848))
                call address(_848).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_849')), ('signextend', 15, ('var', '_850')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _912 = mem[_747 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_912))
                staticcall address(_912).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _938 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_938] == mem[_938]
                _737 = mem[96]
                idx = idx + 1
                s = mem[_938]
                continue 
            _756 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_756 + 32 len 64] = code.data[6449 len 64]
            require 0 < mem[_756]
            mem[_756 + 32] = mem[_747 + 140 len 20]
            require 1 < mem[_756]
            mem[_756 + 64] = mem[_747 + 172 len 20]
            _770 = mem[_747]
            _771 = mem[_747 + 128]
            mem[0] = mem[_747 + 12 len 20]
            _779 = sha3(mem[0], 1)
            mem[0] = address(_771)
            mem[32] = _779
            if stor[_779][address(_771)]:
                _805 = mem[_747]
                mem[_756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_756 + 100] = s
                mem[_756 + 132] = 1
                mem[_756 + 164] = 160
                mem[_756 + 260] = mem[_756]
                s = 0
                t = _756 + 32
                u = _756 + 292
                while s < mem[_756]:
                    mem[u] = mem[t + 12 len 20]
                    _737 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_756 + 196] = this.address
                mem[_756 + 228] = block.timestamp + 1000
                require ext_code.size(address(_805))
                call address(_805).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _756 + (32 * mem[_756]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1015 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1018 = mem[_1015]
                require mem[_1015] <= test266151307()
                require _1015 + mem[_1015] + 31 < _1015 + return_data.size
                _1023 = mem[_1015 + mem[_1015]]
                require mem[_1015 + mem[_1015]] <= test266151307()
                require (32 * mem[_1015 + mem[_1015]]) + 32 >= 0 and _1015 + ceil32(return_data.size) + (32 * mem[_1015 + mem[_1015]]) + 32 <= test266151307()
                mem[64] = _1015 + ceil32(return_data.size) + (32 * mem[_1015 + mem[_1015]]) + 32
                mem[_1015 + ceil32(return_data.size)] = _1023
                require _1018 + (32 * _1023) + 32 <= return_data.size
                s = 0
                t = _1015 + _1018 + 32
                u = _1015 + ceil32(return_data.size) + 32
                while s < _1023:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _737 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _1109 = mem[_747 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1109))
                staticcall address(_1109).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1116 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1116] == mem[_1116]
                _737 = mem[96]
                idx = idx + 1
                s = mem[_1116]
                continue 
            mem[_756 + 100] = address(_770)
            mem[_756 + 132] = -1
            require ext_code.size(address(_771))
            call address(_771).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_770), -1
            mem[_756 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _756 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_771)
            mem[32] = sha3(address(_770), 1)
            _855 = mem[_747]
            mem[_756 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_756 + ceil32(return_data.size) + 100] = s
            mem[_756 + ceil32(return_data.size) + 132] = 1
            mem[_756 + ceil32(return_data.size) + 164] = 160
            mem[_756 + ceil32(return_data.size) + 260] = mem[_756]
            t = 0
            u = _756 + 32
            v = _756 + ceil32(return_data.size) + 292
            while t < mem[_756]:
                mem[v] = mem[u + 12 len 20]
                _737 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_756 + ceil32(return_data.size) + 196] = this.address
            mem[_756 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_855))
            call address(_855).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_756 + ceil32(return_data.size) + 260 len (32 * mem[_756]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_756 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _756 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _1017 = mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
            require _756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _756 + ceil32(return_data.size) + return_data.size + 96
            _1022 = mem[_756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require mem[_756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
            require (32 * mem[_756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _756 + (2 * ceil32(return_data.size)) + (32 * mem[_756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _756 + (2 * ceil32(return_data.size)) + (32 * mem[_756 + ceil32(return_data.size) + mem[_756 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
            mem[_756 + (2 * ceil32(return_data.size)) + 96] = _1022
            require _1017 + (32 * _1022) + 32 <= return_data.size
            s = 0
            t = _756 + ceil32(return_data.size) + _1017 + 128
            u = _756 + (2 * ceil32(return_data.size)) + 128
            while s < _1022:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _737 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1107 = mem[_747 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1107))
            staticcall address(_1107).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1115] == mem[_1115]
            _737 = mem[96]
            idx = idx + 1
            s = mem[_1115]
            continue 
        if s <= cd[36]:
            revert with 0, 'P'
        if eth.balance(msg.sender) < stor4:
            require ext_code.size(stor0)
            call stor0.withdraw(uint256 rg1) with:
                 gas gas_remaining wei
                args stor4
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value stor4 wei
                 gas 2300 * is_zero(value) wei
    _736 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _736:
        _739 = mem[64]
        mem[64] = mem[64] + 256
        mem[_739] = 0
        mem[_739 + 32] = 0
        mem[_739 + 64] = 0
        mem[_739 + 96] = 0
        mem[_739 + 128] = 0
        mem[_739 + 160] = 0
        mem[_739 + 192] = 0
        mem[_739 + 224] = 0
        require idx < mem[96]
        _746 = mem[(32 * idx) + 128]
        _751 = mem[mem[(32 * idx) + 128] + 32]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _763 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _785 = mem[_763]
        require mem[_763] == mem[_763 + 18 len 14]
        _819 = mem[_763 + 32]
        require mem[_763 + 32] == mem[_763 + 50 len 14]
        require mem[_763 + 64] == mem[_763 + 92 len 4]
        require ext_code.size(address(_751))
        staticcall address(_751).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _840 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_840] == mem[_840 + 12 len 20]
        if mem[_746 + 140 len 20] == mem[_840 + 12 len 20]:
            _880 = mem[_746]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _785)
            mem[mem[64] + 68] = Mask(112, 0, _819)
            require ext_code.size(address(_880))
            staticcall address(_880).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s, _785 << 144, Mask(112, 0, _819)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _924 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_924] == mem[_924]
            _736 = mem[96]
            idx = idx + 1
            s = mem[_924]
            continue 
        _882 = mem[_746]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = Mask(112, 0, _819)
        mem[mem[64] + 68] = Mask(112, 0, _785)
        require ext_code.size(address(_882))
        staticcall address(_882).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args s, _819 << 144, Mask(112, 0, _785)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _925 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_925] == mem[_925]
        _736 = mem[96]
        idx = idx + 1
        s = mem[_925]
        continue 
    if s <= cd[36]:
        revert with 0, 'P_CALC'
    _974 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _974:
        _978 = mem[64]
        mem[64] = mem[64] + 256
        mem[_978] = 0
        mem[_978 + 32] = 0
        mem[_978 + 64] = 0
        mem[_978 + 96] = 0
        mem[_978 + 128] = 0
        mem[_978 + 160] = 0
        mem[_978 + 192] = 0
        mem[_978 + 224] = 0
        require idx < mem[96]
        _981 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 192]:
            _986 = mem[mem[(32 * idx) + 128] + 32]
            _987 = mem[mem[(32 * idx) + 128] + 128]
            _990 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_990][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _1002 = mem[mem[(32 * idx) + 128] + 32]
                    _1003 = mem[mem[(32 * idx) + 128] + 64]
                    _1004 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1003'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1004'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1002))
                    call address(_1002).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1003')), ('signextend', 15, ('var', '_1004')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1047 = mem[_981 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1047))
                    staticcall address(_1047).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1061 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1061] == mem[_1061]
                    _974 = mem[96]
                    idx = idx + 1
                    s = mem[_1061]
                    continue 
                _1006 = mem[mem[(32 * idx) + 128] + 32]
                _1007 = mem[mem[(32 * idx) + 128] + 64]
                _1008 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1007'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1008'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1006))
                call address(_1006).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1007')), ('signextend', 15, ('var', '_1008')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1049 = mem[_981 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1049))
                staticcall address(_1049).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1062 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1062] == mem[_1062]
                _974 = mem[96]
                idx = idx + 1
                s = mem[_1062]
                continue 
            mem[mem[64] + 4] = address(_986)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_987))
            call address(_987).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_986), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1020 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1020] == bool(mem[_1020])
            mem[0] = address(_987)
            mem[32] = sha3(address(_986), 1)
            if not mem[_981 + 224]:
                _1035 = mem[_981 + 32]
                _1036 = mem[_981 + 64]
                _1037 = mem[_981 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1036'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1037'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1035))
                call address(_1035).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1036')), ('signextend', 15, ('var', '_1037')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1075 = mem[_981 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1075))
                staticcall address(_1075).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1086 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1086] == mem[_1086]
                _974 = mem[96]
                idx = idx + 1
                s = mem[_1086]
                continue 
            _1039 = mem[_981 + 32]
            _1040 = mem[_981 + 64]
            _1041 = mem[_981 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_1040'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_1041'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_1039))
            call address(_1039).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_1040')), ('signextend', 15, ('var', '_1041')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1077 = mem[_981 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1077))
            staticcall address(_1077).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1087 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1087] == mem[_1087]
            _974 = mem[96]
            idx = idx + 1
            s = mem[_1087]
            continue 
        _983 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_983 + 32 len 64] = code.data[6449 len 64]
        require 0 < mem[_983]
        mem[_983 + 32] = mem[_981 + 140 len 20]
        require 1 < mem[_983]
        mem[_983 + 64] = mem[_981 + 172 len 20]
        _993 = mem[_981]
        _994 = mem[_981 + 128]
        mem[0] = mem[_981 + 12 len 20]
        _997 = sha3(mem[0], 1)
        mem[0] = address(_994)
        mem[32] = _997
        if stor[_997][address(_994)]:
            _1010 = mem[_981]
            mem[_983 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_983 + 100] = s
            mem[_983 + 132] = 1
            mem[_983 + 164] = 160
            mem[_983 + 260] = mem[_983]
            s = 0
            t = _983 + 32
            u = _983 + 292
            while s < mem[_983]:
                mem[u] = mem[t + 12 len 20]
                _974 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_983 + 196] = this.address
            mem[_983 + 228] = block.timestamp + 1000
            require ext_code.size(address(_1010))
            call address(_1010).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _983 + (32 * mem[_983]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1118 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1122 = mem[_1118]
            require mem[_1118] <= test266151307()
            require _1118 + mem[_1118] + 31 < _1118 + return_data.size
            _1124 = mem[_1118 + mem[_1118]]
            require mem[_1118 + mem[_1118]] <= test266151307()
            require (32 * mem[_1118 + mem[_1118]]) + 32 >= 0 and _1118 + ceil32(return_data.size) + (32 * mem[_1118 + mem[_1118]]) + 32 <= test266151307()
            mem[64] = _1118 + ceil32(return_data.size) + (32 * mem[_1118 + mem[_1118]]) + 32
            mem[_1118 + ceil32(return_data.size)] = _1124
            require _1122 + (32 * _1124) + 32 <= return_data.size
            s = 0
            t = _1118 + _1122 + 32
            u = _1118 + ceil32(return_data.size) + 32
            while s < _1124:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _974 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1143 = mem[_981 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1143))
            staticcall address(_1143).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1148 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1148] == mem[_1148]
            _974 = mem[96]
            idx = idx + 1
            s = mem[_1148]
            continue 
        mem[_983 + 100] = address(_993)
        mem[_983 + 132] = -1
        require ext_code.size(address(_994))
        call address(_994).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_993), -1
        mem[_983 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _983 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = address(_994)
        mem[32] = sha3(address(_993), 1)
        _1045 = mem[_981]
        mem[_983 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_983 + ceil32(return_data.size) + 100] = s
        mem[_983 + ceil32(return_data.size) + 132] = 1
        mem[_983 + ceil32(return_data.size) + 164] = 160
        mem[_983 + ceil32(return_data.size) + 260] = mem[_983]
        s = 0
        t = _983 + 32
        u = _983 + ceil32(return_data.size) + 292
        while s < mem[_983]:
            mem[u] = mem[t + 12 len 20]
            _974 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        mem[_983 + ceil32(return_data.size) + 196] = this.address
        mem[_983 + ceil32(return_data.size) + 228] = block.timestamp + 1000
        require ext_code.size(address(_1045))
        call address(_1045).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _983 + ceil32(return_data.size) + (32 * mem[_983]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1117 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1121 = mem[_1117]
        require mem[_1117] <= test266151307()
        require _1117 + mem[_1117] + 31 < _1117 + return_data.size
        _1123 = mem[_1117 + mem[_1117]]
        require mem[_1117 + mem[_1117]] <= test266151307()
        require (32 * mem[_1117 + mem[_1117]]) + 32 >= 0 and _1117 + ceil32(return_data.size) + (32 * mem[_1117 + mem[_1117]]) + 32 <= test266151307()
        mem[64] = _1117 + ceil32(return_data.size) + (32 * mem[_1117 + mem[_1117]]) + 32
        mem[_1117 + ceil32(return_data.size)] = _1123
        require _1121 + (32 * _1123) + 32 <= return_data.size
        s = 0
        t = _1117 + _1121 + 32
        u = _1117 + ceil32(return_data.size) + 32
        while s < _1123:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _974 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _1141 = mem[_981 + 160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1141))
        staticcall address(_1141).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1147 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1147] == mem[_1147]
        _974 = mem[96]
        idx = idx + 1
        s = mem[_1147]
        continue 
    if s <= cd[36]:
        revert with 0, 'P'
    if eth.balance(msg.sender) < stor4:
        require ext_code.size(stor0)
        call stor0.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args stor4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
}



}
