contract main {




// =====================  Runtime code  =====================


#
#  - sub_7ba7a2a8(?)
#
address owner;
address stor1;
address stor2;
address stor3;
address stor4;
address stor5;
address stor6;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Zero balance!'
    if arg2:
        if ext_call.return_data[0] < arg2:
            revert with 0, 'Insufficient balance!'
        require ext_code.size(arg1)
        call arg1.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args owner, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        return (ext_call.return_data[0] - arg2)
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'Insufficient balance!'
    require ext_code.size(arg1)
    call arg1.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 0
}

function sub_5313edcc(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            _68 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[64]
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[96]
            require 0 < mem[_68]
            require idx < mem[96]
            require 1 < mem[_68]
            mem[_68 + 64] = ext_call.return_data[50 len 14]
            mem[_68 + 32] = ext_call.return_data[18 len 14]
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _71 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        u = mem[64] + (32 * mem[96]) + 96
        while idx < _71:
            mem[t] = u + -_70 - 96
            _132 = mem[s]
            _133 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _132 + 32
            while v < _133:
                mem[w] = mem[x + 18 len 14]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _133) + 32
            continue 
    else:
        mem[128] = 96
        s = 128
        idx = ('cd', 36).length
        while idx - 1:
            mem[s + 32] = 96
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 36).length:
            _134 = mem[64]
            mem[mem[64]] = 2
            mem[mem[64] + 32 len 64] = call.data[calldata.size len 64]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[64]
            require idx < ('cd', 36).length
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] + 96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size) + 96
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            require idx < mem[96]
            require 0 < mem[_134]
            require idx < mem[96]
            require 1 < mem[_134]
            mem[_134 + 64] = ext_call.return_data[50 len 14]
            mem[_134 + 32] = ext_call.return_data[18 len 14]
            idx = idx + 1
            continue 
        _137 = mem[64]
        mem[mem[64]] = block.number
        mem[mem[64] + 32] = 64
        _139 = mem[96]
        mem[mem[64] + 64] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 96
        u = mem[64] + (32 * mem[96]) + 96
        while idx < _139:
            mem[t] = u + -_137 - 96
            _169 = mem[s]
            _170 = mem[mem[s]]
            mem[u] = mem[mem[s]]
            v = 0
            w = u + 32
            x = _169 + 32
            while v < _170:
                mem[w] = mem[x + 18 len 14]
                v = v + 1
                w = w + 32
                x = x + 32
                continue 
            idx = idx + 1
            s = s + 32
            t = t + 32
            u = u + (32 * _170) + 32
            continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function sub_cae34079(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[96] = 2
    require 0 < ('cd', 68).length
    require ('cd', 68)[0] == address(('cd', 68)[0])
    mem[128] = address(('cd', 68)[0])
    require 1 < ('cd', 68).length
    require ('cd', 68)[1] == address(('cd', 68)[1])
    mem[160] = address(('cd', 68)[1])
    mem[192] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196] = cd[36]
    mem[228] = 64
    mem[260] = 2
    if cd[4] == 1:
        idx = 0
        s = 128
        t = 292
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor4)
        staticcall stor4.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args cd[36], Array(len=2, data=mem[292 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 192
        require return_data.size >= 32
        _312 = mem[192 len 4], Mask(224, 32, cd[36]) >> 32
        require mem[192 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require return_data.size + 192 > mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 223
        _315 = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
        require mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192] <= test266151307()
        require (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224 <= test266151307()
        mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224
        mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
        require return_data.size >= _312 + (32 * _315) + 32
        mem[ceil32(return_data.size) + 224 len 32 * _315] = mem[_312 + 224 len 32 * _315]
        require 1 < _315
        _600 = mem[ceil32(return_data.size) + 256]
        if cd[4] == 1:
            require 0 < ('cd', 68).length
            require ('cd', 68)[0] == address(('cd', 68)[0])
            require 1 < ('cd', 68).length
            require ('cd', 68)[1] == address(('cd', 68)[1])
            mem[mem[64] + 4] = address(('cd', 68)[0])
            mem[mem[64] + 36] = address(('cd', 68)[1])
            require ext_code.size(stor1)
            staticcall stor1.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(('cd', 68)[0]), address(('cd', 68)[1])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _624 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _636 = mem[_624]
            require mem[_624] == mem[_624 + 12 len 20]
            require ext_code.size(mem[_624 + 12 len 20])
            staticcall mem[_624 + 12 len 20].token0() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _668 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_668] == mem[_668 + 12 len 20]
            require 0 < ('cd', 68).length
            require ('cd', 68)[0] == address(('cd', 68)[0])
            if address(('cd', 68)[0]) != mem[_668 + 12 len 20]:
                _701 = mem[64]
                mem[mem[64] + 32] = _600
                mem[mem[64] + 64] = 64
                mem[mem[64] + 96] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 128
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _867 = mem[64]
                mem[64] = _701 + (32 * ('cd', 68).length) + 128
                mem[_701 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_701 + (32 * ('cd', 68).length) + 132] = _600
                mem[_701 + (32 * ('cd', 68).length) + 164] = 0
                mem[_701 + (32 * ('cd', 68).length) + 196] = this.address
                mem[_701 + (32 * ('cd', 68).length) + 228] = 128
                _915 = mem[_867]
                mem[_701 + (32 * ('cd', 68).length) + 260] = mem[_867]
                mem[_701 + (32 * ('cd', 68).length) + 292 len ceil32(_915)] = mem[_867 + 32 len ceil32(_915)]
                if ceil32(_915) > _915:
                    mem[_701 + (32 * ('cd', 68).length) + _915 + 292] = 0
                require ext_code.size(address(_636))
                call address(_636).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args _600, 0, address(this.address), 128, mem[_701 + (32 * ('cd', 68).length) + 260 len ceil32(_915) + 32]
            else:
                _702 = mem[64]
                mem[mem[64] + 32] = _600
                mem[mem[64] + 64] = 64
                mem[mem[64] + 96] = ('cd', 68).length
                idx = 0
                s = cd[68] + 36
                t = mem[64] + 128
                while idx < ('cd', 68).length:
                    require cd[s] == address(cd[s])
                    mem[t] = address(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                _869 = mem[64]
                mem[64] = _702 + (32 * ('cd', 68).length) + 128
                mem[_702 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                mem[_702 + (32 * ('cd', 68).length) + 132] = 0
                mem[_702 + (32 * ('cd', 68).length) + 164] = _600
                mem[_702 + (32 * ('cd', 68).length) + 196] = this.address
                mem[_702 + (32 * ('cd', 68).length) + 228] = 128
                _916 = mem[_869]
                mem[_702 + (32 * ('cd', 68).length) + 260] = mem[_869]
                mem[_702 + (32 * ('cd', 68).length) + 292 len ceil32(_916)] = mem[_869 + 32 len ceil32(_916)]
                if ceil32(_916) > _916:
                    mem[_702 + (32 * ('cd', 68).length) + _916 + 292] = 0
                require ext_code.size(address(_636))
                call address(_636).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                     gas gas_remaining wei
                    args 0, _600, address(this.address), 128, mem[_702 + (32 * ('cd', 68).length) + 260 len ceil32(_916) + 32]
        else:
            if cd[4] != 2:
                require ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                require 1 < ('cd', 68).length
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[mem[64] + 4] = address(('cd', 68)[0])
                mem[mem[64] + 36] = address(('cd', 68)[1])
                require ext_code.size(stor3)
                staticcall stor3.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(('cd', 68)[0]), address(('cd', 68)[1])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _619 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _631 = mem[_619]
                require mem[_619] == mem[_619 + 12 len 20]
                require ext_code.size(mem[_619 + 12 len 20])
                staticcall mem[_619 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _659 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_659] == mem[_659 + 12 len 20]
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if address(('cd', 68)[0]) != mem[_659 + 12 len 20]:
                    _699 = mem[64]
                    mem[mem[64] + 32] = _600
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _871 = mem[64]
                    mem[64] = _699 + (32 * ('cd', 68).length) + 128
                    mem[_699 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_699 + (32 * ('cd', 68).length) + 132] = _600
                    mem[_699 + (32 * ('cd', 68).length) + 164] = 0
                    mem[_699 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_699 + (32 * ('cd', 68).length) + 228] = 128
                    _917 = mem[_871]
                    mem[_699 + (32 * ('cd', 68).length) + 260] = mem[_871]
                    mem[_699 + (32 * ('cd', 68).length) + 292 len ceil32(_917)] = mem[_871 + 32 len ceil32(_917)]
                    if ceil32(_917) > _917:
                        mem[_699 + (32 * ('cd', 68).length) + _917 + 292] = 0
                    require ext_code.size(address(_631))
                    call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _600, 0, address(this.address), 128, mem[_699 + (32 * ('cd', 68).length) + 260 len ceil32(_917) + 32]
                else:
                    _700 = mem[64]
                    mem[mem[64] + 32] = _600
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _873 = mem[64]
                    mem[64] = _700 + (32 * ('cd', 68).length) + 128
                    mem[_700 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_700 + (32 * ('cd', 68).length) + 132] = 0
                    mem[_700 + (32 * ('cd', 68).length) + 164] = _600
                    mem[_700 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_700 + (32 * ('cd', 68).length) + 228] = 128
                    _918 = mem[_873]
                    mem[_700 + (32 * ('cd', 68).length) + 260] = mem[_873]
                    mem[_700 + (32 * ('cd', 68).length) + 292 len ceil32(_918)] = mem[_873 + 32 len ceil32(_918)]
                    if ceil32(_918) > _918:
                        mem[_700 + (32 * ('cd', 68).length) + _918 + 292] = 0
                    require ext_code.size(address(_631))
                    call address(_631).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _600, address(this.address), 128, mem[_700 + (32 * ('cd', 68).length) + 260 len ceil32(_918) + 32]
            else:
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                require 1 < ('cd', 68).length
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[mem[64] + 4] = address(('cd', 68)[0])
                mem[mem[64] + 36] = address(('cd', 68)[1])
                if cd[4] == 1:
                    require ext_code.size(stor1)
                    staticcall stor1.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(('cd', 68)[0]), address(('cd', 68)[1])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _632 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _643 = mem[_632]
                    require mem[_632] == mem[_632 + 12 len 20]
                    require ext_code.size(mem[_632 + 12 len 20])
                    staticcall mem[_632 + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _680 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_680] == mem[_680 + 12 len 20]
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if address(('cd', 68)[0]) != mem[_680 + 12 len 20]:
                        _707 = mem[64]
                        mem[mem[64] + 32] = _600
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _875 = mem[64]
                        mem[64] = _707 + (32 * ('cd', 68).length) + 128
                        mem[_707 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_707 + (32 * ('cd', 68).length) + 132] = _600
                        mem[_707 + (32 * ('cd', 68).length) + 164] = 0
                        mem[_707 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_707 + (32 * ('cd', 68).length) + 228] = 128
                        _919 = mem[_875]
                        mem[_707 + (32 * ('cd', 68).length) + 260] = mem[_875]
                        mem[_707 + (32 * ('cd', 68).length) + 292 len ceil32(_919)] = mem[_875 + 32 len ceil32(_919)]
                        if ceil32(_919) > _919:
                            mem[_707 + (32 * ('cd', 68).length) + _919 + 292] = 0
                        require ext_code.size(address(_643))
                        call address(_643).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _600, 0, address(this.address), 128, mem[_707 + (32 * ('cd', 68).length) + 260 len ceil32(_919) + 32]
                    else:
                        _708 = mem[64]
                        mem[mem[64] + 32] = _600
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _877 = mem[64]
                        mem[64] = _708 + (32 * ('cd', 68).length) + 128
                        mem[_708 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_708 + (32 * ('cd', 68).length) + 132] = 0
                        mem[_708 + (32 * ('cd', 68).length) + 164] = _600
                        mem[_708 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_708 + (32 * ('cd', 68).length) + 228] = 128
                        _920 = mem[_877]
                        mem[_708 + (32 * ('cd', 68).length) + 260] = mem[_877]
                        mem[_708 + (32 * ('cd', 68).length) + 292 len ceil32(_920)] = mem[_877 + 32 len ceil32(_920)]
                        if ceil32(_920) > _920:
                            mem[_708 + (32 * ('cd', 68).length) + _920 + 292] = 0
                        require ext_code.size(address(_643))
                        call address(_643).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _600, address(this.address), 128, mem[_708 + (32 * ('cd', 68).length) + 260 len ceil32(_920) + 32]
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(('cd', 68)[0]), address(('cd', 68)[1])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _633 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _644 = mem[_633]
                    require mem[_633] == mem[_633 + 12 len 20]
                    require ext_code.size(mem[_633 + 12 len 20])
                    staticcall mem[_633 + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _681 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_681] == mem[_681 + 12 len 20]
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if address(('cd', 68)[0]) != mem[_681 + 12 len 20]:
                        _709 = mem[64]
                        mem[mem[64] + 32] = _600
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _879 = mem[64]
                        mem[64] = _709 + (32 * ('cd', 68).length) + 128
                        mem[_709 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_709 + (32 * ('cd', 68).length) + 132] = _600
                        mem[_709 + (32 * ('cd', 68).length) + 164] = 0
                        mem[_709 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_709 + (32 * ('cd', 68).length) + 228] = 128
                        _921 = mem[_879]
                        mem[_709 + (32 * ('cd', 68).length) + 260] = mem[_879]
                        mem[_709 + (32 * ('cd', 68).length) + 292 len ceil32(_921)] = mem[_879 + 32 len ceil32(_921)]
                        if ceil32(_921) > _921:
                            mem[_709 + (32 * ('cd', 68).length) + _921 + 292] = 0
                        require ext_code.size(address(_644))
                        call address(_644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _600, 0, address(this.address), 128, mem[_709 + (32 * ('cd', 68).length) + 260 len ceil32(_921) + 32]
                    else:
                        _710 = mem[64]
                        mem[mem[64] + 32] = _600
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _881 = mem[64]
                        mem[64] = _710 + (32 * ('cd', 68).length) + 128
                        mem[_710 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_710 + (32 * ('cd', 68).length) + 132] = 0
                        mem[_710 + (32 * ('cd', 68).length) + 164] = _600
                        mem[_710 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_710 + (32 * ('cd', 68).length) + 228] = 128
                        _922 = mem[_881]
                        mem[_710 + (32 * ('cd', 68).length) + 260] = mem[_881]
                        mem[_710 + (32 * ('cd', 68).length) + 292 len ceil32(_922)] = mem[_881 + 32 len ceil32(_922)]
                        if ceil32(_922) > _922:
                            mem[_710 + (32 * ('cd', 68).length) + _922 + 292] = 0
                        require ext_code.size(address(_644))
                        call address(_644).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _600, address(this.address), 128, mem[_710 + (32 * ('cd', 68).length) + 260 len ceil32(_922) + 32]
    else:
        if cd[4] == 2:
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor5)
            staticcall stor5.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _313 = mem[192 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[192 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 223
            _316 = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
            require return_data.size >= _313 + (32 * _316) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _316] = mem[_313 + 224 len 32 * _316]
            require 1 < _316
            _601 = mem[ceil32(return_data.size) + 256]
            if cd[4] == 1:
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                require 1 < ('cd', 68).length
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[mem[64] + 4] = address(('cd', 68)[0])
                mem[mem[64] + 36] = address(('cd', 68)[1])
                require ext_code.size(stor1)
                staticcall stor1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(('cd', 68)[0]), address(('cd', 68)[1])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _634 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _645 = mem[_634]
                require mem[_634] == mem[_634 + 12 len 20]
                require ext_code.size(mem[_634 + 12 len 20])
                staticcall mem[_634 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_682] == mem[_682 + 12 len 20]
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if address(('cd', 68)[0]) != mem[_682 + 12 len 20]:
                    _711 = mem[64]
                    mem[mem[64] + 32] = _601
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _883 = mem[64]
                    mem[64] = _711 + (32 * ('cd', 68).length) + 128
                    mem[_711 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_711 + (32 * ('cd', 68).length) + 132] = _601
                    mem[_711 + (32 * ('cd', 68).length) + 164] = 0
                    mem[_711 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_711 + (32 * ('cd', 68).length) + 228] = 128
                    _923 = mem[_883]
                    mem[_711 + (32 * ('cd', 68).length) + 260] = mem[_883]
                    mem[_711 + (32 * ('cd', 68).length) + 292 len ceil32(_923)] = mem[_883 + 32 len ceil32(_923)]
                    if ceil32(_923) > _923:
                        mem[_711 + (32 * ('cd', 68).length) + _923 + 292] = 0
                    require ext_code.size(address(_645))
                    call address(_645).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _601, 0, address(this.address), 128, mem[_711 + (32 * ('cd', 68).length) + 260 len ceil32(_923) + 32]
                else:
                    _712 = mem[64]
                    mem[mem[64] + 32] = _601
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _885 = mem[64]
                    mem[64] = _712 + (32 * ('cd', 68).length) + 128
                    mem[_712 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_712 + (32 * ('cd', 68).length) + 132] = 0
                    mem[_712 + (32 * ('cd', 68).length) + 164] = _601
                    mem[_712 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_712 + (32 * ('cd', 68).length) + 228] = 128
                    _924 = mem[_885]
                    mem[_712 + (32 * ('cd', 68).length) + 260] = mem[_885]
                    mem[_712 + (32 * ('cd', 68).length) + 292 len ceil32(_924)] = mem[_885 + 32 len ceil32(_924)]
                    if ceil32(_924) > _924:
                        mem[_712 + (32 * ('cd', 68).length) + _924 + 292] = 0
                    require ext_code.size(address(_645))
                    call address(_645).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _601, address(this.address), 128, mem[_712 + (32 * ('cd', 68).length) + 260 len ceil32(_924) + 32]
            else:
                if cd[4] != 2:
                    require ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    require 1 < ('cd', 68).length
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[mem[64] + 4] = address(('cd', 68)[0])
                    mem[mem[64] + 36] = address(('cd', 68)[1])
                    require ext_code.size(stor3)
                    staticcall stor3.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(('cd', 68)[0]), address(('cd', 68)[1])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _625 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _637 = mem[_625]
                    require mem[_625] == mem[_625 + 12 len 20]
                    require ext_code.size(mem[_625 + 12 len 20])
                    staticcall mem[_625 + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _669 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_669] == mem[_669 + 12 len 20]
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if address(('cd', 68)[0]) != mem[_669 + 12 len 20]:
                        _703 = mem[64]
                        mem[mem[64] + 32] = _601
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _887 = mem[64]
                        mem[64] = _703 + (32 * ('cd', 68).length) + 128
                        mem[_703 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_703 + (32 * ('cd', 68).length) + 132] = _601
                        mem[_703 + (32 * ('cd', 68).length) + 164] = 0
                        mem[_703 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_703 + (32 * ('cd', 68).length) + 228] = 128
                        _925 = mem[_887]
                        mem[_703 + (32 * ('cd', 68).length) + 260] = mem[_887]
                        mem[_703 + (32 * ('cd', 68).length) + 292 len ceil32(_925)] = mem[_887 + 32 len ceil32(_925)]
                        if ceil32(_925) > _925:
                            mem[_703 + (32 * ('cd', 68).length) + _925 + 292] = 0
                        require ext_code.size(address(_637))
                        call address(_637).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _601, 0, address(this.address), 128, mem[_703 + (32 * ('cd', 68).length) + 260 len ceil32(_925) + 32]
                    else:
                        _704 = mem[64]
                        mem[mem[64] + 32] = _601
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _889 = mem[64]
                        mem[64] = _704 + (32 * ('cd', 68).length) + 128
                        mem[_704 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_704 + (32 * ('cd', 68).length) + 132] = 0
                        mem[_704 + (32 * ('cd', 68).length) + 164] = _601
                        mem[_704 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_704 + (32 * ('cd', 68).length) + 228] = 128
                        _926 = mem[_889]
                        mem[_704 + (32 * ('cd', 68).length) + 260] = mem[_889]
                        mem[_704 + (32 * ('cd', 68).length) + 292 len ceil32(_926)] = mem[_889 + 32 len ceil32(_926)]
                        if ceil32(_926) > _926:
                            mem[_704 + (32 * ('cd', 68).length) + _926 + 292] = 0
                        require ext_code.size(address(_637))
                        call address(_637).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _601, address(this.address), 128, mem[_704 + (32 * ('cd', 68).length) + 260 len ceil32(_926) + 32]
                else:
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    require 1 < ('cd', 68).length
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[mem[64] + 4] = address(('cd', 68)[0])
                    mem[mem[64] + 36] = address(('cd', 68)[1])
                    if cd[4] == 1:
                        require ext_code.size(stor1)
                        staticcall stor1.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(('cd', 68)[0]), address(('cd', 68)[1])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _638 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _647 = mem[_638]
                        require mem[_638] == mem[_638 + 12 len 20]
                        require ext_code.size(mem[_638 + 12 len 20])
                        staticcall mem[_638 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _686 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_686] == mem[_686 + 12 len 20]
                        require 0 < ('cd', 68).length
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if address(('cd', 68)[0]) != mem[_686 + 12 len 20]:
                            _715 = mem[64]
                            mem[mem[64] + 32] = _601
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _891 = mem[64]
                            mem[64] = _715 + (32 * ('cd', 68).length) + 128
                            mem[_715 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_715 + (32 * ('cd', 68).length) + 132] = _601
                            mem[_715 + (32 * ('cd', 68).length) + 164] = 0
                            mem[_715 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_715 + (32 * ('cd', 68).length) + 228] = 128
                            _927 = mem[_891]
                            mem[_715 + (32 * ('cd', 68).length) + 260] = mem[_891]
                            mem[_715 + (32 * ('cd', 68).length) + 292 len ceil32(_927)] = mem[_891 + 32 len ceil32(_927)]
                            if ceil32(_927) > _927:
                                mem[_715 + (32 * ('cd', 68).length) + _927 + 292] = 0
                            require ext_code.size(address(_647))
                            call address(_647).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _601, 0, address(this.address), 128, mem[_715 + (32 * ('cd', 68).length) + 260 len ceil32(_927) + 32]
                        else:
                            _716 = mem[64]
                            mem[mem[64] + 32] = _601
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _893 = mem[64]
                            mem[64] = _716 + (32 * ('cd', 68).length) + 128
                            mem[_716 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_716 + (32 * ('cd', 68).length) + 132] = 0
                            mem[_716 + (32 * ('cd', 68).length) + 164] = _601
                            mem[_716 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_716 + (32 * ('cd', 68).length) + 228] = 128
                            _928 = mem[_893]
                            mem[_716 + (32 * ('cd', 68).length) + 260] = mem[_893]
                            mem[_716 + (32 * ('cd', 68).length) + 292 len ceil32(_928)] = mem[_893 + 32 len ceil32(_928)]
                            if ceil32(_928) > _928:
                                mem[_716 + (32 * ('cd', 68).length) + _928 + 292] = 0
                            require ext_code.size(address(_647))
                            call address(_647).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _601, address(this.address), 128, mem[_716 + (32 * ('cd', 68).length) + 260 len ceil32(_928) + 32]
                    else:
                        require ext_code.size(stor2)
                        staticcall stor2.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(('cd', 68)[0]), address(('cd', 68)[1])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _639 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _648 = mem[_639]
                        require mem[_639] == mem[_639 + 12 len 20]
                        require ext_code.size(mem[_639 + 12 len 20])
                        staticcall mem[_639 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _687 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_687] == mem[_687 + 12 len 20]
                        require 0 < ('cd', 68).length
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if address(('cd', 68)[0]) != mem[_687 + 12 len 20]:
                            _717 = mem[64]
                            mem[mem[64] + 32] = _601
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _895 = mem[64]
                            mem[64] = _717 + (32 * ('cd', 68).length) + 128
                            mem[_717 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_717 + (32 * ('cd', 68).length) + 132] = _601
                            mem[_717 + (32 * ('cd', 68).length) + 164] = 0
                            mem[_717 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_717 + (32 * ('cd', 68).length) + 228] = 128
                            _929 = mem[_895]
                            mem[_717 + (32 * ('cd', 68).length) + 260] = mem[_895]
                            mem[_717 + (32 * ('cd', 68).length) + 292 len ceil32(_929)] = mem[_895 + 32 len ceil32(_929)]
                            if ceil32(_929) > _929:
                                mem[_717 + (32 * ('cd', 68).length) + _929 + 292] = 0
                            require ext_code.size(address(_648))
                            call address(_648).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _601, 0, address(this.address), 128, mem[_717 + (32 * ('cd', 68).length) + 260 len ceil32(_929) + 32]
                        else:
                            _718 = mem[64]
                            mem[mem[64] + 32] = _601
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _897 = mem[64]
                            mem[64] = _718 + (32 * ('cd', 68).length) + 128
                            mem[_718 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_718 + (32 * ('cd', 68).length) + 132] = 0
                            mem[_718 + (32 * ('cd', 68).length) + 164] = _601
                            mem[_718 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_718 + (32 * ('cd', 68).length) + 228] = 128
                            _930 = mem[_897]
                            mem[_718 + (32 * ('cd', 68).length) + 260] = mem[_897]
                            mem[_718 + (32 * ('cd', 68).length) + 292 len ceil32(_930)] = mem[_897 + 32 len ceil32(_930)]
                            if ceil32(_930) > _930:
                                mem[_718 + (32 * ('cd', 68).length) + _930 + 292] = 0
                            require ext_code.size(address(_648))
                            call address(_648).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _601, address(this.address), 128, mem[_718 + (32 * ('cd', 68).length) + 260 len ceil32(_930) + 32]
        else:
            idx = 0
            s = 128
            t = 292
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor6)
            staticcall stor6.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args cd[36], Array(len=2, data=mem[292 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 192
            require return_data.size >= 32
            _314 = mem[192 len 4], Mask(224, 32, cd[36]) >> 32
            require mem[192 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
            require return_data.size + 192 > mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 223
            _317 = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
            require mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192] <= test266151307()
            require (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224 <= test266151307()
            mem[64] = ceil32(return_data.size) + (32 * mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]) + 224
            mem[ceil32(return_data.size) + 192] = mem[mem[192 len 4], Mask(224, 32, cd[36]) >> 32 + 192]
            require return_data.size >= _314 + (32 * _317) + 32
            mem[ceil32(return_data.size) + 224 len 32 * _317] = mem[_314 + 224 len 32 * _317]
            require 1 < _317
            _602 = mem[ceil32(return_data.size) + 256]
            if cd[4] == 1:
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                require 1 < ('cd', 68).length
                require ('cd', 68)[1] == address(('cd', 68)[1])
                mem[mem[64] + 4] = address(('cd', 68)[0])
                mem[mem[64] + 36] = address(('cd', 68)[1])
                require ext_code.size(stor1)
                staticcall stor1.getPair(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(('cd', 68)[0]), address(('cd', 68)[1])
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _635 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _646 = mem[_635]
                require mem[_635] == mem[_635 + 12 len 20]
                require ext_code.size(mem[_635 + 12 len 20])
                staticcall mem[_635 + 12 len 20].token0() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _683 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_683] == mem[_683 + 12 len 20]
                require 0 < ('cd', 68).length
                require ('cd', 68)[0] == address(('cd', 68)[0])
                if address(('cd', 68)[0]) != mem[_683 + 12 len 20]:
                    _713 = mem[64]
                    mem[mem[64] + 32] = _602
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _899 = mem[64]
                    mem[64] = _713 + (32 * ('cd', 68).length) + 128
                    mem[_713 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_713 + (32 * ('cd', 68).length) + 132] = _602
                    mem[_713 + (32 * ('cd', 68).length) + 164] = 0
                    mem[_713 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_713 + (32 * ('cd', 68).length) + 228] = 128
                    _931 = mem[_899]
                    mem[_713 + (32 * ('cd', 68).length) + 260] = mem[_899]
                    mem[_713 + (32 * ('cd', 68).length) + 292 len ceil32(_931)] = mem[_899 + 32 len ceil32(_931)]
                    if ceil32(_931) > _931:
                        mem[_713 + (32 * ('cd', 68).length) + _931 + 292] = 0
                    require ext_code.size(address(_646))
                    call address(_646).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args _602, 0, address(this.address), 128, mem[_713 + (32 * ('cd', 68).length) + 260 len ceil32(_931) + 32]
                else:
                    _714 = mem[64]
                    mem[mem[64] + 32] = _602
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = ('cd', 68).length
                    idx = 0
                    s = cd[68] + 36
                    t = mem[64] + 128
                    while idx < ('cd', 68).length:
                        require cd[s] == address(cd[s])
                        mem[t] = address(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    _901 = mem[64]
                    mem[64] = _714 + (32 * ('cd', 68).length) + 128
                    mem[_714 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[_714 + (32 * ('cd', 68).length) + 132] = 0
                    mem[_714 + (32 * ('cd', 68).length) + 164] = _602
                    mem[_714 + (32 * ('cd', 68).length) + 196] = this.address
                    mem[_714 + (32 * ('cd', 68).length) + 228] = 128
                    _932 = mem[_901]
                    mem[_714 + (32 * ('cd', 68).length) + 260] = mem[_901]
                    mem[_714 + (32 * ('cd', 68).length) + 292 len ceil32(_932)] = mem[_901 + 32 len ceil32(_932)]
                    if ceil32(_932) > _932:
                        mem[_714 + (32 * ('cd', 68).length) + _932 + 292] = 0
                    require ext_code.size(address(_646))
                    call address(_646).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, _602, address(this.address), 128, mem[_714 + (32 * ('cd', 68).length) + 260 len ceil32(_932) + 32]
            else:
                if cd[4] != 2:
                    require ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    require 1 < ('cd', 68).length
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[mem[64] + 4] = address(('cd', 68)[0])
                    mem[mem[64] + 36] = address(('cd', 68)[1])
                    require ext_code.size(stor3)
                    staticcall stor3.getPair(address arg1, address arg2) with:
                            gas gas_remaining wei
                           args address(('cd', 68)[0]), address(('cd', 68)[1])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _628 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _640 = mem[_628]
                    require mem[_628] == mem[_628 + 12 len 20]
                    require ext_code.size(mem[_628 + 12 len 20])
                    staticcall mem[_628 + 12 len 20].token0() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _674 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_674] == mem[_674 + 12 len 20]
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    if address(('cd', 68)[0]) != mem[_674 + 12 len 20]:
                        _705 = mem[64]
                        mem[mem[64] + 32] = _602
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _903 = mem[64]
                        mem[64] = _705 + (32 * ('cd', 68).length) + 128
                        mem[_705 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_705 + (32 * ('cd', 68).length) + 132] = _602
                        mem[_705 + (32 * ('cd', 68).length) + 164] = 0
                        mem[_705 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_705 + (32 * ('cd', 68).length) + 228] = 128
                        _933 = mem[_903]
                        mem[_705 + (32 * ('cd', 68).length) + 260] = mem[_903]
                        mem[_705 + (32 * ('cd', 68).length) + 292 len ceil32(_933)] = mem[_903 + 32 len ceil32(_933)]
                        if ceil32(_933) > _933:
                            mem[_705 + (32 * ('cd', 68).length) + _933 + 292] = 0
                        require ext_code.size(address(_640))
                        call address(_640).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args _602, 0, address(this.address), 128, mem[_705 + (32 * ('cd', 68).length) + 260 len ceil32(_933) + 32]
                    else:
                        _706 = mem[64]
                        mem[mem[64] + 32] = _602
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = ('cd', 68).length
                        idx = 0
                        s = cd[68] + 36
                        t = mem[64] + 128
                        while idx < ('cd', 68).length:
                            require cd[s] == address(cd[s])
                            mem[t] = address(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        _905 = mem[64]
                        mem[64] = _706 + (32 * ('cd', 68).length) + 128
                        mem[_706 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                        mem[_706 + (32 * ('cd', 68).length) + 132] = 0
                        mem[_706 + (32 * ('cd', 68).length) + 164] = _602
                        mem[_706 + (32 * ('cd', 68).length) + 196] = this.address
                        mem[_706 + (32 * ('cd', 68).length) + 228] = 128
                        _934 = mem[_905]
                        mem[_706 + (32 * ('cd', 68).length) + 260] = mem[_905]
                        mem[_706 + (32 * ('cd', 68).length) + 292 len ceil32(_934)] = mem[_905 + 32 len ceil32(_934)]
                        if ceil32(_934) > _934:
                            mem[_706 + (32 * ('cd', 68).length) + _934 + 292] = 0
                        require ext_code.size(address(_640))
                        call address(_640).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                             gas gas_remaining wei
                            args 0, _602, address(this.address), 128, mem[_706 + (32 * ('cd', 68).length) + 260 len ceil32(_934) + 32]
                else:
                    require 0 < ('cd', 68).length
                    require ('cd', 68)[0] == address(('cd', 68)[0])
                    require 1 < ('cd', 68).length
                    require ('cd', 68)[1] == address(('cd', 68)[1])
                    mem[mem[64] + 4] = address(('cd', 68)[0])
                    mem[mem[64] + 36] = address(('cd', 68)[1])
                    if cd[4] == 1:
                        require ext_code.size(stor1)
                        staticcall stor1.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(('cd', 68)[0]), address(('cd', 68)[1])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _641 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _649 = mem[_641]
                        require mem[_641] == mem[_641 + 12 len 20]
                        require ext_code.size(mem[_641 + 12 len 20])
                        staticcall mem[_641 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _689 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_689] == mem[_689 + 12 len 20]
                        require 0 < ('cd', 68).length
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if address(('cd', 68)[0]) != mem[_689 + 12 len 20]:
                            _719 = mem[64]
                            mem[mem[64] + 32] = _602
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _907 = mem[64]
                            mem[64] = _719 + (32 * ('cd', 68).length) + 128
                            mem[_719 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_719 + (32 * ('cd', 68).length) + 132] = _602
                            mem[_719 + (32 * ('cd', 68).length) + 164] = 0
                            mem[_719 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_719 + (32 * ('cd', 68).length) + 228] = 128
                            _935 = mem[_907]
                            mem[_719 + (32 * ('cd', 68).length) + 260] = mem[_907]
                            mem[_719 + (32 * ('cd', 68).length) + 292 len ceil32(_935)] = mem[_907 + 32 len ceil32(_935)]
                            if ceil32(_935) > _935:
                                mem[_719 + (32 * ('cd', 68).length) + _935 + 292] = 0
                            require ext_code.size(address(_649))
                            call address(_649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _602, 0, address(this.address), 128, mem[_719 + (32 * ('cd', 68).length) + 260 len ceil32(_935) + 32]
                        else:
                            _720 = mem[64]
                            mem[mem[64] + 32] = _602
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _909 = mem[64]
                            mem[64] = _720 + (32 * ('cd', 68).length) + 128
                            mem[_720 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_720 + (32 * ('cd', 68).length) + 132] = 0
                            mem[_720 + (32 * ('cd', 68).length) + 164] = _602
                            mem[_720 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_720 + (32 * ('cd', 68).length) + 228] = 128
                            _936 = mem[_909]
                            mem[_720 + (32 * ('cd', 68).length) + 260] = mem[_909]
                            mem[_720 + (32 * ('cd', 68).length) + 292 len ceil32(_936)] = mem[_909 + 32 len ceil32(_936)]
                            if ceil32(_936) > _936:
                                mem[_720 + (32 * ('cd', 68).length) + _936 + 292] = 0
                            require ext_code.size(address(_649))
                            call address(_649).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _602, address(this.address), 128, mem[_720 + (32 * ('cd', 68).length) + 260 len ceil32(_936) + 32]
                    else:
                        require ext_code.size(stor2)
                        staticcall stor2.getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(('cd', 68)[0]), address(('cd', 68)[1])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _642 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _650 = mem[_642]
                        require mem[_642] == mem[_642 + 12 len 20]
                        require ext_code.size(mem[_642 + 12 len 20])
                        staticcall mem[_642 + 12 len 20].token0() with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _690 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_690] == mem[_690 + 12 len 20]
                        require 0 < ('cd', 68).length
                        require ('cd', 68)[0] == address(('cd', 68)[0])
                        if address(('cd', 68)[0]) != mem[_690 + 12 len 20]:
                            _721 = mem[64]
                            mem[mem[64] + 32] = _602
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _911 = mem[64]
                            mem[64] = _721 + (32 * ('cd', 68).length) + 128
                            mem[_721 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_721 + (32 * ('cd', 68).length) + 132] = _602
                            mem[_721 + (32 * ('cd', 68).length) + 164] = 0
                            mem[_721 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_721 + (32 * ('cd', 68).length) + 228] = 128
                            _937 = mem[_911]
                            mem[_721 + (32 * ('cd', 68).length) + 260] = mem[_911]
                            mem[_721 + (32 * ('cd', 68).length) + 292 len ceil32(_937)] = mem[_911 + 32 len ceil32(_937)]
                            if ceil32(_937) > _937:
                                mem[_721 + (32 * ('cd', 68).length) + _937 + 292] = 0
                            require ext_code.size(address(_650))
                            call address(_650).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args _602, 0, address(this.address), 128, mem[_721 + (32 * ('cd', 68).length) + 260 len ceil32(_937) + 32]
                        else:
                            _722 = mem[64]
                            mem[mem[64] + 32] = _602
                            mem[mem[64] + 64] = 64
                            mem[mem[64] + 96] = ('cd', 68).length
                            idx = 0
                            s = cd[68] + 36
                            t = mem[64] + 128
                            while idx < ('cd', 68).length:
                                require cd[s] == address(cd[s])
                                mem[t] = address(cd[s])
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _913 = mem[64]
                            mem[64] = _722 + (32 * ('cd', 68).length) + 128
                            mem[_722 + (32 * ('cd', 68).length) + 128] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                            mem[_722 + (32 * ('cd', 68).length) + 132] = 0
                            mem[_722 + (32 * ('cd', 68).length) + 164] = _602
                            mem[_722 + (32 * ('cd', 68).length) + 196] = this.address
                            mem[_722 + (32 * ('cd', 68).length) + 228] = 128
                            _938 = mem[_913]
                            mem[_722 + (32 * ('cd', 68).length) + 260] = mem[_913]
                            mem[_722 + (32 * ('cd', 68).length) + 292 len ceil32(_938)] = mem[_913 + 32 len ceil32(_938)]
                            if ceil32(_938) > _938:
                                mem[_722 + (32 * ('cd', 68).length) + _938 + 292] = 0
                            require ext_code.size(address(_650))
                            call address(_650).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                 gas gas_remaining wei
                                args 0, _602, address(this.address), 128, mem[_722 + (32 * ('cd', 68).length) + 260 len ceil32(_938) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pancakeCall(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require arg4.length >= 64
        require cd[(arg4 + 68)] <= test266151307()
        require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
        mem[(4 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
        s = arg4 + cd[(arg4 + 68)] + 68
        t = (4 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if mem[(4 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
            t = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
            require return_data.size >= 32
            _1816 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
            _1822 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1822
            require return_data.size >= _1816 + (32 * _1822) + 32
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1822] = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1816 + 256 len 32 * _1822]
            require 0 < _1822
            _2662 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2664 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2664] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2664 + 32
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3474]:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3490 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3490]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3490]
                        mem[(32 * idx) + _3490 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4334 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4374 = mem[_3490]
                    mem[mem[64] + 164] = mem[_3490]
                    idx = 0
                    s = _3490 + 32
                    t = mem[64] + 196
                    while idx < _4374:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4334 + 100] = this.address
                    mem[_4334 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4334 + (32 * _4374) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5038 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5062 = mem[_5038]
                    require mem[_5038] <= test266151307()
                    require _5038 + return_data.size > _5038 + mem[_5038] + 31
                    _5086 = mem[_5038 + mem[_5038]]
                    require mem[_5038 + mem[_5038]] <= test266151307()
                    require (32 * mem[_5038 + mem[_5038]]) + 32 >= 0 and _5038 + ceil32(return_data.size) + (32 * mem[_5038 + mem[_5038]]) + 32 <= test266151307()
                    mem[64] = _5038 + ceil32(return_data.size) + (32 * mem[_5038 + mem[_5038]]) + 32
                    mem[_5038 + ceil32(return_data.size)] = _5086
                    require return_data.size >= _5062 + (32 * _5086) + 32
                    mem[_5038 + ceil32(return_data.size) + 32 len 32 * _5086] = mem[_5038 + _5062 + 32 len 32 * _5086]
                    require mem[_3490] - 1 < _5086
                    _5606 = mem[(32 * mem[_3490] - 1) + _5038 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3490] - 1) + _5038 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5742] == bool(mem[_5742])
                    if not mem[_5742]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5606 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5606 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5886] == bool(mem[_5886])
                    if not mem[_5886]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3490 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3490]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3490]
                        mem[(32 * idx) + _3490 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4337 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4375 = mem[_3490]
                    mem[mem[64] + 164] = mem[_3490]
                    idx = 0
                    s = _3490 + 32
                    t = mem[64] + 196
                    while idx < _4375:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4337 + 100] = this.address
                    mem[_4337 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4337 + (32 * _4375) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5039 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5063 = mem[_5039]
                    require mem[_5039] <= test266151307()
                    require _5039 + return_data.size > _5039 + mem[_5039] + 31
                    _5087 = mem[_5039 + mem[_5039]]
                    require mem[_5039 + mem[_5039]] <= test266151307()
                    require (32 * mem[_5039 + mem[_5039]]) + 32 >= 0 and _5039 + ceil32(return_data.size) + (32 * mem[_5039 + mem[_5039]]) + 32 <= test266151307()
                    mem[64] = _5039 + ceil32(return_data.size) + (32 * mem[_5039 + mem[_5039]]) + 32
                    mem[_5039 + ceil32(return_data.size)] = _5087
                    require return_data.size >= _5063 + (32 * _5087) + 32
                    mem[_5039 + ceil32(return_data.size) + 32 len 32 * _5087] = mem[_5039 + _5063 + 32 len 32 * _5087]
                    require mem[_3490] - 1 < _5087
                    _5607 = mem[(32 * mem[_3490] - 1) + _5039 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3490] - 1) + _5039 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5743] == bool(mem[_5743])
                    if not mem[_5743]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5607 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5607 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5887] == bool(mem[_5887])
                    if not mem[_5887]:
                        revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3514] == bool(mem[_3514])
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3607 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3607]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3607]
                        mem[(32 * idx) + _3607 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4340 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4376 = mem[_3607]
                    mem[mem[64] + 164] = mem[_3607]
                    idx = 0
                    s = _3607 + 32
                    t = mem[64] + 196
                    while idx < _4376:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4340 + 100] = this.address
                    mem[_4340 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4340 + (32 * _4376) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5040 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5064 = mem[_5040]
                    require mem[_5040] <= test266151307()
                    require _5040 + return_data.size > _5040 + mem[_5040] + 31
                    _5088 = mem[_5040 + mem[_5040]]
                    require mem[_5040 + mem[_5040]] <= test266151307()
                    require (32 * mem[_5040 + mem[_5040]]) + 32 >= 0 and _5040 + ceil32(return_data.size) + (32 * mem[_5040 + mem[_5040]]) + 32 <= test266151307()
                    mem[64] = _5040 + ceil32(return_data.size) + (32 * mem[_5040 + mem[_5040]]) + 32
                    mem[_5040 + ceil32(return_data.size)] = _5088
                    require return_data.size >= _5064 + (32 * _5088) + 32
                    mem[_5040 + ceil32(return_data.size) + 32 len 32 * _5088] = mem[_5040 + _5064 + 32 len 32 * _5088]
                    require mem[_3607] - 1 < _5088
                    _5608 = mem[(32 * mem[_3607] - 1) + _5040 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3607] - 1) + _5040 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5744] == bool(mem[_5744])
                    if not mem[_5744]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5608 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5608 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5888] == bool(mem[_5888])
                    if not mem[_5888]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3607 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3607]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3607]
                        mem[(32 * idx) + _3607 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4377 = mem[_3607]
                    mem[mem[64] + 164] = mem[_3607]
                    idx = 0
                    s = _3607 + 32
                    t = mem[64] + 196
                    while idx < _4377:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2662, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4377) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5041 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5065 = mem[_5041]
                    require mem[_5041] <= test266151307()
                    require _5041 + return_data.size > _5041 + mem[_5041] + 31
                    _5089 = mem[_5041 + mem[_5041]]
                    require mem[_5041 + mem[_5041]] <= test266151307()
                    require (32 * mem[_5041 + mem[_5041]]) + 32 >= 0 and _5041 + ceil32(return_data.size) + (32 * mem[_5041 + mem[_5041]]) + 32 <= test266151307()
                    mem[64] = _5041 + ceil32(return_data.size) + (32 * mem[_5041 + mem[_5041]]) + 32
                    mem[_5041 + ceil32(return_data.size)] = _5089
                    require return_data.size >= _5065 + (32 * _5089) + 32
                    mem[_5041 + ceil32(return_data.size) + 32 len 32 * _5089] = mem[_5041 + _5065 + 32 len 32 * _5089]
                    require mem[_3607] - 1 < _5089
                    _5609 = mem[(32 * mem[_3607] - 1) + _5041 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3607] - 1) + _5041 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5745] == bool(mem[_5745])
                    if not mem[_5745]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5609 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5609 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5889] == bool(mem[_5889])
                    if not mem[_5889]:
                        revert with 0, 'Withdraw failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
            t = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
            require return_data.size >= 32
            _1817 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
            _1823 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1823
            require return_data.size >= _1817 + (32 * _1823) + 32
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1823] = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1817 + 256 len 32 * _1823]
            require 0 < _1823
            _2663 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2665 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2665] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2665 + 32
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3475]:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3491 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3491]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3491]
                        mem[(32 * idx) + _3491 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4378 = mem[_3491]
                    mem[mem[64] + 164] = mem[_3491]
                    idx = 0
                    s = _3491 + 32
                    t = mem[64] + 196
                    while idx < _4378:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4378) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5042 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5066 = mem[_5042]
                    require mem[_5042] <= test266151307()
                    require _5042 + return_data.size > _5042 + mem[_5042] + 31
                    _5090 = mem[_5042 + mem[_5042]]
                    require mem[_5042 + mem[_5042]] <= test266151307()
                    require (32 * mem[_5042 + mem[_5042]]) + 32 >= 0 and _5042 + ceil32(return_data.size) + (32 * mem[_5042 + mem[_5042]]) + 32 <= test266151307()
                    mem[64] = _5042 + ceil32(return_data.size) + (32 * mem[_5042 + mem[_5042]]) + 32
                    mem[_5042 + ceil32(return_data.size)] = _5090
                    require return_data.size >= _5066 + (32 * _5090) + 32
                    mem[_5042 + ceil32(return_data.size) + 32 len 32 * _5090] = mem[_5042 + _5066 + 32 len 32 * _5090]
                    require mem[_3491] - 1 < _5090
                    _5610 = mem[(32 * mem[_3491] - 1) + _5042 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3491] - 1) + _5042 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5746] == bool(mem[_5746])
                    if not mem[_5746]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5610 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5610 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5890] == bool(mem[_5890])
                    if not mem[_5890]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3491 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3491]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3491]
                        mem[(32 * idx) + _3491 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4349 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4379 = mem[_3491]
                    mem[mem[64] + 164] = mem[_3491]
                    idx = 0
                    s = _3491 + 32
                    t = mem[64] + 196
                    while idx < _4379:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4349 + 100] = this.address
                    mem[_4349 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4349 + (32 * _4379) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5043 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5067 = mem[_5043]
                    require mem[_5043] <= test266151307()
                    require _5043 + return_data.size > _5043 + mem[_5043] + 31
                    _5091 = mem[_5043 + mem[_5043]]
                    require mem[_5043 + mem[_5043]] <= test266151307()
                    require (32 * mem[_5043 + mem[_5043]]) + 32 >= 0 and _5043 + ceil32(return_data.size) + (32 * mem[_5043 + mem[_5043]]) + 32 <= test266151307()
                    mem[64] = _5043 + ceil32(return_data.size) + (32 * mem[_5043 + mem[_5043]]) + 32
                    mem[_5043 + ceil32(return_data.size)] = _5091
                    require return_data.size >= _5067 + (32 * _5091) + 32
                    mem[_5043 + ceil32(return_data.size) + 32 len 32 * _5091] = mem[_5043 + _5067 + 32 len 32 * _5091]
                    require mem[_3491] - 1 < _5091
                    _5611 = mem[(32 * mem[_3491] - 1) + _5043 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3491] - 1) + _5043 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5747] == bool(mem[_5747])
                    if not mem[_5747]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5611 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5611 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5891] == bool(mem[_5891])
                    if not mem[_5891]:
                        revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3517] == bool(mem[_3517])
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3609 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3609]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3609]
                        mem[(32 * idx) + _3609 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4380 = mem[_3609]
                    mem[mem[64] + 164] = mem[_3609]
                    idx = 0
                    s = _3609 + 32
                    t = mem[64] + 196
                    while idx < _4380:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4380) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5044 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5068 = mem[_5044]
                    require mem[_5044] <= test266151307()
                    require _5044 + return_data.size > _5044 + mem[_5044] + 31
                    _5092 = mem[_5044 + mem[_5044]]
                    require mem[_5044 + mem[_5044]] <= test266151307()
                    require (32 * mem[_5044 + mem[_5044]]) + 32 >= 0 and _5044 + ceil32(return_data.size) + (32 * mem[_5044 + mem[_5044]]) + 32 <= test266151307()
                    mem[64] = _5044 + ceil32(return_data.size) + (32 * mem[_5044 + mem[_5044]]) + 32
                    mem[_5044 + ceil32(return_data.size)] = _5092
                    require return_data.size >= _5068 + (32 * _5092) + 32
                    mem[_5044 + ceil32(return_data.size) + 32 len 32 * _5092] = mem[_5044 + _5068 + 32 len 32 * _5092]
                    require mem[_3609] - 1 < _5092
                    _5612 = mem[(32 * mem[_3609] - 1) + _5044 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3609] - 1) + _5044 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5748] == bool(mem[_5748])
                    if not mem[_5748]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5612 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5612 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5892] == bool(mem[_5892])
                    if not mem[_5892]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3609 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3609]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3609]
                        mem[(32 * idx) + _3609 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4381 = mem[_3609]
                    mem[mem[64] + 164] = mem[_3609]
                    idx = 0
                    s = _3609 + 32
                    t = mem[64] + 196
                    while idx < _4381:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4381) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5045 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5069 = mem[_5045]
                    require mem[_5045] <= test266151307()
                    require _5045 + return_data.size > _5045 + mem[_5045] + 31
                    _5093 = mem[_5045 + mem[_5045]]
                    require mem[_5045 + mem[_5045]] <= test266151307()
                    require (32 * mem[_5045 + mem[_5045]]) + 32 >= 0 and _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32 <= test266151307()
                    mem[64] = _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32
                    mem[_5045 + ceil32(return_data.size)] = _5093
                    require return_data.size >= _5069 + (32 * _5093) + 32
                    mem[_5045 + ceil32(return_data.size) + 32 len 32 * _5093] = mem[_5045 + _5069 + 32 len 32 * _5093]
                    require mem[_3609] - 1 < _5093
                    _5613 = mem[(32 * mem[_3609] - 1) + _5045 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3609] - 1) + _5045 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5749] == bool(mem[_5749])
                    if not mem[_5749]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5613 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5613 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5893] == bool(mem[_5893])
                    if not mem[_5893]:
                        revert with 0, 'Withdraw failed!'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = (6 * ceil32(return_data.size)) + 128
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if mem[(6 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1814 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _1820 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1820
                require return_data.size >= _1814 + (32 * _1820) + 32
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1820] = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1814 + 256 len 32 * _1820]
                require 0 < _1820
                _2660 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2668 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2668] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2668 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3478]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3504 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3504]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3504]
                            mem[(32 * idx) + _3504 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4366 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4390 = mem[_3504]
                        mem[mem[64] + 164] = mem[_3504]
                        idx = 0
                        s = _3504 + 32
                        t = mem[64] + 196
                        while idx < _4390:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4366 + 100] = this.address
                        mem[_4366 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4366 + (32 * _4390) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5030 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5054 = mem[_5030]
                        require mem[_5030] <= test266151307()
                        require _5030 + return_data.size > _5030 + mem[_5030] + 31
                        _5078 = mem[_5030 + mem[_5030]]
                        require mem[_5030 + mem[_5030]] <= test266151307()
                        require (32 * mem[_5030 + mem[_5030]]) + 32 >= 0 and _5030 + ceil32(return_data.size) + (32 * mem[_5030 + mem[_5030]]) + 32 <= test266151307()
                        mem[64] = _5030 + ceil32(return_data.size) + (32 * mem[_5030 + mem[_5030]]) + 32
                        mem[_5030 + ceil32(return_data.size)] = _5078
                        require return_data.size >= _5054 + (32 * _5078) + 32
                        mem[_5030 + ceil32(return_data.size) + 32 len 32 * _5078] = mem[_5030 + _5054 + 32 len 32 * _5078]
                        require mem[_3504] - 1 < _5078
                        _5630 = mem[(32 * mem[_3504] - 1) + _5030 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3504] - 1) + _5030 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5750] == bool(mem[_5750])
                        if not mem[_5750]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5630 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5630 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5894] == bool(mem[_5894])
                        if not mem[_5894]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3504 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3504]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3504]
                            mem[(32 * idx) + _3504 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4367 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4391 = mem[_3504]
                        mem[mem[64] + 164] = mem[_3504]
                        idx = 0
                        s = _3504 + 32
                        t = mem[64] + 196
                        while idx < _4391:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4367 + 100] = this.address
                        mem[_4367 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4367 + (32 * _4391) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5031 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5055 = mem[_5031]
                        require mem[_5031] <= test266151307()
                        require _5031 + return_data.size > _5031 + mem[_5031] + 31
                        _5079 = mem[_5031 + mem[_5031]]
                        require mem[_5031 + mem[_5031]] <= test266151307()
                        require (32 * mem[_5031 + mem[_5031]]) + 32 >= 0 and _5031 + ceil32(return_data.size) + (32 * mem[_5031 + mem[_5031]]) + 32 <= test266151307()
                        mem[64] = _5031 + ceil32(return_data.size) + (32 * mem[_5031 + mem[_5031]]) + 32
                        mem[_5031 + ceil32(return_data.size)] = _5079
                        require return_data.size >= _5055 + (32 * _5079) + 32
                        mem[_5031 + ceil32(return_data.size) + 32 len 32 * _5079] = mem[_5031 + _5055 + 32 len 32 * _5079]
                        require mem[_3504] - 1 < _5079
                        _5631 = mem[(32 * mem[_3504] - 1) + _5031 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3504] - 1) + _5031 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5751 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5751] == bool(mem[_5751])
                        if not mem[_5751]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5631 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5631 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5895] == bool(mem[_5895])
                        if not mem[_5895]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3538] == bool(mem[_3538])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3625 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3625]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3625]
                            mem[(32 * idx) + _3625 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4368 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4392 = mem[_3625]
                        mem[mem[64] + 164] = mem[_3625]
                        idx = 0
                        s = _3625 + 32
                        t = mem[64] + 196
                        while idx < _4392:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4368 + 100] = this.address
                        mem[_4368 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4368 + (32 * _4392) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5032 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5056 = mem[_5032]
                        require mem[_5032] <= test266151307()
                        require _5032 + return_data.size > _5032 + mem[_5032] + 31
                        _5080 = mem[_5032 + mem[_5032]]
                        require mem[_5032 + mem[_5032]] <= test266151307()
                        require (32 * mem[_5032 + mem[_5032]]) + 32 >= 0 and _5032 + ceil32(return_data.size) + (32 * mem[_5032 + mem[_5032]]) + 32 <= test266151307()
                        mem[64] = _5032 + ceil32(return_data.size) + (32 * mem[_5032 + mem[_5032]]) + 32
                        mem[_5032 + ceil32(return_data.size)] = _5080
                        require return_data.size >= _5056 + (32 * _5080) + 32
                        mem[_5032 + ceil32(return_data.size) + 32 len 32 * _5080] = mem[_5032 + _5056 + 32 len 32 * _5080]
                        require mem[_3625] - 1 < _5080
                        _5632 = mem[(32 * mem[_3625] - 1) + _5032 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3625] - 1) + _5032 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5752 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5752] == bool(mem[_5752])
                        if not mem[_5752]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5632 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5632 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5896 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5896] == bool(mem[_5896])
                        if not mem[_5896]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3625 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3625]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3625]
                            mem[(32 * idx) + _3625 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4369 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4393 = mem[_3625]
                        mem[mem[64] + 164] = mem[_3625]
                        idx = 0
                        s = _3625 + 32
                        t = mem[64] + 196
                        while idx < _4393:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4369 + 100] = this.address
                        mem[_4369 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4369 + (32 * _4393) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5033 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5057 = mem[_5033]
                        require mem[_5033] <= test266151307()
                        require _5033 + return_data.size > _5033 + mem[_5033] + 31
                        _5081 = mem[_5033 + mem[_5033]]
                        require mem[_5033 + mem[_5033]] <= test266151307()
                        require (32 * mem[_5033 + mem[_5033]]) + 32 >= 0 and _5033 + ceil32(return_data.size) + (32 * mem[_5033 + mem[_5033]]) + 32 <= test266151307()
                        mem[64] = _5033 + ceil32(return_data.size) + (32 * mem[_5033 + mem[_5033]]) + 32
                        mem[_5033 + ceil32(return_data.size)] = _5081
                        require return_data.size >= _5057 + (32 * _5081) + 32
                        mem[_5033 + ceil32(return_data.size) + 32 len 32 * _5081] = mem[_5033 + _5057 + 32 len 32 * _5081]
                        require mem[_3625] - 1 < _5081
                        _5633 = mem[(32 * mem[_3625] - 1) + _5033 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3625] - 1) + _5033 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5753] == bool(mem[_5753])
                        if not mem[_5753]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5633 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5633 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5897] == bool(mem[_5897])
                        if not mem[_5897]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1815 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
                _1821 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1821
                require return_data.size >= _1815 + (32 * _1821) + 32
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1821] = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1815 + 256 len 32 * _1821]
                require 0 < _1821
                _2661 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2669 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2669] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2669 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3479]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3505 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3505]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3505]
                            mem[(32 * idx) + _3505 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4370 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4394 = mem[_3505]
                        mem[mem[64] + 164] = mem[_3505]
                        idx = 0
                        s = _3505 + 32
                        t = mem[64] + 196
                        while idx < _4394:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4370 + 100] = this.address
                        mem[_4370 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4370 + (32 * _4394) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5034 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5058 = mem[_5034]
                        require mem[_5034] <= test266151307()
                        require _5034 + return_data.size > _5034 + mem[_5034] + 31
                        _5082 = mem[_5034 + mem[_5034]]
                        require mem[_5034 + mem[_5034]] <= test266151307()
                        require (32 * mem[_5034 + mem[_5034]]) + 32 >= 0 and _5034 + ceil32(return_data.size) + (32 * mem[_5034 + mem[_5034]]) + 32 <= test266151307()
                        mem[64] = _5034 + ceil32(return_data.size) + (32 * mem[_5034 + mem[_5034]]) + 32
                        mem[_5034 + ceil32(return_data.size)] = _5082
                        require return_data.size >= _5058 + (32 * _5082) + 32
                        mem[_5034 + ceil32(return_data.size) + 32 len 32 * _5082] = mem[_5034 + _5058 + 32 len 32 * _5082]
                        require mem[_3505] - 1 < _5082
                        _5634 = mem[(32 * mem[_3505] - 1) + _5034 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3505] - 1) + _5034 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5754 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5754] == bool(mem[_5754])
                        if not mem[_5754]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5634 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5634 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5898] == bool(mem[_5898])
                        if not mem[_5898]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3505 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3505]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3505]
                            mem[(32 * idx) + _3505 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4371 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4395 = mem[_3505]
                        mem[mem[64] + 164] = mem[_3505]
                        idx = 0
                        s = _3505 + 32
                        t = mem[64] + 196
                        while idx < _4395:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4371 + 100] = this.address
                        mem[_4371 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4371 + (32 * _4395) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5035 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5059 = mem[_5035]
                        require mem[_5035] <= test266151307()
                        require _5035 + return_data.size > _5035 + mem[_5035] + 31
                        _5083 = mem[_5035 + mem[_5035]]
                        require mem[_5035 + mem[_5035]] <= test266151307()
                        require (32 * mem[_5035 + mem[_5035]]) + 32 >= 0 and _5035 + ceil32(return_data.size) + (32 * mem[_5035 + mem[_5035]]) + 32 <= test266151307()
                        mem[64] = _5035 + ceil32(return_data.size) + (32 * mem[_5035 + mem[_5035]]) + 32
                        mem[_5035 + ceil32(return_data.size)] = _5083
                        require return_data.size >= _5059 + (32 * _5083) + 32
                        mem[_5035 + ceil32(return_data.size) + 32 len 32 * _5083] = mem[_5035 + _5059 + 32 len 32 * _5083]
                        require mem[_3505] - 1 < _5083
                        _5635 = mem[(32 * mem[_3505] - 1) + _5035 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3505] - 1) + _5035 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5755 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5755] == bool(mem[_5755])
                        if not mem[_5755]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5635 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5635 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5899] == bool(mem[_5899])
                        if not mem[_5899]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3541] == bool(mem[_3541])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3627 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3627]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3627]
                            mem[(32 * idx) + _3627 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4372 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4396 = mem[_3627]
                        mem[mem[64] + 164] = mem[_3627]
                        idx = 0
                        s = _3627 + 32
                        t = mem[64] + 196
                        while idx < _4396:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4372 + 100] = this.address
                        mem[_4372 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4372 + (32 * _4396) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5036 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5060 = mem[_5036]
                        require mem[_5036] <= test266151307()
                        require _5036 + return_data.size > _5036 + mem[_5036] + 31
                        _5084 = mem[_5036 + mem[_5036]]
                        require mem[_5036 + mem[_5036]] <= test266151307()
                        require (32 * mem[_5036 + mem[_5036]]) + 32 >= 0 and _5036 + ceil32(return_data.size) + (32 * mem[_5036 + mem[_5036]]) + 32 <= test266151307()
                        mem[64] = _5036 + ceil32(return_data.size) + (32 * mem[_5036 + mem[_5036]]) + 32
                        mem[_5036 + ceil32(return_data.size)] = _5084
                        require return_data.size >= _5060 + (32 * _5084) + 32
                        mem[_5036 + ceil32(return_data.size) + 32 len 32 * _5084] = mem[_5036 + _5060 + 32 len 32 * _5084]
                        require mem[_3627] - 1 < _5084
                        _5636 = mem[(32 * mem[_3627] - 1) + _5036 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3627] - 1) + _5036 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5756 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5756] == bool(mem[_5756])
                        if not mem[_5756]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5636 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5636 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5900] == bool(mem[_5900])
                        if not mem[_5900]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3627 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3627]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3627]
                            mem[(32 * idx) + _3627 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4373 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4397 = mem[_3627]
                        mem[mem[64] + 164] = mem[_3627]
                        idx = 0
                        s = _3627 + 32
                        t = mem[64] + 196
                        while idx < _4397:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4373 + 100] = this.address
                        mem[_4373 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4373 + (32 * _4397) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5037 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5061 = mem[_5037]
                        require mem[_5037] <= test266151307()
                        require _5037 + return_data.size > _5037 + mem[_5037] + 31
                        _5085 = mem[_5037 + mem[_5037]]
                        require mem[_5037 + mem[_5037]] <= test266151307()
                        require (32 * mem[_5037 + mem[_5037]]) + 32 >= 0 and _5037 + ceil32(return_data.size) + (32 * mem[_5037 + mem[_5037]]) + 32 <= test266151307()
                        mem[64] = _5037 + ceil32(return_data.size) + (32 * mem[_5037 + mem[_5037]]) + 32
                        mem[_5037 + ceil32(return_data.size)] = _5085
                        require return_data.size >= _5061 + (32 * _5085) + 32
                        mem[_5037 + ceil32(return_data.size) + 32 len 32 * _5085] = mem[_5037 + _5061 + 32 len 32 * _5085]
                        require mem[_3627] - 1 < _5085
                        _5637 = mem[(32 * mem[_3627] - 1) + _5037 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3627] - 1) + _5037 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5757] == bool(mem[_5757])
                        if not mem[_5757]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5637 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5637 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5901] == bool(mem[_5901])
                        if not mem[_5901]:
                            revert with 0, 'Withdraw failed!'
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Unknown caller!'
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
            mem[(7 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = (7 * ceil32(return_data.size)) + 128
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if mem[(7 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1812 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _1818 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1818
                require return_data.size >= _1812 + (32 * _1818) + 32
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1818] = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1812 + 256 len 32 * _1818]
                require 0 < _1818
                _2658 = mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2666 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2666] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2666 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor6
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3476]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3502 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3502]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3502]
                            mem[(32 * idx) + _3502 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4382 = mem[_3502]
                        mem[mem[64] + 164] = mem[_3502]
                        idx = 0
                        s = _3502 + 32
                        t = mem[64] + 196
                        while idx < _4382:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], _2658, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4382) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5022 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5046 = mem[_5022]
                        require mem[_5022] <= test266151307()
                        require _5022 + return_data.size > _5022 + mem[_5022] + 31
                        _5070 = mem[_5022 + mem[_5022]]
                        require mem[_5022 + mem[_5022]] <= test266151307()
                        require (32 * mem[_5022 + mem[_5022]]) + 32 >= 0 and _5022 + ceil32(return_data.size) + (32 * mem[_5022 + mem[_5022]]) + 32 <= test266151307()
                        mem[64] = _5022 + ceil32(return_data.size) + (32 * mem[_5022 + mem[_5022]]) + 32
                        mem[_5022 + ceil32(return_data.size)] = _5070
                        require return_data.size >= _5046 + (32 * _5070) + 32
                        mem[_5022 + ceil32(return_data.size) + 32 len 32 * _5070] = mem[_5022 + _5046 + 32 len 32 * _5070]
                        require mem[_3502] - 1 < _5070
                        _5654 = mem[(32 * mem[_3502] - 1) + _5022 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3502] - 1) + _5022 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5758] == bool(mem[_5758])
                        if not mem[_5758]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5654 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5654 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5902] == bool(mem[_5902])
                        if not mem[_5902]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3502 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3502]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3502]
                            mem[(32 * idx) + _3502 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4359 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4383 = mem[_3502]
                        mem[mem[64] + 164] = mem[_3502]
                        idx = 0
                        s = _3502 + 32
                        t = mem[64] + 196
                        while idx < _4383:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4359 + 100] = this.address
                        mem[_4359 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4359 + (32 * _4383) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5023 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5047 = mem[_5023]
                        require mem[_5023] <= test266151307()
                        require _5023 + return_data.size > _5023 + mem[_5023] + 31
                        _5071 = mem[_5023 + mem[_5023]]
                        require mem[_5023 + mem[_5023]] <= test266151307()
                        require (32 * mem[_5023 + mem[_5023]]) + 32 >= 0 and _5023 + ceil32(return_data.size) + (32 * mem[_5023 + mem[_5023]]) + 32 <= test266151307()
                        mem[64] = _5023 + ceil32(return_data.size) + (32 * mem[_5023 + mem[_5023]]) + 32
                        mem[_5023 + ceil32(return_data.size)] = _5071
                        require return_data.size >= _5047 + (32 * _5071) + 32
                        mem[_5023 + ceil32(return_data.size) + 32 len 32 * _5071] = mem[_5023 + _5047 + 32 len 32 * _5071]
                        require mem[_3502] - 1 < _5071
                        _5655 = mem[(32 * mem[_3502] - 1) + _5023 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3502] - 1) + _5023 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5759] == bool(mem[_5759])
                        if not mem[_5759]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5655 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5655 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5903 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5903] == bool(mem[_5903])
                        if not mem[_5903]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3532] == bool(mem[_3532])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3621 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3621]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3621]
                            mem[(32 * idx) + _3621 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4360 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4384 = mem[_3621]
                        mem[mem[64] + 164] = mem[_3621]
                        idx = 0
                        s = _3621 + 32
                        t = mem[64] + 196
                        while idx < _4384:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4360 + 100] = this.address
                        mem[_4360 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4360 + (32 * _4384) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5024 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5048 = mem[_5024]
                        require mem[_5024] <= test266151307()
                        require _5024 + return_data.size > _5024 + mem[_5024] + 31
                        _5072 = mem[_5024 + mem[_5024]]
                        require mem[_5024 + mem[_5024]] <= test266151307()
                        require (32 * mem[_5024 + mem[_5024]]) + 32 >= 0 and _5024 + ceil32(return_data.size) + (32 * mem[_5024 + mem[_5024]]) + 32 <= test266151307()
                        mem[64] = _5024 + ceil32(return_data.size) + (32 * mem[_5024 + mem[_5024]]) + 32
                        mem[_5024 + ceil32(return_data.size)] = _5072
                        require return_data.size >= _5048 + (32 * _5072) + 32
                        mem[_5024 + ceil32(return_data.size) + 32 len 32 * _5072] = mem[_5024 + _5048 + 32 len 32 * _5072]
                        require mem[_3621] - 1 < _5072
                        _5656 = mem[(32 * mem[_3621] - 1) + _5024 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3621] - 1) + _5024 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5760] == bool(mem[_5760])
                        if not mem[_5760]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5656 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5656 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5904] == bool(mem[_5904])
                        if not mem[_5904]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3621 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3621]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3621]
                            mem[(32 * idx) + _3621 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4361 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4385 = mem[_3621]
                        mem[mem[64] + 164] = mem[_3621]
                        idx = 0
                        s = _3621 + 32
                        t = mem[64] + 196
                        while idx < _4385:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4361 + 100] = this.address
                        mem[_4361 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4361 + (32 * _4385) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5025 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5049 = mem[_5025]
                        require mem[_5025] <= test266151307()
                        require _5025 + return_data.size > _5025 + mem[_5025] + 31
                        _5073 = mem[_5025 + mem[_5025]]
                        require mem[_5025 + mem[_5025]] <= test266151307()
                        require (32 * mem[_5025 + mem[_5025]]) + 32 >= 0 and _5025 + ceil32(return_data.size) + (32 * mem[_5025 + mem[_5025]]) + 32 <= test266151307()
                        mem[64] = _5025 + ceil32(return_data.size) + (32 * mem[_5025 + mem[_5025]]) + 32
                        mem[_5025 + ceil32(return_data.size)] = _5073
                        require return_data.size >= _5049 + (32 * _5073) + 32
                        mem[_5025 + ceil32(return_data.size) + 32 len 32 * _5073] = mem[_5025 + _5049 + 32 len 32 * _5073]
                        require mem[_3621] - 1 < _5073
                        _5657 = mem[(32 * mem[_3621] - 1) + _5025 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3621] - 1) + _5025 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5761] == bool(mem[_5761])
                        if not mem[_5761]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5657 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5657 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5905] == bool(mem[_5905])
                        if not mem[_5905]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1813 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
                _1819 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1819
                require return_data.size >= _1813 + (32 * _1819) + 32
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1819] = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1813 + 256 len 32 * _1819]
                require 0 < _1819
                _2659 = mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2667 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2667] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2667 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor6
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3477 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3477]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3503 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3503]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3503]
                            mem[(32 * idx) + _3503 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4362 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4386 = mem[_3503]
                        mem[mem[64] + 164] = mem[_3503]
                        idx = 0
                        s = _3503 + 32
                        t = mem[64] + 196
                        while idx < _4386:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4362 + 100] = this.address
                        mem[_4362 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4362 + (32 * _4386) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5026 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5050 = mem[_5026]
                        require mem[_5026] <= test266151307()
                        require _5026 + return_data.size > _5026 + mem[_5026] + 31
                        _5074 = mem[_5026 + mem[_5026]]
                        require mem[_5026 + mem[_5026]] <= test266151307()
                        require (32 * mem[_5026 + mem[_5026]]) + 32 >= 0 and _5026 + ceil32(return_data.size) + (32 * mem[_5026 + mem[_5026]]) + 32 <= test266151307()
                        mem[64] = _5026 + ceil32(return_data.size) + (32 * mem[_5026 + mem[_5026]]) + 32
                        mem[_5026 + ceil32(return_data.size)] = _5074
                        require return_data.size >= _5050 + (32 * _5074) + 32
                        mem[_5026 + ceil32(return_data.size) + 32 len 32 * _5074] = mem[_5026 + _5050 + 32 len 32 * _5074]
                        require mem[_3503] - 1 < _5074
                        _5658 = mem[(32 * mem[_3503] - 1) + _5026 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3503] - 1) + _5026 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5762] == bool(mem[_5762])
                        if not mem[_5762]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5658 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5658 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5906 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5906] == bool(mem[_5906])
                        if not mem[_5906]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3503 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3503]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3503]
                            mem[(32 * idx) + _3503 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4363 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4387 = mem[_3503]
                        mem[mem[64] + 164] = mem[_3503]
                        idx = 0
                        s = _3503 + 32
                        t = mem[64] + 196
                        while idx < _4387:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4363 + 100] = this.address
                        mem[_4363 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4363 + (32 * _4387) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5027 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5051 = mem[_5027]
                        require mem[_5027] <= test266151307()
                        require _5027 + return_data.size > _5027 + mem[_5027] + 31
                        _5075 = mem[_5027 + mem[_5027]]
                        require mem[_5027 + mem[_5027]] <= test266151307()
                        require (32 * mem[_5027 + mem[_5027]]) + 32 >= 0 and _5027 + ceil32(return_data.size) + (32 * mem[_5027 + mem[_5027]]) + 32 <= test266151307()
                        mem[64] = _5027 + ceil32(return_data.size) + (32 * mem[_5027 + mem[_5027]]) + 32
                        mem[_5027 + ceil32(return_data.size)] = _5075
                        require return_data.size >= _5051 + (32 * _5075) + 32
                        mem[_5027 + ceil32(return_data.size) + 32 len 32 * _5075] = mem[_5027 + _5051 + 32 len 32 * _5075]
                        require mem[_3503] - 1 < _5075
                        _5659 = mem[(32 * mem[_3503] - 1) + _5027 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3503] - 1) + _5027 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5763] == bool(mem[_5763])
                        if not mem[_5763]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5659 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5659 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5907] == bool(mem[_5907])
                        if not mem[_5907]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3535] == bool(mem[_3535])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3623 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3623]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3623]
                            mem[(32 * idx) + _3623 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4364 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4388 = mem[_3623]
                        mem[mem[64] + 164] = mem[_3623]
                        idx = 0
                        s = _3623 + 32
                        t = mem[64] + 196
                        while idx < _4388:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4364 + 100] = this.address
                        mem[_4364 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4364 + (32 * _4388) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5028 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5052 = mem[_5028]
                        require mem[_5028] <= test266151307()
                        require _5028 + return_data.size > _5028 + mem[_5028] + 31
                        _5076 = mem[_5028 + mem[_5028]]
                        require mem[_5028 + mem[_5028]] <= test266151307()
                        require (32 * mem[_5028 + mem[_5028]]) + 32 >= 0 and _5028 + ceil32(return_data.size) + (32 * mem[_5028 + mem[_5028]]) + 32 <= test266151307()
                        mem[64] = _5028 + ceil32(return_data.size) + (32 * mem[_5028 + mem[_5028]]) + 32
                        mem[_5028 + ceil32(return_data.size)] = _5076
                        require return_data.size >= _5052 + (32 * _5076) + 32
                        mem[_5028 + ceil32(return_data.size) + 32 len 32 * _5076] = mem[_5028 + _5052 + 32 len 32 * _5076]
                        require mem[_3623] - 1 < _5076
                        _5660 = mem[(32 * mem[_3623] - 1) + _5028 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3623] - 1) + _5028 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5764] == bool(mem[_5764])
                        if not mem[_5764]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5660 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5660 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5908] == bool(mem[_5908])
                        if not mem[_5908]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3623 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3623]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3623]
                            mem[(32 * idx) + _3623 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4365 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4389 = mem[_3623]
                        mem[mem[64] + 164] = mem[_3623]
                        idx = 0
                        s = _3623 + 32
                        t = mem[64] + 196
                        while idx < _4389:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4365 + 100] = this.address
                        mem[_4365 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4365 + (32 * _4389) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5029 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5053 = mem[_5029]
                        require mem[_5029] <= test266151307()
                        require _5029 + return_data.size > _5029 + mem[_5029] + 31
                        _5077 = mem[_5029 + mem[_5029]]
                        require mem[_5029 + mem[_5029]] <= test266151307()
                        require (32 * mem[_5029 + mem[_5029]]) + 32 >= 0 and _5029 + ceil32(return_data.size) + (32 * mem[_5029 + mem[_5029]]) + 32 <= test266151307()
                        mem[64] = _5029 + ceil32(return_data.size) + (32 * mem[_5029 + mem[_5029]]) + 32
                        mem[_5029 + ceil32(return_data.size)] = _5077
                        require return_data.size >= _5053 + (32 * _5077) + 32
                        mem[_5029 + ceil32(return_data.size) + 32 len 32 * _5077] = mem[_5029 + _5053 + 32 len 32 * _5077]
                        require mem[_3623] - 1 < _5077
                        _5661 = mem[(32 * mem[_3623] - 1) + _5029 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3623] - 1) + _5029 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5765] == bool(mem[_5765])
                        if not mem[_5765]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5661 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5661 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5909] == bool(mem[_5909])
                        if not mem[_5909]:
                            revert with 0, 'Withdraw failed!'
}

