contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor2;
address stor3;
mapping of uint8 stor99;

function _fallback() payable {
  stop
}

function allow(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'NOT OWNER'
    stor2[address(arg1)] = uint8(arg2)
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
        mem[arg2.length + ceil32(arg2.length) + 128] = 0
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
        _113 = mem[64]
        require mem[64] + 256 >= mem[64] and mem[64] + 256 <= test266151307()
        mem[64] = mem[64] + 256
        require cd[s] == address(cd[s])
        mem[_113] = cd[s]
        require cd[(s + 32)] == address(cd[(s + 32)])
        mem[_113 + 32] = cd[(s + 32)]
        require cd[(s + 64)] == ('signextend', 15, ('cd', ('add', 64, ('var', 1))))
        mem[_113 + 64] = cd[(s + 64)]
        require cd[(s + 96)] == ('signextend', 15, ('cd', ('add', 96, ('var', 1))))
        mem[_113 + 96] = cd[(s + 96)]
        require cd[(s + 128)] == address(cd[(s + 128)])
        mem[_113 + 128] = cd[(s + 128)]
        require cd[(s + 160)] == address(cd[(s + 160)])
        mem[_113 + 160] = cd[(s + 160)]
        require cd[(s + 192)] == bool(cd[(s + 192)])
        mem[_113 + 192] = cd[(s + 192)]
        require cd[(s + 224)] == bool(cd[(s + 224)])
        mem[_113 + 224] = cd[(s + 224)]
        mem[t] = _113
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    require cd[36] == cd[36]
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'RESTRICTED'
    mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor0)
    call stor0.deposit() with:
       value cd[36] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _224 = mem[96]
    idx = 0
    s = cd[36]
    while idx < _224:
        _227 = mem[64]
        mem[64] = mem[64] + 256
        mem[_227] = 0
        mem[_227 + 32] = 0
        mem[_227 + 64] = 0
        mem[_227 + 96] = 0
        mem[_227 + 128] = 0
        mem[_227 + 160] = 0
        mem[_227 + 192] = 0
        mem[_227 + 224] = 0
        require idx < mem[96]
        _229 = mem[(32 * idx) + 128]
        if mem[mem[(32 * idx) + 128] + 192]:
            _234 = mem[mem[(32 * idx) + 128] + 32]
            _235 = mem[mem[(32 * idx) + 128] + 128]
            _238 = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            mem[0] = mem[mem[(32 * idx) + 128] + 140 len 20]
            mem[32] = sha3(mem[mem[(32 * idx) + 128] + 44 len 20], 1)
            if stor[_238][address(mem[mem[(32 * idx) + 128] + 128])]:
                if not mem[mem[(32 * idx) + 128] + 224]:
                    _250 = mem[mem[(32 * idx) + 128] + 32]
                    _251 = mem[mem[(32 * idx) + 128] + 64]
                    _252 = mem[mem[(32 * idx) + 128] + 96]
                    mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = ('signextend', 15, ('var', '_251'))
                    mem[mem[64] + 36] = ('signextend', 15, ('var', '_252'))
                    mem[mem[64] + 68] = s
                    mem[mem[64] + 100] = 1
                    require ext_code.size(address(_250))
                    call address(_250).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args ('signextend', 15, ('var', '_251')), ('signextend', 15, ('var', '_252')), s, 1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _283 = mem[_229 + 160]
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(_283))
                    staticcall address(_283).balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _291 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_291] == mem[_291]
                    _224 = mem[96]
                    idx = idx + 1
                    s = mem[_291]
                    continue 
                _254 = mem[mem[(32 * idx) + 128] + 32]
                _255 = mem[mem[(32 * idx) + 128] + 64]
                _256 = mem[mem[(32 * idx) + 128] + 96]
                mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_255'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_256'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_254))
                call address(_254).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_255')), ('signextend', 15, ('var', '_256')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _285 = mem[_229 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_285))
                staticcall address(_285).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_292] == mem[_292]
                _224 = mem[96]
                idx = idx + 1
                s = mem[_292]
                continue 
            mem[mem[64] + 4] = address(_234)
            mem[mem[64] + 36] = -1
            require ext_code.size(address(_235))
            call address(_235).approve(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args address(_234), -1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _262 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_262] == bool(mem[_262])
            mem[0] = address(_235)
            mem[32] = sha3(address(_234), 1)
            if not mem[_229 + 224]:
                _273 = mem[_229 + 32]
                _274 = mem[_229 + 64]
                _275 = mem[_229 + 96]
                mem[mem[64]] = 0xa6417ed600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = ('signextend', 15, ('var', '_274'))
                mem[mem[64] + 36] = ('signextend', 15, ('var', '_275'))
                mem[mem[64] + 68] = s
                mem[mem[64] + 100] = 1
                require ext_code.size(address(_273))
                call address(_273).exchange_underlying(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args ('signextend', 15, ('var', '_274')), ('signextend', 15, ('var', '_275')), s, 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _301 = mem[_229 + 160]
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(_301))
                staticcall address(_301).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _312 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_312] == mem[_312]
                _224 = mem[96]
                idx = idx + 1
                s = mem[_312]
                continue 
            _277 = mem[_229 + 32]
            _278 = mem[_229 + 64]
            _279 = mem[_229 + 96]
            mem[mem[64]] = 0x3df0212400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = ('signextend', 15, ('var', '_278'))
            mem[mem[64] + 36] = ('signextend', 15, ('var', '_279'))
            mem[mem[64] + 68] = s
            mem[mem[64] + 100] = 1
            require ext_code.size(address(_277))
            call address(_277).exchange(int128 rg1, int128 rg2, uint256 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args ('signextend', 15, ('var', '_278')), ('signextend', 15, ('var', '_279')), s, 1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _303 = mem[_229 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_303))
            staticcall address(_303).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _313 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_313] == mem[_313]
            _224 = mem[96]
            idx = idx + 1
            s = mem[_313]
            continue 
        _231 = mem[64]
        mem[mem[64]] = 2
        mem[64] = mem[64] + 96
        mem[_231 + 32 len 64] = code.data[5145 len 64]
        require 0 < mem[_231]
        mem[_231 + 32] = mem[_229 + 140 len 20]
        require 1 < mem[_231]
        mem[_231 + 64] = mem[_229 + 172 len 20]
        _242 = mem[_229]
        _243 = mem[_229 + 128]
        mem[0] = mem[_229 + 12 len 20]
        _245 = sha3(mem[0], 1)
        mem[0] = address(_243)
        mem[32] = _245
        if stor[_245][address(_243)]:
            _258 = mem[_229]
            mem[_231 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[_231 + 100] = s
            mem[_231 + 132] = 1
            mem[_231 + 164] = 160
            mem[_231 + 260] = mem[_231]
            s = 0
            t = _231 + 32
            u = _231 + 292
            while s < mem[_231]:
                mem[u] = mem[t + 12 len 20]
                _224 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            mem[_231 + 196] = this.address
            mem[_231 + 228] = block.timestamp + 1000
            require ext_code.size(address(_258))
            call address(_258).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _231 + (32 * mem[_231]) + -mem[64] + 288]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _334 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _336 = mem[_334]
            require mem[_334] <= test266151307()
            require _334 + mem[_334] + 31 < _334 + return_data.size
            _338 = mem[_334 + mem[_334]]
            require mem[_334 + mem[_334]] <= test266151307()
            require (32 * mem[_334 + mem[_334]]) + 32 >= 0 and _334 + ceil32(return_data.size) + (32 * mem[_334 + mem[_334]]) + 32 <= test266151307()
            mem[64] = _334 + ceil32(return_data.size) + (32 * mem[_334 + mem[_334]]) + 32
            mem[_334 + ceil32(return_data.size)] = _338
            require _336 + (32 * _338) + 32 <= return_data.size
            s = 0
            t = _334 + _336 + 32
            u = _334 + ceil32(return_data.size) + 32
            while s < _338:
                require mem[t] == mem[t]
                mem[u] = mem[t]
                _224 = mem[96]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            _357 = mem[_229 + 160]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_357))
            staticcall address(_357).balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _362 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_362] == mem[_362]
            _224 = mem[96]
            idx = idx + 1
            s = mem[_362]
            continue 
        mem[_231 + 100] = address(_242)
        mem[_231 + 132] = -1
        require ext_code.size(address(_243))
        call address(_243).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(_242), -1
        mem[_231 + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _231 + ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[0] = address(_243)
        mem[32] = sha3(address(_242), 1)
        _281 = mem[_229]
        mem[_231 + ceil32(return_data.size) + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[_231 + ceil32(return_data.size) + 100] = s
        mem[_231 + ceil32(return_data.size) + 132] = 1
        mem[_231 + ceil32(return_data.size) + 164] = 160
        mem[_231 + ceil32(return_data.size) + 260] = mem[_231]
        t = 0
        u = _231 + 32
        v = _231 + ceil32(return_data.size) + 292
        while t < mem[_231]:
            mem[v] = mem[u + 12 len 20]
            _224 = mem[96]
            t = t + 1
            u = u + 32
            v = v + 32
            continue 
        mem[_231 + ceil32(return_data.size) + 196] = this.address
        mem[_231 + ceil32(return_data.size) + 228] = block.timestamp + 1000
        require ext_code.size(address(_281))
        call address(_281).swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
             gas gas_remaining wei
            args s, 1, 160, address(this.address), block.timestamp + 1000, mem[_231 + ceil32(return_data.size) + 260 len (32 * mem[_231]) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_231 + ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _231 + (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _335 = mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32
        require mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 <= test266151307()
        require _231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 127 < _231 + ceil32(return_data.size) + return_data.size + 96
        _337 = mem[_231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]
        require mem[_231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96] <= test266151307()
        require (32 * mem[_231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 32 >= 0 and _231 + (2 * ceil32(return_data.size)) + (32 * mem[_231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128 <= test266151307()
        mem[64] = _231 + (2 * ceil32(return_data.size)) + (32 * mem[_231 + ceil32(return_data.size) + mem[_231 + ceil32(return_data.size) + 96 len 4], Mask(224, 32, s) >> 32 + 96]) + 128
        mem[_231 + (2 * ceil32(return_data.size)) + 96] = _337
        require _335 + (32 * _337) + 32 <= return_data.size
        s = 0
        t = _231 + ceil32(return_data.size) + _335 + 128
        u = _231 + (2 * ceil32(return_data.size)) + 128
        while s < _337:
            require mem[t] == mem[t]
            mem[u] = mem[t]
            _224 = mem[96]
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        _355 = mem[_229 + 160]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_355))
        staticcall address(_355).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _361 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_361] == mem[_361]
        _224 = mem[96]
        idx = idx + 1
        s = mem[_361]
        continue 
    if s <= cd[36]:
        revert with 0, 'P'
    require ext_code.size(stor0)
    call stor0.withdraw(uint256 rg1) with:
         gas gas_remaining wei
        args s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(msg.sender) < 10^18:
        call msg.sender with:
           value 10^18 wei
             gas 0 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
