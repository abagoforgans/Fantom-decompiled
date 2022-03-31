contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function withdrawETH() {
    if stor2 != msg.sender:
        revert with 0, 'RESTRICTED'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'RESTRICTED'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor2, ext_call.return_data[0]
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
    if stor2 != msg.sender:
        revert with 0, 'RESTRICTED'
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 128] = 0
    call address(arg1) with:
       funct Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
}

function sub_30fcf208(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 4).length) + 128
    mem[96] = ('cd', 4).length
    require cd[4] + (288 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require calldata.size - s >= 288
        _288 = mem[64]
        require mem[64] + 288 >= mem[64] and mem[64] + 288 <= test266151307()
        mem[64] = mem[64] + 288
        require cd[s] == address(cd[s])
        mem[_288] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_288 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_288 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_288 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_288 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_288 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_288 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_288 + 224] = cd[(s + 224)]
        require cd[(s + 256)] == bool(cd[(s + 256)])
        mem[_288 + 256] = cd[(s + 256)]
        mem[t] = _288
        idx = idx + 1
        s = s + 288
        t = t + 32
        continue 
    if stor2 != msg.sender:
        revert with 0, 'RESTRICTED'
    require 0 < mem[96]
    if mem[mem[128] + 192]:
        _574 = mem[96]
        idx = 0
        s = msg.value
        while idx < _574:
            _579 = mem[64]
            mem[64] = mem[64] + 288
            mem[_579] = 0
            mem[_579 + 32] = 0
            mem[_579 + 64] = 0
            mem[_579 + 96] = 0
            mem[_579 + 128] = 0
            mem[_579 + 160] = 0
            mem[_579 + 192] = 0
            mem[_579 + 224] = 0
            mem[_579 + 256] = 0
            require idx < mem[96]
            _592 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _608 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_608))
                    call address(_608).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _687 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_687] == mem[_687]
                    _574 = mem[96]
                    idx = idx + 1
                    s = mem[_687]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _624 = mem[mem[(32 * idx) + 128] + 32]
                _625 = mem[mem[(32 * idx) + 128] + 128]
                _637 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_637][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _664 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_664))
                    call address(_664).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _712 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_712] == mem[_712]
                    _574 = mem[96]
                    idx = idx + 1
                    s = mem[_712]
                    continue 
                mem[mem[64] + 4] = address(_624)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_625))
                call address(_625).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_624), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _696 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_696] == bool(mem[_696])
                mem[0] = address(_625)
                mem[32] = sha3(address(_624), 1)
                _741 = mem[_592 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_741))
                call address(_741).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _783 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_783] == mem[_783]
                _574 = mem[96]
                idx = idx + 1
                s = mem[_783]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _605 = mem[mem[(32 * idx) + 128] + 32]
                _606 = mem[mem[(32 * idx) + 128] + 128]
                _621 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_621][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 256]:
                        _656 = mem[mem[(32 * idx) + 128] + 32]
                        _657 = mem[mem[(32 * idx) + 128] + 64]
                        _658 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_657'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_658'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_656))
                        call address(_656).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_657')), ('signextend', 15, ('var', '_658')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _737 = mem[_592 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_737))
                        staticcall address(_737).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _768 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_768] == mem[_768]
                        _574 = mem[96]
                        idx = idx + 1
                        s = mem[_768]
                        continue 
                    _660 = mem[mem[(32 * idx) + 128] + 32]
                    _661 = mem[mem[(32 * idx) + 128] + 64]
                    _662 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_661'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_662'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_660))
                    call address(_660).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_661')), ('signextend', 15, ('var', '_662')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _739 = mem[_592 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_739))
                    staticcall address(_739).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _769 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_769] == mem[_769]
                    _574 = mem[96]
                    idx = idx + 1
                    s = mem[_769]
                    continue 
                mem[mem[64] + 4] = address(_605)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_606))
                call address(_606).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_605), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _693 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_693] == bool(mem[_693])
                mem[0] = address(_606)
                mem[32] = sha3(address(_605), 1)
                if not mem[_592 + 256]:
                    _729 = mem[_592 + 32]
                    _730 = mem[_592 + 64]
                    _731 = mem[_592 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_730'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_731'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_729))
                    call address(_729).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_730')), ('signextend', 15, ('var', '_731')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _796 = mem[_592 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_796))
                    staticcall address(_796).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _817 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_817] == mem[_817]
                    _574 = mem[96]
                    idx = idx + 1
                    s = mem[_817]
                    continue 
                _733 = mem[_592 + 32]
                _734 = mem[_592 + 64]
                _735 = mem[_592 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_734'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_735'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_733))
                call address(_733).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_734')), ('signextend', 15, ('var', '_735')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _798 = mem[_592 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_798))
                staticcall address(_798).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _818 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_818] == mem[_818]
                _574 = mem[96]
                idx = idx + 1
                s = mem[_818]
                continue 
            _602 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_602 + 32 len 64] = code.data[5349 len 64]
            require 0 < mem[_602]
            mem[_602 + 32] = mem[_592 + 140 len 20]
            require 1 < mem[_602]
            mem[_602 + 64] = mem[_592 + 172 len 20]
            _634 = mem[_592]
            _635 = mem[_592 + 128]
            mem[0] = mem[_592 + 12 len 20]
            _645 = sha3(mem[0], 1)
            mem[0] = address(_635)
            mem[32] = _645
            if stor[_645][address(_635)]:
                _677 = mem[_592]
                mem[_602 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_602 + 100] = s
                mem[_602 + 132] = 1
                mem[_602 + 164] = 160
                mem[_602 + 260] = mem[_602]
                s = 0
                t = _602 + 32
                u = _602 + 292
                while s < mem[_602]:
                    mem[u] = mem[t + 12 len 20]
                    _574 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_602 + 196] = this.address
                mem[_602 + 228] = block.timestamp + 1000
                require ext_code.size(address(_677))
                call address(_677).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _602 + (32 * mem[_602]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _861 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _865 = mem[_861]
                require mem[_861] <= test266151307()
                require _861 + mem[_861] + 31 < _861 + return_data.size
                _869 = mem[_861 + mem[_861]]
                require mem[_861 + mem[_861]] <= test266151307()
                require (32 * mem[_861 + mem[_861]]) + 32 >= 0 and _861 + ceil32(return_data.size) + (32 * mem[_861 + mem[_861]]) + 32 <= test266151307()
                mem[64] = _861 + ceil32(return_data.size) + (32 * mem[_861 + mem[_861]]) + 32
                mem[_861 + ceil32(return_data.size)] = _869
                require _865 + (32 * _869) + 32 <= return_data.size
                s = 0
                t = _861 + _865 + 32
                u = _861 + ceil32(return_data.size) + 32
                while s < _869:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _574 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _906 = mem[_592 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_906))
                staticcall address(_906).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _917 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_917] == mem[_917]
                _574 = mem[96]
                idx = idx + 1
                s = mem[_917]
                continue 
            mem[_602 + 100] = address(_634)
            mem[_602 + 132] = -1
            require ext_code.size(address(_635))
            call address(_635).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_634), -1
            mem[_602 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _602 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_635)
            mem[32] = sha3(address(_634), 1)
            _758 = mem[_592]
            mem[_602 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_602 + ceil32(return_data.size) + 100] = s
            mem[_602 + ceil32(return_data.size) + 132] = 1
            mem[_602 + ceil32(return_data.size) + 164] = 160
            mem[_602 + ceil32(return_data.size) + 260] = mem[_602]
            s = 0
            t = _602 + 32
            u = _602 + ceil32(return_data.size) + 292
            while s < mem[_602]:
                mem[u] = mem[t + 12 len 20]
                _574 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_602 + ceil32(return_data.size) + 196] = this.address
            mem[_602 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_758))
            call address(_758).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _602 + ceil32(return_data.size) + (32 * mem[_602]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _860 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _864 = mem[_860]
            require mem[_860] <= test266151307()
            require _860 + mem[_860] + 31 < _860 + return_data.size
            _868 = mem[_860 + mem[_860]]
            require mem[_860 + mem[_860]] <= test266151307()
            require (32 * mem[_860 + mem[_860]]) + 32 >= 0 and _860 + ceil32(return_data.size) + (32 * mem[_860 + mem[_860]]) + 32 <= test266151307()
            mem[64] = _860 + ceil32(return_data.size) + (32 * mem[_860 + mem[_860]]) + 32
            mem[_860 + ceil32(return_data.size)] = _868
            require _864 + (32 * _868) + 32 <= return_data.size
            s = 0
            t = _860 + _864 + 32
            u = _860 + ceil32(return_data.size) + 32
            while s < _868:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _574 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _904 = mem[_592 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_904))
            staticcall address(_904).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _916 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_916] == mem[_916]
            _574 = mem[96]
            idx = idx + 1
            s = mem[_916]
            continue 
    else:
        mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor0)
        call stor0.deposit() with:
           value msg.value wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _575 = mem[96]
        idx = 0
        s = msg.value
        while idx < _575:
            _583 = mem[64]
            mem[64] = mem[64] + 288
            mem[_583] = 0
            mem[_583 + 32] = 0
            mem[_583 + 64] = 0
            mem[_583 + 96] = 0
            mem[_583 + 128] = 0
            mem[_583 + 160] = 0
            mem[_583 + 192] = 0
            mem[_583 + 224] = 0
            mem[_583 + 256] = 0
            require idx < mem[96]
            _596 = mem[(32 * idx) + 128]
            if mem[mem[(32 * idx) + 128] + 192]:
                if stor0 == mem[mem[(32 * idx) + 128] + 140 len 20]:
                    _616 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = 1
                    mem[mem[64] + 36] = block.timestamp + 1000
                    require ext_code.size(address(_616))
                    call address(_616).ethToTokenSwapInput(uint256 rg1, uint256 rg2) with:
                       value msg.value wei
                         gas gas_remaining wei
                        args 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _689 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_689] == mem[_689]
                    _575 = mem[96]
                    idx = idx + 1
                    s = mem[_689]
                    continue 
                if stor0 != mem[mem[(32 * idx) + 128] + 172 len 20]:
                    revert with 0, 'ANYSWAP NO WFTM'
                _632 = mem[mem[(32 * idx) + 128] + 32]
                _633 = mem[mem[(32 * idx) + 128] + 128]
                _642 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_642][address(mem[mem[(32 * idx) + 128] + 128])]:
                    _674 = mem[mem[(32 * idx) + 128] + 32]
                    mem[mem[64] + 4] = s
                    mem[mem[64] + 36] = 1
                    mem[mem[64] + 68] = block.timestamp + 1000
                    require ext_code.size(address(_674))
                    call address(_674).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args s, 1, block.timestamp + 1000
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _713 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_713] == mem[_713]
                    _575 = mem[96]
                    idx = idx + 1
                    s = mem[_713]
                    continue 
                mem[mem[64] + 4] = address(_632)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_633))
                call address(_633).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_632), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _698 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_698] == bool(mem[_698])
                mem[0] = address(_633)
                mem[32] = sha3(address(_632), 1)
                _756 = mem[_596 + 32]
                mem[mem[64] + 4] = s
                mem[mem[64] + 36] = 1
                mem[mem[64] + 68] = block.timestamp + 1000
                require ext_code.size(address(_756))
                call address(_756).tokenToEthSwapInput(uint256 rg1, uint256 rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args s, 1, block.timestamp + 1000
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_785] == mem[_785]
                _575 = mem[96]
                idx = idx + 1
                s = mem[_785]
                continue 
            if mem[mem[(32 * idx) + 128] + 224]:
                _613 = mem[mem[(32 * idx) + 128] + 32]
                _614 = mem[mem[(32 * idx) + 128] + 128]
                _629 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
                mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
                if stor[_629][address(mem[mem[(32 * idx) + 128] + 128])]:
                    if not mem[mem[(32 * idx) + 128] + 256]:
                        _666 = mem[mem[(32 * idx) + 128] + 32]
                        _667 = mem[mem[(32 * idx) + 128] + 64]
                        _668 = mem[mem[(32 * idx) + 128] + 96]
                        mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = ('signextend', 15, ('var', '_667'))
                        mem[mem[64] + 36] = ('signextend', 15, ('var', '_668'))
                        mem[mem[64] + 68] = s
                        mem[mem[64] + 100] = 1
                        require ext_code.size(address(_666))
                        call address(_666).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining wei
                            args ('signextend', 15, ('var', '_667')), ('signextend', 15, ('var', '_668')), s, 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _752 = mem[_596 + 160]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(_752))
                        staticcall address(_752).0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _772 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_772] == mem[_772]
                        _575 = mem[96]
                        idx = idx + 1
                        s = mem[_772]
                        continue 
                    _670 = mem[mem[(32 * idx) + 128] + 32]
                    _671 = mem[mem[(32 * idx) + 128] + 64]
                    _672 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_671'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_672'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_670))
                    call address(_670).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_671')), ('signextend', 15, ('var', '_672')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _754 = mem[_596 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_754))
                    staticcall address(_754).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _773 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_773] == mem[_773]
                    _575 = mem[96]
                    idx = idx + 1
                    s = mem[_773]
                    continue 
                mem[mem[64] + 4] = address(_613)
                mem[mem[64] + 36] = -1
                require ext_code.size(address(_614))
                call address(_614).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(_613), -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _695 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_695] == bool(mem[_695])
                mem[0] = address(_614)
                mem[32] = sha3(address(_613), 1)
                if not mem[_596 + 256]:
                    _744 = mem[_596 + 32]
                    _745 = mem[_596 + 64]
                    _746 = mem[_596 + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_745'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_746'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_744))
                    call address(_744).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_745')), ('signextend', 15, ('var', '_746')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _800 = mem[_596 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_800))
                    staticcall address(_800).0x70a08231 with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _820 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_820] == mem[_820]
                    _575 = mem[96]
                    idx = idx + 1
                    s = mem[_820]
                    continue 
                _748 = mem[_596 + 32]
                _749 = mem[_596 + 64]
                _750 = mem[_596 + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_749'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_750'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_748))
                call address(_748).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_749')), ('signextend', 15, ('var', '_750')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _802 = mem[_596 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_802))
                staticcall address(_802).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _821 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_821] == mem[_821]
                _575 = mem[96]
                idx = idx + 1
                s = mem[_821]
                continue 
            _610 = mem[64]
            mem[mem[64]] = 2
            mem[64] = mem[64] + 96
            mem[_610 + 32 len 64] = code.data[5349 len 64]
            require 0 < mem[_610]
            mem[_610 + 32] = mem[_596 + 140 len 20]
            require 1 < mem[_610]
            mem[_610 + 64] = mem[_596 + 172 len 20]
            _639 = mem[_596]
            _640 = mem[_596 + 128]
            mem[0] = mem[_596 + 12 len 20]
            _649 = sha3(mem[0], 1)
            mem[0] = address(_640)
            mem[32] = _649
            if stor[_649][address(_640)]:
                _680 = mem[_596]
                mem[_610 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[_610 + 100] = s
                mem[_610 + 132] = 1
                mem[_610 + 164] = 160
                mem[_610 + 260] = mem[_610]
                s = 0
                t = _610 + 32
                u = _610 + 292
                while s < mem[_610]:
                    mem[u] = mem[t + 12 len 20]
                    _575 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_610 + 196] = this.address
                mem[_610 + 228] = block.timestamp + 1000
                require ext_code.size(address(_680))
                call address(_680).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _610 + (32 * mem[_610]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _863 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _867 = mem[_863]
                require mem[_863] <= test266151307()
                require _863 + mem[_863] + 31 < _863 + return_data.size
                _871 = mem[_863 + mem[_863]]
                require mem[_863 + mem[_863]] <= test266151307()
                require (32 * mem[_863 + mem[_863]]) + 32 >= 0 and _863 + ceil32(return_data.size) + (32 * mem[_863 + mem[_863]]) + 32 <= test266151307()
                mem[64] = _863 + ceil32(return_data.size) + (32 * mem[_863 + mem[_863]]) + 32
                mem[_863 + ceil32(return_data.size)] = _871
                require _867 + (32 * _871) + 32 <= return_data.size
                s = 0
                t = _863 + _867 + 32
                u = _863 + ceil32(return_data.size) + 32
                while s < _871:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    _575 = mem[96]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                _910 = mem[_596 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_910))
                staticcall address(_910).0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _919 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_919] == mem[_919]
                _575 = mem[96]
                idx = idx + 1
                s = mem[_919]
                continue 
            mem[_610 + 100] = address(_639)
            mem[_610 + 132] = -1
            require ext_code.size(address(_640))
            call address(_640).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_639), -1
            mem[_610 + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _610 + ceil32(return_data.size) + 96
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[0] = address(_640)
            mem[32] = sha3(address(_639), 1)
            _760 = mem[_596]
            mem[_610 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_610 + ceil32(return_data.size) + 100] = s
            mem[_610 + ceil32(return_data.size) + 132] = 1
            mem[_610 + ceil32(return_data.size) + 164] = 160
            mem[_610 + ceil32(return_data.size) + 260] = mem[_610]
            t = 0
            u = _610 + 32
            v = _610 + ceil32(return_data.size) + 292
            while t < mem[_610]:
                mem[v] = mem[u + 12 len 20]
                _575 = mem[96]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            mem[_610 + ceil32(return_data.size) + 196] = this.address
            mem[_610 + ceil32(return_data.size) + 228] = block.timestamp + 1000
            require ext_code.size(address(_760))
            call address(_760).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_610 + ceil32(return_data.size) + 260 len (32 * mem[_610]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_610 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = _610 + (2 * ceil32(return_data.size)) + 96
            require return_data.size >= 32
            _866 = mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
            require mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
            require _610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _610 + ceil32(return_data.size) + return_data.size + 96
            _870 = mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
            require (32 * mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _610 + (2 * ceil32(return_data.size)) + (32 * mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
            mem[64] = _610 + (2 * ceil32(return_data.size)) + (32 * mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
            mem[_610 + (2 * ceil32(return_data.size)) + 96] = mem[_610 + ceil32(return_data.size) + mem[_610 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
            require _866 + (32 * _870) + 32 <= return_data.size
            s = 0
            t = _610 + ceil32(return_data.size) + _866 + 128
            u = _610 + (2 * ceil32(return_data.size)) + 128
            while s < _870:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _575 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _908 = mem[_596 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_908))
            staticcall address(_908).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _918 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_918] == mem[_918]
            _575 = mem[96]
            idx = idx + 1
            s = mem[_918]
            continue 
    if s <= msg.value:
        revert with 0, 'P'
    require mem[96] - 1 < mem[96]
    if mem[mem[(32 * mem[96] - 1) + 128] + 192]:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(stor0)
        call stor0.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
}



}