function uniswapV2Call(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(msg.sender)
    staticcall msg.sender.token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(msg.sender)
    staticcall msg.sender.token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(stor1)
    staticcall stor1.getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if msg.sender == ext_call.return_data[12 len 20]:
        require arg4.length >= 64
        require cd[(arg4 + 68)] <= test266151307()
        require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
        require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
        require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
        mem[(4 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
        require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
        s = arg4 + cd[(arg4 + 68)] + 68
        t = (4 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
            require cd[s] == address(cd[s])
            mem[t] = cd[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
        if mem[(4 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
            t = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
            require return_data.size >= 32
            _1816 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
            _1822 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1822
            require return_data.size >= _1816 + (32 * _1822) + 32
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1822] = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1816 + 256 len 32 * _1822]
            require 0 < _1822
            _2662 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2664 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2664] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2664 + 32
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3474 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3474]:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3490 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3490]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3490]
                        mem[(32 * idx) + _3490 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4334 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4374 = mem[_3490]
                    mem[mem[64] + 164] = mem[_3490]
                    idx = 0
                    s = _3490 + 32
                    t = mem[64] + 196
                    while idx < _4374:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4334 + 100] = this.address
                    mem[_4334 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4334 + (32 * _4374) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5038 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5062 = mem[_5038]
                    require mem[_5038] <= test266151307()
                    require _5038 + return_data.size > _5038 + mem[_5038] + 31
                    _5086 = mem[_5038 + mem[_5038]]
                    require mem[_5038 + mem[_5038]] <= test266151307()
                    require (32 * mem[_5038 + mem[_5038]]) + 32 >= 0 and _5038 + ceil32(return_data.size) + (32 * mem[_5038 + mem[_5038]]) + 32 <= test266151307()
                    mem[64] = _5038 + ceil32(return_data.size) + (32 * mem[_5038 + mem[_5038]]) + 32
                    mem[_5038 + ceil32(return_data.size)] = _5086
                    require return_data.size >= _5062 + (32 * _5086) + 32
                    mem[_5038 + ceil32(return_data.size) + 32 len 32 * _5086] = mem[_5038 + _5062 + 32 len 32 * _5086]
                    require mem[_3490] - 1 < _5086
                    _5606 = mem[(32 * mem[_3490] - 1) + _5038 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3490] - 1) + _5038 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5742 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5742] == bool(mem[_5742])
                    if not mem[_5742]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5606 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5606 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5886 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5886] == bool(mem[_5886])
                    if not mem[_5886]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3490 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3490]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3490]
                        mem[(32 * idx) + _3490 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4337 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4375 = mem[_3490]
                    mem[mem[64] + 164] = mem[_3490]
                    idx = 0
                    s = _3490 + 32
                    t = mem[64] + 196
                    while idx < _4375:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4337 + 100] = this.address
                    mem[_4337 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4337 + (32 * _4375) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5039 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5063 = mem[_5039]
                    require mem[_5039] <= test266151307()
                    require _5039 + return_data.size > _5039 + mem[_5039] + 31
                    _5087 = mem[_5039 + mem[_5039]]
                    require mem[_5039 + mem[_5039]] <= test266151307()
                    require (32 * mem[_5039 + mem[_5039]]) + 32 >= 0 and _5039 + ceil32(return_data.size) + (32 * mem[_5039 + mem[_5039]]) + 32 <= test266151307()
                    mem[64] = _5039 + ceil32(return_data.size) + (32 * mem[_5039 + mem[_5039]]) + 32
                    mem[_5039 + ceil32(return_data.size)] = _5087
                    require return_data.size >= _5063 + (32 * _5087) + 32
                    mem[_5039 + ceil32(return_data.size) + 32 len 32 * _5087] = mem[_5039 + _5063 + 32 len 32 * _5087]
                    require mem[_3490] - 1 < _5087
                    _5607 = mem[(32 * mem[_3490] - 1) + _5039 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3490] - 1) + _5039 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5743 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5743] == bool(mem[_5743])
                    if not mem[_5743]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5607 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5607 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5887 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5887] == bool(mem[_5887])
                    if not mem[_5887]:
                        revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3514 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3514] == bool(mem[_3514])
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3607 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3607]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3607]
                        mem[(32 * idx) + _3607 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4340 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4376 = mem[_3607]
                    mem[mem[64] + 164] = mem[_3607]
                    idx = 0
                    s = _3607 + 32
                    t = mem[64] + 196
                    while idx < _4376:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4340 + 100] = this.address
                    mem[_4340 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4340 + (32 * _4376) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5040 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5064 = mem[_5040]
                    require mem[_5040] <= test266151307()
                    require _5040 + return_data.size > _5040 + mem[_5040] + 31
                    _5088 = mem[_5040 + mem[_5040]]
                    require mem[_5040 + mem[_5040]] <= test266151307()
                    require (32 * mem[_5040 + mem[_5040]]) + 32 >= 0 and _5040 + ceil32(return_data.size) + (32 * mem[_5040 + mem[_5040]]) + 32 <= test266151307()
                    mem[64] = _5040 + ceil32(return_data.size) + (32 * mem[_5040 + mem[_5040]]) + 32
                    mem[_5040 + ceil32(return_data.size)] = _5088
                    require return_data.size >= _5064 + (32 * _5088) + 32
                    mem[_5040 + ceil32(return_data.size) + 32 len 32 * _5088] = mem[_5040 + _5064 + 32 len 32 * _5088]
                    require mem[_3607] - 1 < _5088
                    _5608 = mem[(32 * mem[_3607] - 1) + _5040 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3607] - 1) + _5040 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5744 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5744] == bool(mem[_5744])
                    if not mem[_5744]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5608 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5608 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5888 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5888] == bool(mem[_5888])
                    if not mem[_5888]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3607 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3607]:
                        require idx + 1 < mem[_2664]
                        require idx < mem[_3607]
                        mem[(32 * idx) + _3607 + 32] = mem[(32 * idx + 1) + _2664 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2662
                    mem[mem[64] + 68] = 160
                    _4377 = mem[_3607]
                    mem[mem[64] + 164] = mem[_3607]
                    idx = 0
                    s = _3607 + 32
                    t = mem[64] + 196
                    while idx < _4377:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2662, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4377) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5041 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5065 = mem[_5041]
                    require mem[_5041] <= test266151307()
                    require _5041 + return_data.size > _5041 + mem[_5041] + 31
                    _5089 = mem[_5041 + mem[_5041]]
                    require mem[_5041 + mem[_5041]] <= test266151307()
                    require (32 * mem[_5041 + mem[_5041]]) + 32 >= 0 and _5041 + ceil32(return_data.size) + (32 * mem[_5041 + mem[_5041]]) + 32 <= test266151307()
                    mem[64] = _5041 + ceil32(return_data.size) + (32 * mem[_5041 + mem[_5041]]) + 32
                    mem[_5041 + ceil32(return_data.size)] = _5089
                    require return_data.size >= _5065 + (32 * _5089) + 32
                    mem[_5041 + ceil32(return_data.size) + 32 len 32 * _5089] = mem[_5041 + _5065 + 32 len 32 * _5089]
                    require mem[_3607] - 1 < _5089
                    _5609 = mem[(32 * mem[_3607] - 1) + _5041 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3607] - 1) + _5041 + ceil32(return_data.size) + 32] <= _2662:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5745 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5745] == bool(mem[_5745])
                    if not mem[_5745]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5609 - _2662
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5609 - _2662
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5889 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5889] == bool(mem[_5889])
                    if not mem[_5889]:
                        revert with 0, 'Withdraw failed!'
        else:
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
            t = (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(stor4)
            staticcall stor4.getAmountsIn(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg2, Array(len=2, data=mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
            require return_data.size >= 32
            _1817 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
            require (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
            _1823 = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
            require mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
            require (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
            mem[64] = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1823
            require return_data.size >= _1817 + (32 * _1823) + 32
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1823] = mem[(4 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1817 + 256 len 32 * _1823]
            require 0 < _1823
            _2663 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            _2665 = mem[64]
            require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
            mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
            mem[_2665] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = _2665 + 32
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor4
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), stor4
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3475 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_3475]:
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3491 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3491]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3491]
                        mem[(32 * idx) + _3491 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4378 = mem[_3491]
                    mem[mem[64] + 164] = mem[_3491]
                    idx = 0
                    s = _3491 + 32
                    t = mem[64] + 196
                    while idx < _4378:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4378) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5042 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5066 = mem[_5042]
                    require mem[_5042] <= test266151307()
                    require _5042 + return_data.size > _5042 + mem[_5042] + 31
                    _5090 = mem[_5042 + mem[_5042]]
                    require mem[_5042 + mem[_5042]] <= test266151307()
                    require (32 * mem[_5042 + mem[_5042]]) + 32 >= 0 and _5042 + ceil32(return_data.size) + (32 * mem[_5042 + mem[_5042]]) + 32 <= test266151307()
                    mem[64] = _5042 + ceil32(return_data.size) + (32 * mem[_5042 + mem[_5042]]) + 32
                    mem[_5042 + ceil32(return_data.size)] = _5090
                    require return_data.size >= _5066 + (32 * _5090) + 32
                    mem[_5042 + ceil32(return_data.size) + 32 len 32 * _5090] = mem[_5042 + _5066 + 32 len 32 * _5090]
                    require mem[_3491] - 1 < _5090
                    _5610 = mem[(32 * mem[_3491] - 1) + _5042 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3491] - 1) + _5042 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5746 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5746] == bool(mem[_5746])
                    if not mem[_5746]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5610 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5610 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5890 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5890] == bool(mem[_5890])
                    if not mem[_5890]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3491 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3491]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3491]
                        mem[(32 * idx) + _3491 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    _4349 = mem[64]
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4379 = mem[_3491]
                    mem[mem[64] + 164] = mem[_3491]
                    idx = 0
                    s = _3491 + 32
                    t = mem[64] + 196
                    while idx < _4379:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_4349 + 100] = this.address
                    mem[_4349 + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4349 + (32 * _4379) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5043 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5067 = mem[_5043]
                    require mem[_5043] <= test266151307()
                    require _5043 + return_data.size > _5043 + mem[_5043] + 31
                    _5091 = mem[_5043 + mem[_5043]]
                    require mem[_5043 + mem[_5043]] <= test266151307()
                    require (32 * mem[_5043 + mem[_5043]]) + 32 >= 0 and _5043 + ceil32(return_data.size) + (32 * mem[_5043 + mem[_5043]]) + 32 <= test266151307()
                    mem[64] = _5043 + ceil32(return_data.size) + (32 * mem[_5043 + mem[_5043]]) + 32
                    mem[_5043 + ceil32(return_data.size)] = _5091
                    require return_data.size >= _5067 + (32 * _5091) + 32
                    mem[_5043 + ceil32(return_data.size) + 32 len 32 * _5091] = mem[_5043 + _5067 + 32 len 32 * _5091]
                    require mem[_3491] - 1 < _5091
                    _5611 = mem[(32 * mem[_3491] - 1) + _5043 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3491] - 1) + _5043 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5747 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5747] == bool(mem[_5747])
                    if not mem[_5747]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5611 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5611 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5891 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5891] == bool(mem[_5891])
                    if not mem[_5891]:
                        revert with 0, 'Withdraw failed!'
            else:
                mem[mem[64] + 4] = stor4
                mem[mem[64] + 36] = -1
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args stor4, -1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_3517] == bool(mem[_3517])
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                _3609 = mem[64]
                mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                    idx = 0
                    while idx < mem[_3609]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3609]
                        mem[(32 * idx) + _3609 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4380 = mem[_3609]
                    mem[mem[64] + 164] = mem[_3609]
                    idx = 0
                    s = _3609 + 32
                    t = mem[64] + 196
                    while idx < _4380:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4380) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5044 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5068 = mem[_5044]
                    require mem[_5044] <= test266151307()
                    require _5044 + return_data.size > _5044 + mem[_5044] + 31
                    _5092 = mem[_5044 + mem[_5044]]
                    require mem[_5044 + mem[_5044]] <= test266151307()
                    require (32 * mem[_5044 + mem[_5044]]) + 32 >= 0 and _5044 + ceil32(return_data.size) + (32 * mem[_5044 + mem[_5044]]) + 32 <= test266151307()
                    mem[64] = _5044 + ceil32(return_data.size) + (32 * mem[_5044 + mem[_5044]]) + 32
                    mem[_5044 + ceil32(return_data.size)] = _5092
                    require return_data.size >= _5068 + (32 * _5092) + 32
                    mem[_5044 + ceil32(return_data.size) + 32 len 32 * _5092] = mem[_5044 + _5068 + 32 len 32 * _5092]
                    require mem[_3609] - 1 < _5092
                    _5612 = mem[(32 * mem[_3609] - 1) + _5044 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3609] - 1) + _5044 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5748 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5748] == bool(mem[_5748])
                    if not mem[_5748]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5612 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5612 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5892 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5892] == bool(mem[_5892])
                    if not mem[_5892]:
                        revert with 0, 'Withdraw failed!'
                else:
                    mem[_3609 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                    idx = 0
                    while idx < mem[_3609]:
                        require idx + 1 < mem[_2665]
                        require idx < mem[_3609]
                        mem[(32 * idx) + _3609 + 32] = mem[(32 * idx + 1) + _2665 + 44 len 20]
                        idx = idx + 1
                        continue 
                    mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[(arg4 + 36)]
                    mem[mem[64] + 36] = _2663
                    mem[mem[64] + 68] = 160
                    _4381 = mem[_3609]
                    mem[mem[64] + 164] = mem[_3609]
                    idx = 0
                    s = _3609 + 32
                    t = mem[64] + 196
                    while idx < _4381:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 100] = this.address
                    mem[mem[64] + 132] = -1
                    require ext_code.size(stor4)
                    call stor4.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[(arg4 + 36)], _2663, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4381) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5045 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5069 = mem[_5045]
                    require mem[_5045] <= test266151307()
                    require _5045 + return_data.size > _5045 + mem[_5045] + 31
                    _5093 = mem[_5045 + mem[_5045]]
                    require mem[_5045 + mem[_5045]] <= test266151307()
                    require (32 * mem[_5045 + mem[_5045]]) + 32 >= 0 and _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32 <= test266151307()
                    mem[64] = _5045 + ceil32(return_data.size) + (32 * mem[_5045 + mem[_5045]]) + 32
                    mem[_5045 + ceil32(return_data.size)] = _5093
                    require return_data.size >= _5069 + (32 * _5093) + 32
                    mem[_5045 + ceil32(return_data.size) + 32 len 32 * _5093] = mem[_5045 + _5069 + 32 len 32 * _5093]
                    require mem[_3609] - 1 < _5093
                    _5613 = mem[(32 * mem[_3609] - 1) + _5045 + ceil32(return_data.size) + 32]
                    if mem[(32 * mem[_3609] - 1) + _5045 + ceil32(return_data.size) + 32] <= _2663:
                        revert with 0, 'Nope swap!'
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5749 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5749] == bool(mem[_5749])
                    if not mem[_5749]:
                        revert with 0, 'Payback failed!'
                    mem[mem[64] + 4] = owner
                    mem[mem[64] + 36] = _5613 - _2663
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args owner, _5613 - _2663
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5893 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_5893] == bool(mem[_5893])
                    if not mem[_5893]:
                        revert with 0, 'Withdraw failed!'
    else:
        mem[(4 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
        require ext_code.size(stor2)
        staticcall stor2.getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if msg.sender == ext_call.return_data[12 len 20]:
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
            mem[(6 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = (6 * ceil32(return_data.size)) + 128
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if mem[(6 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1814 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _1820 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1820
                require return_data.size >= _1814 + (32 * _1820) + 32
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1820] = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1814 + 256 len 32 * _1820]
                require 0 < _1820
                _2660 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2668 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2668] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2668 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3478 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3478]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3504 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3504]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3504]
                            mem[(32 * idx) + _3504 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4366 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4390 = mem[_3504]
                        mem[mem[64] + 164] = mem[_3504]
                        idx = 0
                        s = _3504 + 32
                        t = mem[64] + 196
                        while idx < _4390:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4366 + 100] = this.address
                        mem[_4366 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4366 + (32 * _4390) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5030 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5054 = mem[_5030]
                        require mem[_5030] <= test266151307()
                        require _5030 + return_data.size > _5030 + mem[_5030] + 31
                        _5078 = mem[_5030 + mem[_5030]]
                        require mem[_5030 + mem[_5030]] <= test266151307()
                        require (32 * mem[_5030 + mem[_5030]]) + 32 >= 0 and _5030 + ceil32(return_data.size) + (32 * mem[_5030 + mem[_5030]]) + 32 <= test266151307()
                        mem[64] = _5030 + ceil32(return_data.size) + (32 * mem[_5030 + mem[_5030]]) + 32
                        mem[_5030 + ceil32(return_data.size)] = _5078
                        require return_data.size >= _5054 + (32 * _5078) + 32
                        mem[_5030 + ceil32(return_data.size) + 32 len 32 * _5078] = mem[_5030 + _5054 + 32 len 32 * _5078]
                        require mem[_3504] - 1 < _5078
                        _5630 = mem[(32 * mem[_3504] - 1) + _5030 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3504] - 1) + _5030 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5750 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5750] == bool(mem[_5750])
                        if not mem[_5750]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5630 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5630 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5894 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5894] == bool(mem[_5894])
                        if not mem[_5894]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3504 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3504]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3504]
                            mem[(32 * idx) + _3504 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4367 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4391 = mem[_3504]
                        mem[mem[64] + 164] = mem[_3504]
                        idx = 0
                        s = _3504 + 32
                        t = mem[64] + 196
                        while idx < _4391:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4367 + 100] = this.address
                        mem[_4367 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4367 + (32 * _4391) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5031 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5055 = mem[_5031]
                        require mem[_5031] <= test266151307()
                        require _5031 + return_data.size > _5031 + mem[_5031] + 31
                        _5079 = mem[_5031 + mem[_5031]]
                        require mem[_5031 + mem[_5031]] <= test266151307()
                        require (32 * mem[_5031 + mem[_5031]]) + 32 >= 0 and _5031 + ceil32(return_data.size) + (32 * mem[_5031 + mem[_5031]]) + 32 <= test266151307()
                        mem[64] = _5031 + ceil32(return_data.size) + (32 * mem[_5031 + mem[_5031]]) + 32
                        mem[_5031 + ceil32(return_data.size)] = _5079
                        require return_data.size >= _5055 + (32 * _5079) + 32
                        mem[_5031 + ceil32(return_data.size) + 32 len 32 * _5079] = mem[_5031 + _5055 + 32 len 32 * _5079]
                        require mem[_3504] - 1 < _5079
                        _5631 = mem[(32 * mem[_3504] - 1) + _5031 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3504] - 1) + _5031 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5751 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5751] == bool(mem[_5751])
                        if not mem[_5751]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5631 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5631 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5895 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5895] == bool(mem[_5895])
                        if not mem[_5895]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3538 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3538] == bool(mem[_3538])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3625 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3625]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3625]
                            mem[(32 * idx) + _3625 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4368 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4392 = mem[_3625]
                        mem[mem[64] + 164] = mem[_3625]
                        idx = 0
                        s = _3625 + 32
                        t = mem[64] + 196
                        while idx < _4392:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4368 + 100] = this.address
                        mem[_4368 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4368 + (32 * _4392) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5032 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5056 = mem[_5032]
                        require mem[_5032] <= test266151307()
                        require _5032 + return_data.size > _5032 + mem[_5032] + 31
                        _5080 = mem[_5032 + mem[_5032]]
                        require mem[_5032 + mem[_5032]] <= test266151307()
                        require (32 * mem[_5032 + mem[_5032]]) + 32 >= 0 and _5032 + ceil32(return_data.size) + (32 * mem[_5032 + mem[_5032]]) + 32 <= test266151307()
                        mem[64] = _5032 + ceil32(return_data.size) + (32 * mem[_5032 + mem[_5032]]) + 32
                        mem[_5032 + ceil32(return_data.size)] = _5080
                        require return_data.size >= _5056 + (32 * _5080) + 32
                        mem[_5032 + ceil32(return_data.size) + 32 len 32 * _5080] = mem[_5032 + _5056 + 32 len 32 * _5080]
                        require mem[_3625] - 1 < _5080
                        _5632 = mem[(32 * mem[_3625] - 1) + _5032 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3625] - 1) + _5032 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5752 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5752] == bool(mem[_5752])
                        if not mem[_5752]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5632 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5632 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5896 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5896] == bool(mem[_5896])
                        if not mem[_5896]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3625 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3625]:
                            require idx + 1 < mem[_2668]
                            require idx < mem[_3625]
                            mem[(32 * idx) + _3625 + 32] = mem[(32 * idx + 1) + _2668 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4369 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2660
                        mem[mem[64] + 68] = 160
                        _4393 = mem[_3625]
                        mem[mem[64] + 164] = mem[_3625]
                        idx = 0
                        s = _3625 + 32
                        t = mem[64] + 196
                        while idx < _4393:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4369 + 100] = this.address
                        mem[_4369 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4369 + (32 * _4393) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5033 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5057 = mem[_5033]
                        require mem[_5033] <= test266151307()
                        require _5033 + return_data.size > _5033 + mem[_5033] + 31
                        _5081 = mem[_5033 + mem[_5033]]
                        require mem[_5033 + mem[_5033]] <= test266151307()
                        require (32 * mem[_5033 + mem[_5033]]) + 32 >= 0 and _5033 + ceil32(return_data.size) + (32 * mem[_5033 + mem[_5033]]) + 32 <= test266151307()
                        mem[64] = _5033 + ceil32(return_data.size) + (32 * mem[_5033 + mem[_5033]]) + 32
                        mem[_5033 + ceil32(return_data.size)] = _5081
                        require return_data.size >= _5057 + (32 * _5081) + 32
                        mem[_5033 + ceil32(return_data.size) + 32 len 32 * _5081] = mem[_5033 + _5057 + 32 len 32 * _5081]
                        require mem[_3625] - 1 < _5081
                        _5633 = mem[(32 * mem[_3625] - 1) + _5033 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3625] - 1) + _5033 + ceil32(return_data.size) + 32] <= _2660:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5753 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5753] == bool(mem[_5753])
                        if not mem[_5753]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5633 - _2660
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5633 - _2660
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5897 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5897] == bool(mem[_5897])
                        if not mem[_5897]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor5)
                staticcall stor5.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1815 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
                _1821 = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                require mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1821
                require return_data.size >= _1815 + (32 * _1821) + 32
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1821] = mem[(6 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1815 + 256 len 32 * _1821]
                require 0 < _1821
                _2661 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2669 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2669] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2669 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor5
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor5
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3479 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3479]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3505 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3505]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3505]
                            mem[(32 * idx) + _3505 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4370 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4394 = mem[_3505]
                        mem[mem[64] + 164] = mem[_3505]
                        idx = 0
                        s = _3505 + 32
                        t = mem[64] + 196
                        while idx < _4394:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4370 + 100] = this.address
                        mem[_4370 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4370 + (32 * _4394) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5034 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5058 = mem[_5034]
                        require mem[_5034] <= test266151307()
                        require _5034 + return_data.size > _5034 + mem[_5034] + 31
                        _5082 = mem[_5034 + mem[_5034]]
                        require mem[_5034 + mem[_5034]] <= test266151307()
                        require (32 * mem[_5034 + mem[_5034]]) + 32 >= 0 and _5034 + ceil32(return_data.size) + (32 * mem[_5034 + mem[_5034]]) + 32 <= test266151307()
                        mem[64] = _5034 + ceil32(return_data.size) + (32 * mem[_5034 + mem[_5034]]) + 32
                        mem[_5034 + ceil32(return_data.size)] = _5082
                        require return_data.size >= _5058 + (32 * _5082) + 32
                        mem[_5034 + ceil32(return_data.size) + 32 len 32 * _5082] = mem[_5034 + _5058 + 32 len 32 * _5082]
                        require mem[_3505] - 1 < _5082
                        _5634 = mem[(32 * mem[_3505] - 1) + _5034 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3505] - 1) + _5034 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5754 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5754] == bool(mem[_5754])
                        if not mem[_5754]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5634 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5634 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5898 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5898] == bool(mem[_5898])
                        if not mem[_5898]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3505 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3505]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3505]
                            mem[(32 * idx) + _3505 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4371 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4395 = mem[_3505]
                        mem[mem[64] + 164] = mem[_3505]
                        idx = 0
                        s = _3505 + 32
                        t = mem[64] + 196
                        while idx < _4395:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4371 + 100] = this.address
                        mem[_4371 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4371 + (32 * _4395) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5035 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5059 = mem[_5035]
                        require mem[_5035] <= test266151307()
                        require _5035 + return_data.size > _5035 + mem[_5035] + 31
                        _5083 = mem[_5035 + mem[_5035]]
                        require mem[_5035 + mem[_5035]] <= test266151307()
                        require (32 * mem[_5035 + mem[_5035]]) + 32 >= 0 and _5035 + ceil32(return_data.size) + (32 * mem[_5035 + mem[_5035]]) + 32 <= test266151307()
                        mem[64] = _5035 + ceil32(return_data.size) + (32 * mem[_5035 + mem[_5035]]) + 32
                        mem[_5035 + ceil32(return_data.size)] = _5083
                        require return_data.size >= _5059 + (32 * _5083) + 32
                        mem[_5035 + ceil32(return_data.size) + 32 len 32 * _5083] = mem[_5035 + _5059 + 32 len 32 * _5083]
                        require mem[_3505] - 1 < _5083
                        _5635 = mem[(32 * mem[_3505] - 1) + _5035 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3505] - 1) + _5035 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5755 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5755] == bool(mem[_5755])
                        if not mem[_5755]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5635 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5635 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5899 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5899] == bool(mem[_5899])
                        if not mem[_5899]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor5
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor5, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3541 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3541] == bool(mem[_3541])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3627 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3627]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3627]
                            mem[(32 * idx) + _3627 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4372 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4396 = mem[_3627]
                        mem[mem[64] + 164] = mem[_3627]
                        idx = 0
                        s = _3627 + 32
                        t = mem[64] + 196
                        while idx < _4396:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4372 + 100] = this.address
                        mem[_4372 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4372 + (32 * _4396) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5036 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5060 = mem[_5036]
                        require mem[_5036] <= test266151307()
                        require _5036 + return_data.size > _5036 + mem[_5036] + 31
                        _5084 = mem[_5036 + mem[_5036]]
                        require mem[_5036 + mem[_5036]] <= test266151307()
                        require (32 * mem[_5036 + mem[_5036]]) + 32 >= 0 and _5036 + ceil32(return_data.size) + (32 * mem[_5036 + mem[_5036]]) + 32 <= test266151307()
                        mem[64] = _5036 + ceil32(return_data.size) + (32 * mem[_5036 + mem[_5036]]) + 32
                        mem[_5036 + ceil32(return_data.size)] = _5084
                        require return_data.size >= _5060 + (32 * _5084) + 32
                        mem[_5036 + ceil32(return_data.size) + 32 len 32 * _5084] = mem[_5036 + _5060 + 32 len 32 * _5084]
                        require mem[_3627] - 1 < _5084
                        _5636 = mem[(32 * mem[_3627] - 1) + _5036 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3627] - 1) + _5036 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5756 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5756] == bool(mem[_5756])
                        if not mem[_5756]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5636 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5636 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5900 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5900] == bool(mem[_5900])
                        if not mem[_5900]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3627 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3627]:
                            require idx + 1 < mem[_2669]
                            require idx < mem[_3627]
                            mem[(32 * idx) + _3627 + 32] = mem[(32 * idx + 1) + _2669 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4373 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2661
                        mem[mem[64] + 68] = 160
                        _4397 = mem[_3627]
                        mem[mem[64] + 164] = mem[_3627]
                        idx = 0
                        s = _3627 + 32
                        t = mem[64] + 196
                        while idx < _4397:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4373 + 100] = this.address
                        mem[_4373 + 132] = -1
                        require ext_code.size(stor5)
                        call stor5.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4373 + (32 * _4397) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5037 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5061 = mem[_5037]
                        require mem[_5037] <= test266151307()
                        require _5037 + return_data.size > _5037 + mem[_5037] + 31
                        _5085 = mem[_5037 + mem[_5037]]
                        require mem[_5037 + mem[_5037]] <= test266151307()
                        require (32 * mem[_5037 + mem[_5037]]) + 32 >= 0 and _5037 + ceil32(return_data.size) + (32 * mem[_5037 + mem[_5037]]) + 32 <= test266151307()
                        mem[64] = _5037 + ceil32(return_data.size) + (32 * mem[_5037 + mem[_5037]]) + 32
                        mem[_5037 + ceil32(return_data.size)] = _5085
                        require return_data.size >= _5061 + (32 * _5085) + 32
                        mem[_5037 + ceil32(return_data.size) + 32 len 32 * _5085] = mem[_5037 + _5061 + 32 len 32 * _5085]
                        require mem[_3627] - 1 < _5085
                        _5637 = mem[(32 * mem[_3627] - 1) + _5037 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3627] - 1) + _5037 + ceil32(return_data.size) + 32] <= _2661:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5757 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5757] == bool(mem[_5757])
                        if not mem[_5757]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5637 - _2661
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5637 - _2661
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5901 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5901] == bool(mem[_5901])
                        if not mem[_5901]:
                            revert with 0, 'Withdraw failed!'
        else:
            mem[(6 * ceil32(return_data.size)) + 100] = address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
            require ext_code.size(stor3)
            staticcall stor3.getPair(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0]), address(ext_call.return_data[0])
            mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0, 'Unknown caller!'
            require arg4.length >= 64
            require cd[(arg4 + 68)] <= test266151307()
            require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
            require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
            require (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 >= 96 and (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128 <= test266151307()
            mem[(7 * ceil32(return_data.size)) + 96] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
            require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
            s = arg4 + cd[(arg4 + 68)] + 68
            t = (7 * ceil32(return_data.size)) + 128
            idx = 0
            while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                require cd[s] == address(cd[s])
                mem[t] = cd[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            require 0 < cd[(arg4 + cd[(arg4 + 68)] + 36)]
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 128] = 2
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 192] = address(ext_call.return_data[0])
            mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
            if mem[(7 * ceil32(return_data.size)) + 140 len 20] == address(ext_call.return_data[0]):
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg3
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg3, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1812 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 255
                _1818 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg3) >> 32 + 224]) + 256
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1818
                require return_data.size >= _1812 + (32 * _1818) + 32
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1818] = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1812 + 256 len 32 * _1818]
                require 0 < _1818
                _2658 = mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2666 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2666] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2666 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor6
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3476]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3502 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3502]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3502]
                            mem[(32 * idx) + _3502 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4382 = mem[_3502]
                        mem[mem[64] + 164] = mem[_3502]
                        idx = 0
                        s = _3502 + 32
                        t = mem[64] + 196
                        while idx < _4382:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = this.address
                        mem[mem[64] + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args cd[(arg4 + 36)], _2658, 160, address(this.address), -1, mem[mem[64] + 164 len (32 * _4382) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5022 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5046 = mem[_5022]
                        require mem[_5022] <= test266151307()
                        require _5022 + return_data.size > _5022 + mem[_5022] + 31
                        _5070 = mem[_5022 + mem[_5022]]
                        require mem[_5022 + mem[_5022]] <= test266151307()
                        require (32 * mem[_5022 + mem[_5022]]) + 32 >= 0 and _5022 + ceil32(return_data.size) + (32 * mem[_5022 + mem[_5022]]) + 32 <= test266151307()
                        mem[64] = _5022 + ceil32(return_data.size) + (32 * mem[_5022 + mem[_5022]]) + 32
                        mem[_5022 + ceil32(return_data.size)] = _5070
                        require return_data.size >= _5046 + (32 * _5070) + 32
                        mem[_5022 + ceil32(return_data.size) + 32 len 32 * _5070] = mem[_5022 + _5046 + 32 len 32 * _5070]
                        require mem[_3502] - 1 < _5070
                        _5654 = mem[(32 * mem[_3502] - 1) + _5022 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3502] - 1) + _5022 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5758 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5758] == bool(mem[_5758])
                        if not mem[_5758]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5654 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5654 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5902 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5902] == bool(mem[_5902])
                        if not mem[_5902]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3502 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3502]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3502]
                            mem[(32 * idx) + _3502 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4359 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4383 = mem[_3502]
                        mem[mem[64] + 164] = mem[_3502]
                        idx = 0
                        s = _3502 + 32
                        t = mem[64] + 196
                        while idx < _4383:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4359 + 100] = this.address
                        mem[_4359 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4359 + (32 * _4383) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5023 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5047 = mem[_5023]
                        require mem[_5023] <= test266151307()
                        require _5023 + return_data.size > _5023 + mem[_5023] + 31
                        _5071 = mem[_5023 + mem[_5023]]
                        require mem[_5023 + mem[_5023]] <= test266151307()
                        require (32 * mem[_5023 + mem[_5023]]) + 32 >= 0 and _5023 + ceil32(return_data.size) + (32 * mem[_5023 + mem[_5023]]) + 32 <= test266151307()
                        mem[64] = _5023 + ceil32(return_data.size) + (32 * mem[_5023 + mem[_5023]]) + 32
                        mem[_5023 + ceil32(return_data.size)] = _5071
                        require return_data.size >= _5047 + (32 * _5071) + 32
                        mem[_5023 + ceil32(return_data.size) + 32 len 32 * _5071] = mem[_5023 + _5047 + 32 len 32 * _5071]
                        require mem[_3502] - 1 < _5071
                        _5655 = mem[(32 * mem[_3502] - 1) + _5023 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3502] - 1) + _5023 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5759 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5759] == bool(mem[_5759])
                        if not mem[_5759]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5655 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5655 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5903 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5903] == bool(mem[_5903])
                        if not mem[_5903]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3532 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3532] == bool(mem[_3532])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3621 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3621]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3621]
                            mem[(32 * idx) + _3621 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4360 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4384 = mem[_3621]
                        mem[mem[64] + 164] = mem[_3621]
                        idx = 0
                        s = _3621 + 32
                        t = mem[64] + 196
                        while idx < _4384:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4360 + 100] = this.address
                        mem[_4360 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4360 + (32 * _4384) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5024 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5048 = mem[_5024]
                        require mem[_5024] <= test266151307()
                        require _5024 + return_data.size > _5024 + mem[_5024] + 31
                        _5072 = mem[_5024 + mem[_5024]]
                        require mem[_5024 + mem[_5024]] <= test266151307()
                        require (32 * mem[_5024 + mem[_5024]]) + 32 >= 0 and _5024 + ceil32(return_data.size) + (32 * mem[_5024 + mem[_5024]]) + 32 <= test266151307()
                        mem[64] = _5024 + ceil32(return_data.size) + (32 * mem[_5024 + mem[_5024]]) + 32
                        mem[_5024 + ceil32(return_data.size)] = _5072
                        require return_data.size >= _5048 + (32 * _5072) + 32
                        mem[_5024 + ceil32(return_data.size) + 32 len 32 * _5072] = mem[_5024 + _5048 + 32 len 32 * _5072]
                        require mem[_3621] - 1 < _5072
                        _5656 = mem[(32 * mem[_3621] - 1) + _5024 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3621] - 1) + _5024 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5760 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5760] == bool(mem[_5760])
                        if not mem[_5760]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5656 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5656 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5904] == bool(mem[_5904])
                        if not mem[_5904]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3621 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3621]:
                            require idx + 1 < mem[_2666]
                            require idx < mem[_3621]
                            mem[(32 * idx) + _3621 + 32] = mem[(32 * idx + 1) + _2666 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4361 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2658
                        mem[mem[64] + 68] = 160
                        _4385 = mem[_3621]
                        mem[mem[64] + 164] = mem[_3621]
                        idx = 0
                        s = _3621 + 32
                        t = mem[64] + 196
                        while idx < _4385:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4361 + 100] = this.address
                        mem[_4361 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4361 + (32 * _4385) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5025 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5049 = mem[_5025]
                        require mem[_5025] <= test266151307()
                        require _5025 + return_data.size > _5025 + mem[_5025] + 31
                        _5073 = mem[_5025 + mem[_5025]]
                        require mem[_5025 + mem[_5025]] <= test266151307()
                        require (32 * mem[_5025 + mem[_5025]]) + 32 >= 0 and _5025 + ceil32(return_data.size) + (32 * mem[_5025 + mem[_5025]]) + 32 <= test266151307()
                        mem[64] = _5025 + ceil32(return_data.size) + (32 * mem[_5025 + mem[_5025]]) + 32
                        mem[_5025 + ceil32(return_data.size)] = _5073
                        require return_data.size >= _5049 + (32 * _5073) + 32
                        mem[_5025 + ceil32(return_data.size) + 32 len 32 * _5073] = mem[_5025 + _5049 + 32 len 32 * _5073]
                        require mem[_3621] - 1 < _5073
                        _5657 = mem[(32 * mem[_3621] - 1) + _5025 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3621] - 1) + _5025 + ceil32(return_data.size) + 32] <= _2658:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5761 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5761] == bool(mem[_5761])
                        if not mem[_5761]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5657 - _2658
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5657 - _2658
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5905 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5905] == bool(mem[_5905])
                        if not mem[_5905]:
                            revert with 0, 'Withdraw failed!'
            else:
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 228] = arg2
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 260] = 64
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 292] = 2
                idx = 0
                s = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 160
                t = (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor6)
                staticcall stor6.getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args arg2, Array(len=2, data=mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 324 len 64])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224
                require return_data.size >= 32
                _1813 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
                require (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + return_data.size + 224 > (7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 255
                _1819 = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]
                require mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224] <= test266151307()
                require (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 32 >= 0 and (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256 <= test266151307()
                mem[64] = (8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + (32 * mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224 len 4], Mask(224, 32, arg2) >> 32 + 224]) + 256
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 224] = _1819
                require return_data.size >= _1813 + (32 * _1819) + 32
                mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256 len 32 * _1819] = mem[(7 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + _1813 + 256 len 32 * _1819]
                require 0 < _1819
                _2659 = mem[(8 * ceil32(return_data.size)) + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 256]
                require arg4.length >= 64
                require cd[(arg4 + 68)] <= test266151307()
                require arg4 + arg4.length + 36 > arg4 + cd[(arg4 + 68)] + 67
                require cd[(arg4 + cd[(arg4 + 68)] + 36)] <= test266151307()
                _2667 = mem[64]
                require mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 >= mem[64] and mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32 <= test266151307()
                mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 32
                mem[_2667] = cd[(arg4 + cd[(arg4 + 68)] + 36)]
                require arg4.length + 36 >= cd[(arg4 + 68)] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)]) + 68
                s = arg4 + cd[(arg4 + 68)] + 68
                t = _2667 + 32
                idx = 0
                while idx < cd[(arg4 + cd[(arg4 + 68)] + 36)]:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor6
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), stor6
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3477 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_3477]:
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3503 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3503]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3503]
                            mem[(32 * idx) + _3503 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4362 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4386 = mem[_3503]
                        mem[mem[64] + 164] = mem[_3503]
                        idx = 0
                        s = _3503 + 32
                        t = mem[64] + 196
                        while idx < _4386:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4362 + 100] = this.address
                        mem[_4362 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4362 + (32 * _4386) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5026 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5050 = mem[_5026]
                        require mem[_5026] <= test266151307()
                        require _5026 + return_data.size > _5026 + mem[_5026] + 31
                        _5074 = mem[_5026 + mem[_5026]]
                        require mem[_5026 + mem[_5026]] <= test266151307()
                        require (32 * mem[_5026 + mem[_5026]]) + 32 >= 0 and _5026 + ceil32(return_data.size) + (32 * mem[_5026 + mem[_5026]]) + 32 <= test266151307()
                        mem[64] = _5026 + ceil32(return_data.size) + (32 * mem[_5026 + mem[_5026]]) + 32
                        mem[_5026 + ceil32(return_data.size)] = _5074
                        require return_data.size >= _5050 + (32 * _5074) + 32
                        mem[_5026 + ceil32(return_data.size) + 32 len 32 * _5074] = mem[_5026 + _5050 + 32 len 32 * _5074]
                        require mem[_3503] - 1 < _5074
                        _5658 = mem[(32 * mem[_3503] - 1) + _5026 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3503] - 1) + _5026 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5762 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5762] == bool(mem[_5762])
                        if not mem[_5762]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5658 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5658 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5906 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5906] == bool(mem[_5906])
                        if not mem[_5906]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3503 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3503]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3503]
                            mem[(32 * idx) + _3503 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4363 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4387 = mem[_3503]
                        mem[mem[64] + 164] = mem[_3503]
                        idx = 0
                        s = _3503 + 32
                        t = mem[64] + 196
                        while idx < _4387:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4363 + 100] = this.address
                        mem[_4363 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4363 + (32 * _4387) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5027 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5051 = mem[_5027]
                        require mem[_5027] <= test266151307()
                        require _5027 + return_data.size > _5027 + mem[_5027] + 31
                        _5075 = mem[_5027 + mem[_5027]]
                        require mem[_5027 + mem[_5027]] <= test266151307()
                        require (32 * mem[_5027 + mem[_5027]]) + 32 >= 0 and _5027 + ceil32(return_data.size) + (32 * mem[_5027 + mem[_5027]]) + 32 <= test266151307()
                        mem[64] = _5027 + ceil32(return_data.size) + (32 * mem[_5027 + mem[_5027]]) + 32
                        mem[_5027 + ceil32(return_data.size)] = _5075
                        require return_data.size >= _5051 + (32 * _5075) + 32
                        mem[_5027 + ceil32(return_data.size) + 32 len 32 * _5075] = mem[_5027 + _5051 + 32 len 32 * _5075]
                        require mem[_3503] - 1 < _5075
                        _5659 = mem[(32 * mem[_3503] - 1) + _5027 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3503] - 1) + _5027 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5763 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5763] == bool(mem[_5763])
                        if not mem[_5763]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5659 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5659 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5907 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5907] == bool(mem[_5907])
                        if not mem[_5907]:
                            revert with 0, 'Withdraw failed!'
                else:
                    mem[mem[64] + 4] = stor6
                    mem[mem[64] + 36] = -1
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args stor6, -1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3535 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3535] == bool(mem[_3535])
                    require cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1 <= test266151307()
                    _3623 = mem[64]
                    mem[mem[64]] = cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1
                    mem[64] = mem[64] + (32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1) + 32
                    if not cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1:
                        idx = 0
                        while idx < mem[_3623]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3623]
                            mem[(32 * idx) + _3623 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4364 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4388 = mem[_3623]
                        mem[mem[64] + 164] = mem[_3623]
                        idx = 0
                        s = _3623 + 32
                        t = mem[64] + 196
                        while idx < _4388:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4364 + 100] = this.address
                        mem[_4364 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4364 + (32 * _4388) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5028 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5052 = mem[_5028]
                        require mem[_5028] <= test266151307()
                        require _5028 + return_data.size > _5028 + mem[_5028] + 31
                        _5076 = mem[_5028 + mem[_5028]]
                        require mem[_5028 + mem[_5028]] <= test266151307()
                        require (32 * mem[_5028 + mem[_5028]]) + 32 >= 0 and _5028 + ceil32(return_data.size) + (32 * mem[_5028 + mem[_5028]]) + 32 <= test266151307()
                        mem[64] = _5028 + ceil32(return_data.size) + (32 * mem[_5028 + mem[_5028]]) + 32
                        mem[_5028 + ceil32(return_data.size)] = _5076
                        require return_data.size >= _5052 + (32 * _5076) + 32
                        mem[_5028 + ceil32(return_data.size) + 32 len 32 * _5076] = mem[_5028 + _5052 + 32 len 32 * _5076]
                        require mem[_3623] - 1 < _5076
                        _5660 = mem[(32 * mem[_3623] - 1) + _5028 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3623] - 1) + _5028 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5764 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5764] == bool(mem[_5764])
                        if not mem[_5764]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5660 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5660 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5908 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5908] == bool(mem[_5908])
                        if not mem[_5908]:
                            revert with 0, 'Withdraw failed!'
                    else:
                        mem[_3623 + 32 len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1] = call.data[calldata.size len 32 * cd[(arg4 + cd[(arg4 + 68)] + 36)] - 1]
                        idx = 0
                        while idx < mem[_3623]:
                            require idx + 1 < mem[_2667]
                            require idx < mem[_3623]
                            mem[(32 * idx) + _3623 + 32] = mem[(32 * idx + 1) + _2667 + 44 len 20]
                            idx = idx + 1
                            continue 
                        _4365 = mem[64]
                        mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[(arg4 + 36)]
                        mem[mem[64] + 36] = _2659
                        mem[mem[64] + 68] = 160
                        _4389 = mem[_3623]
                        mem[mem[64] + 164] = mem[_3623]
                        idx = 0
                        s = _3623 + 32
                        t = mem[64] + 196
                        while idx < _4389:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_4365 + 100] = this.address
                        mem[_4365 + 132] = -1
                        require ext_code.size(stor6)
                        call stor6.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _4365 + (32 * _4389) + -mem[64] + 192]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5029 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _5053 = mem[_5029]
                        require mem[_5029] <= test266151307()
                        require _5029 + return_data.size > _5029 + mem[_5029] + 31
                        _5077 = mem[_5029 + mem[_5029]]
                        require mem[_5029 + mem[_5029]] <= test266151307()
                        require (32 * mem[_5029 + mem[_5029]]) + 32 >= 0 and _5029 + ceil32(return_data.size) + (32 * mem[_5029 + mem[_5029]]) + 32 <= test266151307()
                        mem[64] = _5029 + ceil32(return_data.size) + (32 * mem[_5029 + mem[_5029]]) + 32
                        mem[_5029 + ceil32(return_data.size)] = _5077
                        require return_data.size >= _5053 + (32 * _5077) + 32
                        mem[_5029 + ceil32(return_data.size) + 32 len 32 * _5077] = mem[_5029 + _5053 + 32 len 32 * _5077]
                        require mem[_3623] - 1 < _5077
                        _5661 = mem[(32 * mem[_3623] - 1) + _5029 + ceil32(return_data.size) + 32]
                        if mem[(32 * mem[_3623] - 1) + _5029 + ceil32(return_data.size) + 32] <= _2659:
                            revert with 0, 'Nope swap!'
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5765 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5765] == bool(mem[_5765])
                        if not mem[_5765]:
                            revert with 0, 'Payback failed!'
                        mem[mem[64] + 4] = owner
                        mem[mem[64] + 36] = _5661 - _2659
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args owner, _5661 - _2659
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5909 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5909] == bool(mem[_5909])
                        if not mem[_5909]:
                            revert with 0, 'Withdraw failed!'
}



}
