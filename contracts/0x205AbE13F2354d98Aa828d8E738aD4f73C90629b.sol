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
        _256 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_256] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_256 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_256 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_256 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_256 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_256 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_256 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_256 + 224] = cd[(s + 224)]
        mem[t] = _256
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
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor0)
        staticcall stor0.balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _530 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _533 = mem[_530]
        require mem[_530] == mem[_530]
        _761 = mem[96]
        idx = 0
        s = cd[36]
        while idx < _761:
            _766 = mem[64]
            mem[64] = mem[64] + 256
            mem[_766] = 0
            mem[_766 + 32] = 0
            mem[_766 + 64] = 0
            mem[_766 + 96] = 0
            mem[_766 + 128] = 0
            mem[_766 + 160] = 0
            mem[_766 + 192] = 0
            mem[_766 + 224] = 0
            require idx < mem[96]
            _771 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                _779 = mem[mem[(32 * idx) + 128] + 32]
                _780 = mem[mem[(32 * idx) + 128] + 128]
                _784 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_784][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 224]:
                        _798 = mem[mem[(32 * idx) + 128] + 32]
                        _799 = mem[mem[(32 * idx) + 128] + 64]
                        _800 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_799'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_800'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_798))
                        call address(_798).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_799')), ('signextend', 15, ('var', '_800')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _859 = mem[_771 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_859))
                        staticcall address(_859).balanceOf(address rg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _892 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_892] == mem[_892]
                        _761 = mem[96]
                        idx = idx + 1
                        s = mem[_892]
                        continue 
                    _802 = mem[mem[(32 * idx) + 128] + 32]
                    _803 = mem[mem[(32 * idx) + 128] + 64]
                    _804 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_803'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_804'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_802))
                    call address(_802).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_803')), ('signextend', 15, ('var', '_804')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _861 = mem[_771 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_861))
                    staticcall address(_861).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_893] == mem[_893]
                    _761 = mem[96]
                    idx = idx + 1
                    s = mem[_893]
                    continue 
                mem[mem[64] + 4] = address(_779)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_780))
                call address(_780).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_779), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _814 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_814] == bool(mem[_814])
                mem[0] = address(_780)
                mem[32] = sha3(address(_779), 1)
                if not mem[_771 + 224]:
                    _845 = mem[_771 + 32]
                    _846 = mem[_771 + 64]
                    _847 = mem[_771 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_846'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_847'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_845))
                    call address(_845).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_846')), ('signextend', 15, ('var', '_847')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _906 = mem[_771 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_906))
                    staticcall address(_906).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _943 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_943] == mem[_943]
                    _761 = mem[96]
                    idx = idx + 1
                    s = mem[_943]
                    continue 
                _849 = mem[_771 + 32]
                _850 = mem[_771 + 64]
                _851 = mem[_771 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_850'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_851'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_849))
                call address(_849).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_850')), ('signextend', 15, ('var', '_851')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _908 = mem[_771 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_908))
                staticcall address(_908).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _944 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_944] == mem[_944]
                _761 = mem[96]
                idx = idx + 1
                s = mem[_944]
                continue 
            _776 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_776 + 32 len 64] = code.data[6620 len 64]
            require 0 < mem[_776]
            mem[_776 + 32] = mem[_771 + 140 len 20]
            require 1 < mem[_776]
            mem[_776 + 64] = mem[_771 + 172 len 20]
            _788 = mem[_771]
            _789 = mem[_771 + 128]
            mem[0] = mem[_771 + 12 len 20]
            _792 = sha3(mem[0], 1)
            mem[0] = address(_789)
            mem[32] = _792
            if stor[_792][address(_789)]:
                _806 = mem[_771]
                mem[_776 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_776 + 100] = s
                mem[_776 + 132] = 1
                mem[_776 + 164] = 160
                mem[_776 + 260] = mem[_776]
                s = 0
                t = _776 + 32
                u = _776 + 292
                while s < mem[_776]:
                    mem[u] = mem[t + 12 len 20]
                    _761 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_776 + 196] = this.address
                mem[_776 + 228] = block.timestamp + 1000
                require ext_code.size(address(_806))
                call address(_806).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _776 + (32 * mem[_776]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1043 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1046 = mem[_1043]
                require mem[_1043] <= test266151307()
                require _1043 + mem[_1043] + 31 < _1043 + return_data.size
                _1051 = mem[_1043 + mem[_1043]]
                require mem[_1043 + mem[_1043]] <= test266151307()
                require (32 * mem[_1043 + mem[_1043]]) + 32 >= 0 and _1043 + ceil32(return_data.size) + (32 * mem[_1043 + mem[_1043]]) + 32 <= test266151307()
                mem[64] = _1043 + ceil32(return_data.size) + (32 * mem[_1043 + mem[_1043]]) + 32
                mem[_1043 + ceil32(return_data.size)] = _1051
                require _1046 + (32 * _1051) + 32 <= return_data.size
                s = 0
                t = _1043 + _1046 + 32
                u = _1043 + ceil32(return_data.size) + 32
                while s < _1051:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _761 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _1137 = mem[_771 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1137))
                staticcall address(_1137).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1144] == mem[_1144]
                _761 = mem[96]
                idx = idx + 1
                s = mem[_1144]
                continue 
            mem[_776 + 100] = address(_788)
            mem[_776 + 132] = -1
            require ext_code.size(address(_789))
            call address(_789).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_788), -1
            mem[_776 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _776 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_789)
            mem[32] = sha3(address(_788), 1)
            _857 = mem[_771]
            mem[_776 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_776 + ceil32(return_data.size) + 100] = s
            mem[_776 + ceil32(return_data.size) + 132] = 1
            mem[_776 + ceil32(return_data.size) + 164] = 160
            mem[_776 + ceil32(return_data.size) + 260] = mem[_776]
            s = 0
            t = _776 + 32
            u = _776 + ceil32(return_data.size) + 292
            while s < mem[_776]:
                mem[u] = mem[t + 12 len 20]
                _761 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_776 + ceil32(return_data.size) + 196] = this.address
            mem[_776 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_857))
            call address(_857).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _776 + ceil32(return_data.size) + (32 * mem[_776]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1042 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1045 = mem[_1042]
            require mem[_1042] <= test266151307()
            require _1042 + mem[_1042] + 31 < _1042 + return_data.size
            _1050 = mem[_1042 + mem[_1042]]
            require mem[_1042 + mem[_1042]] <= test266151307()
            require (32 * mem[_1042 + mem[_1042]]) + 32 >= 0 and _1042 + ceil32(return_data.size) + (32 * mem[_1042 + mem[_1042]]) + 32 <= test266151307()
            mem[64] = _1042 + ceil32(return_data.size) + (32 * mem[_1042 + mem[_1042]]) + 32
            mem[_1042 + ceil32(return_data.size)] = _1050
            require _1045 + (32 * _1050) + 32 <= return_data.size
            s = 0
            t = _1042 + _1045 + 32
            u = _1042 + ceil32(return_data.size) + 32
            while s < _1050:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _761 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1135 = mem[_771 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1135))
            staticcall address(_1135).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1143 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1143] == mem[_1143]
            _761 = mem[96]
            idx = idx + 1
            s = mem[_1143]
            continue 
        if s <= _533:
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
    _760 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _760:
        _764 = mem[64]
        mem[64] = mem[64] + 256
        mem[_764] = 0
        mem[_764 + 32] = 0
        mem[_764 + 64] = 0
        mem[_764 + 96] = 0
        mem[_764 + 128] = 0
        mem[_764 + 160] = 0
        mem[_764 + 192] = 0
        mem[_764 + 224] = 0
        require idx < mem[96]
        _770 = mem[(32 * idx) + 128]
        _773 = mem[mem[(32 * idx) + 128] + 32]
        require ext_code.size(mem[mem[(32 * idx) + 128] + 44 len 20])
        staticcall mem[mem[(32 * idx) + 128] + 44 len 20].getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _781 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _794 = mem[_781]
        require mem[_781] == mem[_781 + 18 len 14]
        _810 = mem[_781 + 32]
        require mem[_781 + 32] == mem[_781 + 50 len 14]
        require mem[_781 + 64] == mem[_781 + 92 len 4]
        require ext_code.size(address(_773))
        staticcall address(_773).token0() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _837 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_837] == mem[_837 + 12 len 20]
        if mem[_770 + 140 len 20] == mem[_837 + 12 len 20]:
            _882 = mem[_770]
            mem[mem[64] + 4] = s
            mem[mem[64] + 36] = Mask(112, 0, _794)
            mem[mem[64] + 68] = Mask(112, 0, _810)
            require ext_code.size(address(_882))
            staticcall address(_882).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args s, _794 << 144, Mask(112, 0, _810)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _933 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_933] == mem[_933]
            _760 = mem[96]
            idx = idx + 1
            s = mem[_933]
            continue 
        _884 = mem[_770]
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = Mask(112, 0, _810)
        mem[mem[64] + 68] = Mask(112, 0, _794)
        require ext_code.size(address(_884))
        staticcall address(_884).getAmountOut(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args s, _810 << 144, Mask(112, 0, _794)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _934 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_934] == mem[_934]
        _760 = mem[96]
        idx = idx + 1
        s = mem[_934]
        continue 
    if s <= cd[36]:
        revert with 0, 'P_CALC'
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor0)
    staticcall stor0.balanceOf(address rg1) with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _809 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _811 = mem[_809]
    require mem[_809] == mem[_809]
    _1002 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _1002:
        _1006 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1006] = 0
        mem[_1006 + 32] = 0
        mem[_1006 + 64] = 0
        mem[_1006 + 96] = 0
        mem[_1006 + 128] = 0
        mem[_1006 + 160] = 0
        mem[_1006 + 192] = 0
        mem[_1006 + 224] = 0
        require idx < mem[96]
        _1009 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 192]:
            _1014 = mem[mem[(32 * idx) + 128] + 32]
            _1015 = mem[mem[(32 * idx) + 128] + 128]
            _1018 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_1018][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _1030 = mem[mem[(32 * idx) + 128] + 32]
                    _1031 = mem[mem[(32 * idx) + 128] + 64]
                    _1032 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_1031'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_1032'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_1030))
                    call address(_1030).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_1031')), ('signextend', 15, ('var', '_1032')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1075 = mem[_1009 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_1075))
                    staticcall address(_1075).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1089 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1089] == mem[_1089]
                    _1002 = mem[96]
                    idx = idx + 1
                    s = mem[_1089]
                    continue 
                _1034 = mem[mem[(32 * idx) + 128] + 32]
                _1035 = mem[mem[(32 * idx) + 128] + 64]
                _1036 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1035'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1036'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1034))
                call address(_1034).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1035')), ('signextend', 15, ('var', '_1036')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1077 = mem[_1009 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1077))
                staticcall address(_1077).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1090 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1090] == mem[_1090]
                _1002 = mem[96]
                idx = idx + 1
                s = mem[_1090]
                continue 
            mem[mem[64] + 4] = address(_1014)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_1015))
            call address(_1015).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_1014), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1048 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1048] == bool(mem[_1048])
            mem[0] = address(_1015)
            mem[32] = sha3(address(_1014), 1)
            if not mem[_1009 + 224]:
                _1063 = mem[_1009 + 32]
                _1064 = mem[_1009 + 64]
                _1065 = mem[_1009 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_1064'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_1065'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_1063))
                call address(_1063).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_1064')), ('signextend', 15, ('var', '_1065')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1103 = mem[_1009 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_1103))
                staticcall address(_1103).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1114 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1114] == mem[_1114]
                _1002 = mem[96]
                idx = idx + 1
                s = mem[_1114]
                continue 
            _1067 = mem[_1009 + 32]
            _1068 = mem[_1009 + 64]
            _1069 = mem[_1009 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_1068'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_1069'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_1067))
            call address(_1067).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_1068')), ('signextend', 15, ('var', '_1069')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1105 = mem[_1009 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1105))
            staticcall address(_1105).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1115 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1115] == mem[_1115]
            _1002 = mem[96]
            idx = idx + 1
            s = mem[_1115]
            continue 
        _1011 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_1011 + 32 len 64] = code.data[6620 len 64]
        require 0 < mem[_1011]
        mem[_1011 + 32] = mem[_1009 + 140 len 20]
        require 1 < mem[_1011]
        mem[_1011 + 64] = mem[_1009 + 172 len 20]
        _1021 = mem[_1009]
        _1022 = mem[_1009 + 128]
        mem[0] = mem[_1009 + 12 len 20]
        _1025 = sha3(mem[0], 1)
        mem[0] = address(_1022)
        mem[32] = _1025
        if stor[_1025][address(_1022)]:
            _1038 = mem[_1009]
            mem[_1011 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_1011 + 100] = s
            mem[_1011 + 132] = 1
            mem[_1011 + 164] = 160
            mem[_1011 + 260] = mem[_1011]
            s = 0
            t = _1011 + 32
            u = _1011 + 292
            while s < mem[_1011]:
                mem[u] = mem[t + 12 len 20]
                _1002 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_1011 + 196] = this.address
            mem[_1011 + 228] = block.timestamp + 1000
            require ext_code.size(address(_1038))
            call address(_1038).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _1011 + (32 * mem[_1011]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1146 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1150 = mem[_1146]
            require mem[_1146] <= test266151307()
            require _1146 + mem[_1146] + 31 < _1146 + return_data.size
            _1152 = mem[_1146 + mem[_1146]]
            require mem[_1146 + mem[_1146]] <= test266151307()
            require (32 * mem[_1146 + mem[_1146]]) + 32 >= 0 and _1146 + ceil32(return_data.size) + (32 * mem[_1146 + mem[_1146]]) + 32 <= test266151307()
            mem[64] = _1146 + ceil32(return_data.size) + (32 * mem[_1146 + mem[_1146]]) + 32
            mem[_1146 + ceil32(return_data.size)] = _1152
            require _1150 + (32 * _1152) + 32 <= return_data.size
            s = 0
            t = _1146 + _1150 + 32
            u = _1146 + ceil32(return_data.size) + 32
            while s < _1152:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _1002 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _1171 = mem[_1009 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_1171))
            staticcall address(_1171).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1176 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_1176] == mem[_1176]
            _1002 = mem[96]
            idx = idx + 1
            s = mem[_1176]
            continue 
        mem[_1011 + 100] = address(_1021)
        mem[_1011 + 132] = -1
        require ext_code.size(address(_1022))
        call address(_1022).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_1021), -1
        mem[_1011 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1011 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = address(_1022)
        mem[32] = sha3(address(_1021), 1)
        _1073 = mem[_1009]
        mem[_1011 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_1011 + ceil32(return_data.size) + 100] = s
        mem[_1011 + ceil32(return_data.size) + 132] = 1
        mem[_1011 + ceil32(return_data.size) + 164] = 160
        mem[_1011 + ceil32(return_data.size) + 260] = mem[_1011]
        t = 0
        u = _1011 + 32
        v = _1011 + ceil32(return_data.size) + 292
        while t < mem[_1011]:
            mem[v] = mem[u + 12 len 20]
            _1002 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_1011 + ceil32(return_data.size) + 196] = this.address
        mem[_1011 + ceil32(return_data.size) + 228] = block.timestamp + 1000
        require ext_code.size(address(_1073))
        call address(_1073).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_1011 + ceil32(return_data.size) + 260 len (32 * mem[_1011]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_1011 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _1011 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _1149 = mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
        require _1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _1011 + ceil32(return_data.size) + return_data.size + 96
        _1151 = mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        require mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
        require (32 * mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _1011 + (2 * ceil32(return_data.size)) + (32 * mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _1011 + (2 * ceil32(return_data.size)) + (32 * mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
        mem[_1011 + (2 * ceil32(return_data.size)) + 96] = mem[_1011 + ceil32(return_data.size) + mem[_1011 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        require _1149 + (32 * _1151) + 32 <= return_data.size
        s = 0
        t = _1011 + ceil32(return_data.size) + _1149 + 128
        u = _1011 + (2 * ceil32(return_data.size)) + 128
        while s < _1151:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _1002 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _1169 = mem[_1009 + 160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_1169))
        staticcall address(_1169).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1175 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1175] == mem[_1175]
        _1002 = mem[96]
        idx = idx + 1
        s = mem[_1175]
        continue 
    if s <= _811:
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
