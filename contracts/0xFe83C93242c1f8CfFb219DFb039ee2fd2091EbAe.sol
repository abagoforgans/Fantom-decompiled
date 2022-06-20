contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == adminAddress
    if not arg1:
        revert with 0, 'new admin is the zero address'
    if ext_code.size(arg1):
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[arg1] = 1
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == adminAddress
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 > ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x6e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c6520746f6b656e20616d6f756e74,
                    mem[235 len 25]
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[260 len 4]
    require ext_call.success
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    u = 32 * ('cd', 4).length
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        u = cd[s]
        idx = idx + 1
        continue 
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if ext_code.size(mem[(32 * idx) + 128]):
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require msg.sender == adminAddress
    if not arg2:
        revert with 0, 'recipient cannot be 0 address'
    if not stor0[address(arg2)]:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        49,
                        0xfe726563697069656e74206d75737420626520612063616c6c61626c652061646472657373206f72207468652061646d69,
                        mem[213 len 15]
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    69,
                    0x2e576974686472617720616d6f756e74206d75737420626520736d616c6c6572206f7220657175616c20746f2074686520617661696c61626c652065746820616d6f756e74,
                    mem[233 len 27]
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_a2abe54e(?) {
    require calldata.size - 4 >= 192
    require cd[68] == bool(cd[68])
    require cd[100] == bool(cd[100])
    require cd[132] == uint8(cd[132])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (160 * ('cd', 164).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    require stor0[msg.sender]
    mem[64] = (32 * ('cd', 164).length) + 128
    mem[96] = ('cd', 164).length
    s = 128
    idx = 0
    while idx < ('cd', 164).length:
        require calldata.size + -cd[164] + (-160 * idx) - 36 >= 160
        _3681 = mem[64]
        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
        mem[64] = mem[64] + 160
        require cd[(cd[164] + (160 * idx) + 36)] == address(cd[(cd[164] + (160 * idx) + 36)])
        mem[_3681] = cd[(cd[164] + (160 * idx) + 36)]
        require cd[(cd[164] + (160 * idx) + 68)] == address(cd[(cd[164] + (160 * idx) + 68)])
        mem[_3681 + 32] = cd[(cd[164] + (160 * idx) + 68)]
        require cd[(cd[164] + (160 * idx) + 100)] == uint16(cd[(cd[164] + (160 * idx) + 100)])
        mem[_3681 + 64] = cd[(cd[164] + (160 * idx) + 100)]
        require cd[(cd[164] + (160 * idx) + 132)] == uint16(cd[(cd[164] + (160 * idx) + 132)])
        mem[_3681 + 96] = cd[(cd[164] + (160 * idx) + 132)]
        require cd[(cd[164] + (160 * idx) + 164)] == uint16(cd[(cd[164] + (160 * idx) + 164)])
        mem[_3681 + 128] = cd[(cd[164] + (160 * idx) + 164)]
        mem[s] = _3681
        s = s + 32
        idx = idx + 1
        continue 
    _3680 = mem[96]
    require mem[96] - 1 < mem[96]
    require mem[mem[(32 * mem[96] - 1) + 128] + 44 len 20] == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require mem[96] <= test266151307()
    _3685 = mem[64]
    mem[mem[64]] = mem[96]
    mem[64] = mem[64] + (32 * _3680) + 32
    if not _3680:
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = 10000
        t = cd[4]
        while idx < _3680:
            require idx < mem[96]
            if 0 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                _7365 = mem[mem[(32 * idx) + 128] + 32]
                _7366 = mem[mem[(32 * idx) + 128]]
                _7367 = mem[mem[(32 * idx) + 128] + 96]
                _7368 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_7366)
                mem[mem[64] + 100] = uint16(_7367)
                mem[mem[64] + 132] = uint16(_7368)
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(_7365), address(_7366), _7367 << 240, uint16(_7368)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _7390 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _7402 = mem[_7390]
                require mem[_7390 + 32] == bool(mem[_7390 + 32])
                if idx < mem[_3685]:
                    _7451 = mem[(32 * idx) + _3685 + 32]
                    if idx < mem[_3685]:
                        mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_7390 + 32])
                        mem[_7451] = _7402
                        if idx < mem[_3685]:
                            if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + 128] + 128]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
            else:
                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                    _7381 = mem[mem[(32 * idx) + 128] + 32]
                    _7382 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(_7381)
                    mem[mem[64] + 132] = address(_7382)
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_7381), address(_7382), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _7408 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _7426 = mem[_7408]
                    require mem[_7408 + 32] == bool(mem[_7408 + 32])
                    if idx < mem[_3685]:
                        _7480 = mem[(32 * idx) + _3685 + 32]
                        if idx < mem[_3685]:
                            mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_7408 + 32])
                            mem[_7480] = _7426
                            if idx < mem[_3685]:
                                if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                if idx < mem[96]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + 128] + 128]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                else:
                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                        _7387 = mem[mem[(32 * idx) + 128] + 32]
                        _7388 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(_7387)
                        mem[mem[64] + 132] = address(_7388)
                        require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                        delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_7387), address(_7388)
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7412 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7434 = mem[_7412]
                        require mem[_7412 + 32] == bool(mem[_7412 + 32])
                        if idx < mem[_3685]:
                            _7492 = mem[(32 * idx) + _3685 + 32]
                            if idx < mem[_3685]:
                                mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_7412 + 32])
                                mem[_7492] = _7434
                                if idx < mem[_3685]:
                                    if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                    if idx < mem[96]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + 128] + 128]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                    else:
                        require 20 == mem[mem[(32 * idx) + 128] + 94 len 2]
                        _7377 = mem[mem[(32 * idx) + 128] + 32]
                        _7378 = mem[mem[(32 * idx) + 128]]
                        _7379 = mem[mem[(32 * idx) + 128] + 128]
                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[mem[64] + 68] = address(_7378)
                        mem[mem[64] + 100] = uint16(_7379)
                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xb3072703 with:
                             gas gas_remaining wei
                            args t, address(_7377), address(_7378), uint16(_7379)
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7407 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _7424 = mem[_7407]
                        require mem[_7407 + 32] == bool(mem[_7407 + 32])
                        if idx < mem[_3685]:
                            _7477 = mem[(32 * idx) + _3685 + 32]
                            if idx < mem[_3685]:
                                mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_7407 + 32])
                                mem[_7477] = _7424
                                if idx < mem[_3685]:
                                    if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                    if idx < mem[96]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + 128] + 128]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
            revert
        require _3680 - 1 < mem[_3685]
        if mem[mem[(32 * _3680 - 1) + _3685 + 32]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _7392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _7406 = mem[_7392]
            require 0 < mem[_3685]
            _7422 = mem[mem[_3685 + 32]]
            require 0 < mem[96]
            require 1 < mem[_3685]
            if not mem[mem[_3685 + 64] + 32]:
                if not mem[mem[128] + 94 len 2]:
                    _7486 = mem[mem[128] + 32]
                    _7487 = mem[mem[128]]
                    _7488 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _7422
                    mem[mem[64] + 100] = address(_7486)
                    mem[mem[64] + 132] = address(_7487)
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_7488)
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _7422, address(_7486), address(_7487), address(this.address), bool(cd[100]), uint16(_7488)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_3685]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    t = mem[mem[_3685 + 32]]
                    while idx < _3680 - 1:
                        require idx < mem[_3685]
                        _11107 = mem[mem[(32 * idx) + _3685 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_3685]
                        if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                _11351 = mem[mem[(32 * idx) + 128] + 32]
                                _11352 = mem[mem[(32 * idx) + 128]]
                                _11353 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11107
                                mem[mem[64] + 36] = address(_11351)
                                mem[mem[64] + 68] = address(_11352)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_11353)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _11107, address(_11351), address(_11352), address(this.address), bool(cd[100]), uint16(_11353)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11628 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11628)
                                    mem[mem[64] + 132] = this.address
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11628), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11715 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11715)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11715), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11630 = mem[mem[(32 * idx) + 128] + 32]
                                            _11631 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11107
                                            mem[mem[64] + 36] = address(_11630)
                                            mem[mem[64] + 68] = address(_11631)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _11107, address(_11630), address(_11631), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_3685]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _11260 = mem[mem[(32 * idx + 1) + 128]]
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11466 = mem[mem[(32 * idx) + 128] + 32]
                                    _11467 = mem[mem[(32 * idx) + 128]]
                                    _11468 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11107
                                    mem[mem[64] + 36] = address(_11466)
                                    mem[mem[64] + 68] = address(_11467)
                                    mem[mem[64] + 100] = address(_11260)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_11468)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _11107, address(_11466), address(_11467), address(_11260), bool(cd[100]), uint16(_11468)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11709 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11709)
                                        mem[mem[64] + 132] = address(_11260)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11709), address(_11260)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11812 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11812)
                                            mem[mem[64] + 132] = address(_11260)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11812), address(_11260)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11711 = mem[mem[(32 * idx) + 128] + 32]
                                                _11712 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11107
                                                mem[mem[64] + 36] = address(_11711)
                                                mem[mem[64] + 68] = address(_11712)
                                                mem[mem[64] + 100] = address(_11260)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _11107, address(_11711), address(_11712), address(_11260), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                        revert
                    require _3680 - 1 < mem[_3685]
                    require _3680 - 1 < mem[96]
                    if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                        _11224 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                        _11225 = mem[mem[(32 * _3680 - 1) + 128]]
                        _11226 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                        mem[mem[64] + 36] = address(_11224)
                        mem[mem[64] + 68] = address(_11225)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_11226)
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_11224), address(_11225), bool(cd[100]), uint16(_11226)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12229 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12229] <= _7406:
                            revert with 0, 'no profit'
                    else:
                        if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _11460 = mem[mem[(32 * _3680 - 1) + 128]]
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(_11460)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11460)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_12598] <= _7406:
                                revert with 0, 'no profit'
                        else:
                            if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11509 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_11509)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11509)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12635] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12121 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12121] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    _11462 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11463 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11462)
                                    mem[mem[64] + 68] = address(_11463)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11462), address(_11463), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12573 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12573] <= _7406:
                                        revert with 0, 'no profit'
                else:
                    if 4 == mem[mem[128] + 94 len 2]:
                        _7543 = mem[mem[128]]
                        mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 100] = address(_7543)
                        mem[mem[64] + 132] = this.address
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_7543), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_3685]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        t = mem[mem[_3685 + 32]]
                        while idx < _3680 - 1:
                            require idx < mem[_3685]
                            _11083 = mem[mem[(32 * idx) + _3685 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_3685]
                            if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11323 = mem[mem[(32 * idx) + 128] + 32]
                                    _11324 = mem[mem[(32 * idx) + 128]]
                                    _11325 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11083
                                    mem[mem[64] + 36] = address(_11323)
                                    mem[mem[64] + 68] = address(_11324)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_11325)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _11083, address(_11323), address(_11324), address(this.address), bool(cd[100]), uint16(_11325)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11600 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11600)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11600), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11683 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11683)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11683), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11602 = mem[mem[(32 * idx) + 128] + 32]
                                                _11603 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11083
                                                mem[mem[64] + 36] = address(_11602)
                                                mem[mem[64] + 68] = address(_11603)
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _11083, address(_11602), address(_11603), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _11248 = mem[mem[(32 * idx + 1) + 128]]
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11422 = mem[mem[(32 * idx) + 128] + 32]
                                        _11423 = mem[mem[(32 * idx) + 128]]
                                        _11424 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _11083
                                        mem[mem[64] + 36] = address(_11422)
                                        mem[mem[64] + 68] = address(_11423)
                                        mem[mem[64] + 100] = address(_11248)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_11424)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _11083, address(_11422), address(_11423), address(_11248), bool(cd[100]), uint16(_11424)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11677 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11677)
                                            mem[mem[64] + 132] = address(_11248)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11677), address(_11248)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11772 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11772)
                                                mem[mem[64] + 132] = address(_11248)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11772), address(_11248)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11679 = mem[mem[(32 * idx) + 128] + 32]
                                                    _11680 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _11083
                                                    mem[mem[64] + 36] = address(_11679)
                                                    mem[mem[64] + 68] = address(_11680)
                                                    mem[mem[64] + 100] = address(_11248)
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _11083, address(_11679), address(_11680), address(_11248), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                            revert
                        require _3680 - 1 < mem[_3685]
                        require _3680 - 1 < mem[96]
                        if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _11200 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                            _11201 = mem[mem[(32 * _3680 - 1) + 128]]
                            _11202 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                            mem[mem[64] + 36] = address(_11200)
                            mem[mem[64] + 68] = address(_11201)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_11202)
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_11200), address(_11201), bool(cd[100]), uint16(_11202)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12185 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_12185] <= _7406:
                                revert with 0, 'no profit'
                        else:
                            if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11416 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_11416)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11416)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12590 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12590] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11493 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11493)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11493)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12623 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12623] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12105 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12105] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        _11418 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                        _11419 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                        mem[mem[64] + 36] = address(_11418)
                                        mem[mem[64] + 68] = address(_11419)
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_11418), address(_11419), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12553 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12553] <= _7406:
                                            revert with 0, 'no profit'
                    else:
                        if 12 == mem[mem[128] + 94 len 2]:
                            _7576 = mem[mem[128]]
                            mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 100] = address(_7576)
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_7576), this.address
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[_3685]
                            require 0 < mem[96]
                            idx = 1
                            s = mem[mem[128] + 32]
                            t = mem[mem[_3685 + 32]]
                            while idx < _3680 - 1:
                                require idx < mem[_3685]
                                _11101 = mem[mem[(32 * idx) + _3685 + 32]]
                                require idx < mem[96]
                                require idx + 1 < mem[_3685]
                                if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11344 = mem[mem[(32 * idx) + 128] + 32]
                                        _11345 = mem[mem[(32 * idx) + 128]]
                                        _11346 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _11101
                                        mem[mem[64] + 36] = address(_11344)
                                        mem[mem[64] + 68] = address(_11345)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_11346)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _11101, address(_11344), address(_11345), address(this.address), bool(cd[100]), uint16(_11346)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11621 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11621)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11621), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11707 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11707)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11707), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11623 = mem[mem[(32 * idx) + 128] + 32]
                                                    _11624 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _11101
                                                    mem[mem[64] + 36] = address(_11623)
                                                    mem[mem[64] + 68] = address(_11624)
                                                    mem[mem[64] + 100] = this.address
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _11101, address(_11623), address(_11624), address(this.address), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                                else:
                                    if idx + 1 < mem[96]:
                                        _11257 = mem[mem[(32 * idx + 1) + 128]]
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11455 = mem[mem[(32 * idx) + 128] + 32]
                                            _11456 = mem[mem[(32 * idx) + 128]]
                                            _11457 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11101
                                            mem[mem[64] + 36] = address(_11455)
                                            mem[mem[64] + 68] = address(_11456)
                                            mem[mem[64] + 100] = address(_11257)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11457)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11101, address(_11455), address(_11456), address(_11257), bool(cd[100]), uint16(_11457)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11701 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11701)
                                                mem[mem[64] + 132] = address(_11257)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11701), address(_11257)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11802 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11802)
                                                    mem[mem[64] + 132] = address(_11257)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11802), address(_11257)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11703 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11704 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11101
                                                        mem[mem[64] + 36] = address(_11703)
                                                        mem[mem[64] + 68] = address(_11704)
                                                        mem[mem[64] + 100] = address(_11257)
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11101, address(_11703), address(_11704), address(_11257), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                revert
                            require _3680 - 1 < mem[_3685]
                            require _3680 - 1 < mem[96]
                            if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11218 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                _11219 = mem[mem[(32 * _3680 - 1) + 128]]
                                _11220 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                mem[mem[64] + 36] = address(_11218)
                                mem[mem[64] + 68] = address(_11219)
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(_11220)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_11218), address(_11219), bool(cd[100]), uint16(_11220)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12218 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12218] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11449 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11449)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11449)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12596 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12596] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11505 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11505)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11505)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12632 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12632] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12117 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12117] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            _11451 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                            _11452 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                            mem[mem[64] + 36] = address(_11451)
                                            mem[mem[64] + 68] = address(_11452)
                                            mem[mem[64] + 100] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_11451), address(_11452), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12568 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12568] <= _7406:
                                                revert with 0, 'no profit'
                        else:
                            if mem[mem[128] + 94 len 2] != 20:
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _11089 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11330 = mem[mem[(32 * idx) + 128] + 32]
                                            _11331 = mem[mem[(32 * idx) + 128]]
                                            _11332 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11089
                                            mem[mem[64] + 36] = address(_11330)
                                            mem[mem[64] + 68] = address(_11331)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11332)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11089, address(_11330), address(_11331), address(this.address), bool(cd[100]), uint16(_11332)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11607 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11607)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11607), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11691 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11691)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11691), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11609 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11610 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11089
                                                        mem[mem[64] + 36] = address(_11609)
                                                        mem[mem[64] + 68] = address(_11610)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11089, address(_11609), address(_11610), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _11251 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11433 = mem[mem[(32 * idx) + 128] + 32]
                                                _11434 = mem[mem[(32 * idx) + 128]]
                                                _11435 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11089
                                                mem[mem[64] + 36] = address(_11433)
                                                mem[mem[64] + 68] = address(_11434)
                                                mem[mem[64] + 100] = address(_11251)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_11435)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _11089, address(_11433), address(_11434), address(_11251), bool(cd[100]), uint16(_11435)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11685 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11685)
                                                    mem[mem[64] + 132] = address(_11251)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11685), address(_11251)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11782 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_11782)
                                                        mem[mem[64] + 132] = address(_11251)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11782), address(_11251)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _11687 = mem[mem[(32 * idx) + 128] + 32]
                                                            _11688 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _11089
                                                            mem[mem[64] + 36] = address(_11687)
                                                            mem[mem[64] + 68] = address(_11688)
                                                            mem[mem[64] + 100] = address(_11251)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _11089, address(_11687), address(_11688), address(_11251), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11206 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11207 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _11208 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11206)
                                    mem[mem[64] + 68] = address(_11207)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_11208)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11206), address(_11207), bool(cd[100]), uint16(_11208)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12196] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11427 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11427)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11427)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12592 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12592] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _11497 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11497)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11497)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12626 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12626] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12109 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12109] <= _7406:
                                                    revert with 0, 'no profit'
                                            else:
                                                _11429 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _11430 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_11429)
                                                mem[mem[64] + 68] = address(_11430)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_11429), address(_11430), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12558 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12558] <= _7406:
                                                    revert with 0, 'no profit'
                            else:
                                _7548 = mem[mem[128] + 32]
                                _7549 = mem[mem[128]]
                                mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = _7422
                                mem[mem[64] + 100] = address(_7548)
                                mem[mem[64] + 132] = address(_7549)
                                mem[mem[64] + 164] = this.address
                                mem[mem[64] + 196] = bool(cd[100])
                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x5ce97508 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _7422, address(_7548), address(_7549), address(this.address), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _11095 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11337 = mem[mem[(32 * idx) + 128] + 32]
                                            _11338 = mem[mem[(32 * idx) + 128]]
                                            _11339 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11095
                                            mem[mem[64] + 36] = address(_11337)
                                            mem[mem[64] + 68] = address(_11338)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11339)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11095, address(_11337), address(_11338), address(this.address), bool(cd[100]), uint16(_11339)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11614 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11614)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11614), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11699 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11699)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11699), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11616 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11617 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11095
                                                        mem[mem[64] + 36] = address(_11616)
                                                        mem[mem[64] + 68] = address(_11617)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11095, address(_11616), address(_11617), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _11254 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11444 = mem[mem[(32 * idx) + 128] + 32]
                                                _11445 = mem[mem[(32 * idx) + 128]]
                                                _11446 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11095
                                                mem[mem[64] + 36] = address(_11444)
                                                mem[mem[64] + 68] = address(_11445)
                                                mem[mem[64] + 100] = address(_11254)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_11446)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _11095, address(_11444), address(_11445), address(_11254), bool(cd[100]), uint16(_11446)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11693 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11693)
                                                    mem[mem[64] + 132] = address(_11254)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11693), address(_11254)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11792 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_11792)
                                                        mem[mem[64] + 132] = address(_11254)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11792), address(_11254)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _11695 = mem[mem[(32 * idx) + 128] + 32]
                                                            _11696 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _11095
                                                            mem[mem[64] + 36] = address(_11695)
                                                            mem[mem[64] + 68] = address(_11696)
                                                            mem[mem[64] + 100] = address(_11254)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _11095, address(_11695), address(_11696), address(_11254), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11212 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11213 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _11214 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11212)
                                    mem[mem[64] + 68] = address(_11213)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_11214)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11212), address(_11213), bool(cd[100]), uint16(_11214)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12207 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12207] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11438 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11438)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11438)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12594 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12594] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _11501 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11501)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11501)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12629] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12113 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12113] <= _7406:
                                                    revert with 0, 'no profit'
                                            else:
                                                _11440 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _11441 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_11440)
                                                mem[mem[64] + 68] = address(_11441)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_11440), address(_11441), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12563 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12563] <= _7406:
                                                    revert with 0, 'no profit'
            else:
                require 1 < mem[96]
                _7450 = mem[mem[160]]
                if not mem[mem[128] + 94 len 2]:
                    _7501 = mem[mem[128] + 32]
                    _7502 = mem[mem[128]]
                    _7503 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _7422
                    mem[mem[64] + 100] = address(_7501)
                    mem[mem[64] + 132] = address(_7502)
                    mem[mem[64] + 164] = address(_7450)
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_7503)
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _7422, address(_7501), address(_7502), address(_7450), bool(cd[100]), uint16(_7503)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_3685]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    t = mem[mem[_3685 + 32]]
                    while idx < _3680 - 1:
                        require idx < mem[_3685]
                        _11077 = mem[mem[(32 * idx) + _3685 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_3685]
                        if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                _11316 = mem[mem[(32 * idx) + 128] + 32]
                                _11317 = mem[mem[(32 * idx) + 128]]
                                _11318 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _11077
                                mem[mem[64] + 36] = address(_11316)
                                mem[mem[64] + 68] = address(_11317)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_11318)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _11077, address(_11316), address(_11317), address(this.address), bool(cd[100]), uint16(_11318)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11593 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11593)
                                    mem[mem[64] + 132] = this.address
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11593), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11675 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11675)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11675), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11595 = mem[mem[(32 * idx) + 128] + 32]
                                            _11596 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11077
                                            mem[mem[64] + 36] = address(_11595)
                                            mem[mem[64] + 68] = address(_11596)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _11077, address(_11595), address(_11596), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_3685]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _11245 = mem[mem[(32 * idx + 1) + 128]]
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11411 = mem[mem[(32 * idx) + 128] + 32]
                                    _11412 = mem[mem[(32 * idx) + 128]]
                                    _11413 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11077
                                    mem[mem[64] + 36] = address(_11411)
                                    mem[mem[64] + 68] = address(_11412)
                                    mem[mem[64] + 100] = address(_11245)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_11413)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _11077, address(_11411), address(_11412), address(_11245), bool(cd[100]), uint16(_11413)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11669 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11669)
                                        mem[mem[64] + 132] = address(_11245)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11669), address(_11245)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11762 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11762)
                                            mem[mem[64] + 132] = address(_11245)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11762), address(_11245)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11671 = mem[mem[(32 * idx) + 128] + 32]
                                                _11672 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11077
                                                mem[mem[64] + 36] = address(_11671)
                                                mem[mem[64] + 68] = address(_11672)
                                                mem[mem[64] + 100] = address(_11245)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _11077, address(_11671), address(_11672), address(_11245), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                        revert
                    require _3680 - 1 < mem[_3685]
                    require _3680 - 1 < mem[96]
                    if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                        _11194 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                        _11195 = mem[mem[(32 * _3680 - 1) + 128]]
                        _11196 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                        mem[mem[64] + 36] = address(_11194)
                        mem[mem[64] + 68] = address(_11195)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_11196)
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_11194), address(_11195), bool(cd[100]), uint16(_11196)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _12174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_12174] <= _7406:
                            revert with 0, 'no profit'
                    else:
                        if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _11405 = mem[mem[(32 * _3680 - 1) + 128]]
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(_11405)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11405)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12588 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_12588] <= _7406:
                                revert with 0, 'no profit'
                        else:
                            if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11489 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_11489)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11489)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12620 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12620] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12101 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12101] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    _11407 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11408 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11407)
                                    mem[mem[64] + 68] = address(_11408)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11407), address(_11408), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12548 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12548] <= _7406:
                                        revert with 0, 'no profit'
                else:
                    if 4 == mem[mem[128] + 94 len 2]:
                        _7566 = mem[mem[128]]
                        mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 100] = address(_7566)
                        mem[mem[64] + 132] = address(_7450)
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_7566), address(_7450)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_3685]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        t = mem[mem[_3685 + 32]]
                        while idx < _3680 - 1:
                            require idx < mem[_3685]
                            _11053 = mem[mem[(32 * idx) + _3685 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_3685]
                            if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _11288 = mem[mem[(32 * idx) + 128] + 32]
                                    _11289 = mem[mem[(32 * idx) + 128]]
                                    _11290 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _11053
                                    mem[mem[64] + 36] = address(_11288)
                                    mem[mem[64] + 68] = address(_11289)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_11290)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _11053, address(_11288), address(_11289), address(this.address), bool(cd[100]), uint16(_11290)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11565 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11565)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11565), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11643 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11643)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11643), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11567 = mem[mem[(32 * idx) + 128] + 32]
                                                _11568 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11053
                                                mem[mem[64] + 36] = address(_11567)
                                                mem[mem[64] + 68] = address(_11568)
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _11053, address(_11567), address(_11568), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _11233 = mem[mem[(32 * idx + 1) + 128]]
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11367 = mem[mem[(32 * idx) + 128] + 32]
                                        _11368 = mem[mem[(32 * idx) + 128]]
                                        _11369 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _11053
                                        mem[mem[64] + 36] = address(_11367)
                                        mem[mem[64] + 68] = address(_11368)
                                        mem[mem[64] + 100] = address(_11233)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_11369)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _11053, address(_11367), address(_11368), address(_11233), bool(cd[100]), uint16(_11369)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11637 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11637)
                                            mem[mem[64] + 132] = address(_11233)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11637), address(_11233)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11722 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11722)
                                                mem[mem[64] + 132] = address(_11233)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11722), address(_11233)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11639 = mem[mem[(32 * idx) + 128] + 32]
                                                    _11640 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _11053
                                                    mem[mem[64] + 36] = address(_11639)
                                                    mem[mem[64] + 68] = address(_11640)
                                                    mem[mem[64] + 100] = address(_11233)
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _11053, address(_11639), address(_11640), address(_11233), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                            revert
                        require _3680 - 1 < mem[_3685]
                        require _3680 - 1 < mem[96]
                        if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _11170 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                            _11171 = mem[mem[(32 * _3680 - 1) + 128]]
                            _11172 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                            mem[mem[64] + 36] = address(_11170)
                            mem[mem[64] + 68] = address(_11171)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_11172)
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_11170), address(_11171), bool(cd[100]), uint16(_11172)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _12130 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_12130] <= _7406:
                                revert with 0, 'no profit'
                        else:
                            if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11361 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_11361)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11361)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12580 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12580] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11473 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11473)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11473)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12608 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12608] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12085 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12085] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        _11363 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                        _11364 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                        mem[mem[64] + 36] = address(_11363)
                                        mem[mem[64] + 68] = address(_11364)
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_11363), address(_11364), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12528 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12528] <= _7406:
                                            revert with 0, 'no profit'
                    else:
                        if 12 == mem[mem[128] + 94 len 2]:
                            _7596 = mem[mem[128]]
                            mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 100] = address(_7596)
                            mem[mem[64] + 132] = address(_7450)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_7596), address(_7450)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[_3685]
                            require 0 < mem[96]
                            idx = 1
                            s = mem[mem[128] + 32]
                            t = mem[mem[_3685 + 32]]
                            while idx < _3680 - 1:
                                require idx < mem[_3685]
                                _11071 = mem[mem[(32 * idx) + _3685 + 32]]
                                require idx < mem[96]
                                require idx + 1 < mem[_3685]
                                if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _11309 = mem[mem[(32 * idx) + 128] + 32]
                                        _11310 = mem[mem[(32 * idx) + 128]]
                                        _11311 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _11071
                                        mem[mem[64] + 36] = address(_11309)
                                        mem[mem[64] + 68] = address(_11310)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_11311)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _11071, address(_11309), address(_11310), address(this.address), bool(cd[100]), uint16(_11311)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11586 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11586)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11586), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11667 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11667)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11667), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11588 = mem[mem[(32 * idx) + 128] + 32]
                                                    _11589 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _11071
                                                    mem[mem[64] + 36] = address(_11588)
                                                    mem[mem[64] + 68] = address(_11589)
                                                    mem[mem[64] + 100] = this.address
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _11071, address(_11588), address(_11589), address(this.address), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                                else:
                                    if idx + 1 < mem[96]:
                                        _11242 = mem[mem[(32 * idx + 1) + 128]]
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11400 = mem[mem[(32 * idx) + 128] + 32]
                                            _11401 = mem[mem[(32 * idx) + 128]]
                                            _11402 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11071
                                            mem[mem[64] + 36] = address(_11400)
                                            mem[mem[64] + 68] = address(_11401)
                                            mem[mem[64] + 100] = address(_11242)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11402)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11071, address(_11400), address(_11401), address(_11242), bool(cd[100]), uint16(_11402)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11661 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11661)
                                                mem[mem[64] + 132] = address(_11242)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11661), address(_11242)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11752 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11752)
                                                    mem[mem[64] + 132] = address(_11242)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11752), address(_11242)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11663 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11664 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11071
                                                        mem[mem[64] + 36] = address(_11663)
                                                        mem[mem[64] + 68] = address(_11664)
                                                        mem[mem[64] + 100] = address(_11242)
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11071, address(_11663), address(_11664), address(_11242), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                revert
                            require _3680 - 1 < mem[_3685]
                            require _3680 - 1 < mem[96]
                            if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _11188 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                _11189 = mem[mem[(32 * _3680 - 1) + 128]]
                                _11190 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                mem[mem[64] + 36] = address(_11188)
                                mem[mem[64] + 68] = address(_11189)
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(_11190)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_11188), address(_11189), bool(cd[100]), uint16(_11190)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _12163 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_12163] <= _7406:
                                    revert with 0, 'no profit'
                            else:
                                if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11394 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_11394)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11394)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12586 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12586] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11485 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11485)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11485)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12617 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12617] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12097 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12097] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            _11396 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                            _11397 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                            mem[mem[64] + 36] = address(_11396)
                                            mem[mem[64] + 68] = address(_11397)
                                            mem[mem[64] + 100] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_11396), address(_11397), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12543 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12543] <= _7406:
                                                revert with 0, 'no profit'
                        else:
                            if mem[mem[128] + 94 len 2] != 20:
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _11059 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11295 = mem[mem[(32 * idx) + 128] + 32]
                                            _11296 = mem[mem[(32 * idx) + 128]]
                                            _11297 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11059
                                            mem[mem[64] + 36] = address(_11295)
                                            mem[mem[64] + 68] = address(_11296)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11297)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11059, address(_11295), address(_11296), address(this.address), bool(cd[100]), uint16(_11297)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11572 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11572)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11572), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11651 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11651)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11651), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11574 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11575 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11059
                                                        mem[mem[64] + 36] = address(_11574)
                                                        mem[mem[64] + 68] = address(_11575)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11059, address(_11574), address(_11575), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _11236 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11378 = mem[mem[(32 * idx) + 128] + 32]
                                                _11379 = mem[mem[(32 * idx) + 128]]
                                                _11380 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11059
                                                mem[mem[64] + 36] = address(_11378)
                                                mem[mem[64] + 68] = address(_11379)
                                                mem[mem[64] + 100] = address(_11236)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_11380)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _11059, address(_11378), address(_11379), address(_11236), bool(cd[100]), uint16(_11380)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11645 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11645)
                                                    mem[mem[64] + 132] = address(_11236)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11645), address(_11236)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11732 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_11732)
                                                        mem[mem[64] + 132] = address(_11236)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11732), address(_11236)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _11647 = mem[mem[(32 * idx) + 128] + 32]
                                                            _11648 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _11059
                                                            mem[mem[64] + 36] = address(_11647)
                                                            mem[mem[64] + 68] = address(_11648)
                                                            mem[mem[64] + 100] = address(_11236)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _11059, address(_11647), address(_11648), address(_11236), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11176 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11177 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _11178 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11176)
                                    mem[mem[64] + 68] = address(_11177)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_11178)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11176), address(_11177), bool(cd[100]), uint16(_11178)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12141 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12141] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11372 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11372)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11372)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12582 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12582] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _11477 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11477)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11477)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12611 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12611] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12089 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12089] <= _7406:
                                                    revert with 0, 'no profit'
                                            else:
                                                _11374 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _11375 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_11374)
                                                mem[mem[64] + 68] = address(_11375)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_11374), address(_11375), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12533 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12533] <= _7406:
                                                    revert with 0, 'no profit'
                            else:
                                _7571 = mem[mem[128] + 32]
                                _7572 = mem[mem[128]]
                                mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = _7422
                                mem[mem[64] + 100] = address(_7571)
                                mem[mem[64] + 132] = address(_7572)
                                mem[mem[64] + 164] = address(_7450)
                                mem[mem[64] + 196] = bool(cd[100])
                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x5ce97508 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _7422, address(_7571), address(_7572), address(_7450), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _11065 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _11302 = mem[mem[(32 * idx) + 128] + 32]
                                            _11303 = mem[mem[(32 * idx) + 128]]
                                            _11304 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _11065
                                            mem[mem[64] + 36] = address(_11302)
                                            mem[mem[64] + 68] = address(_11303)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_11304)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _11065, address(_11302), address(_11303), address(this.address), bool(cd[100]), uint16(_11304)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11579 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_11579)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11579), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11659 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11659)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11659), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11581 = mem[mem[(32 * idx) + 128] + 32]
                                                        _11582 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _11065
                                                        mem[mem[64] + 36] = address(_11581)
                                                        mem[mem[64] + 68] = address(_11582)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _11065, address(_11581), address(_11582), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _11239 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _11389 = mem[mem[(32 * idx) + 128] + 32]
                                                _11390 = mem[mem[(32 * idx) + 128]]
                                                _11391 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _11065
                                                mem[mem[64] + 36] = address(_11389)
                                                mem[mem[64] + 68] = address(_11390)
                                                mem[mem[64] + 100] = address(_11239)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_11391)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _11065, address(_11389), address(_11390), address(_11239), bool(cd[100]), uint16(_11391)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _11653 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_11653)
                                                    mem[mem[64] + 132] = address(_11239)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11653), address(_11239)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _11742 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_11742)
                                                        mem[mem[64] + 132] = address(_11239)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11742), address(_11239)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _11655 = mem[mem[(32 * idx) + 128] + 32]
                                                            _11656 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _11065
                                                            mem[mem[64] + 36] = address(_11655)
                                                            mem[mem[64] + 68] = address(_11656)
                                                            mem[mem[64] + 100] = address(_11239)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _11065, address(_11655), address(_11656), address(_11239), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _11182 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _11183 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _11184 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_11182)
                                    mem[mem[64] + 68] = address(_11183)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_11184)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_11182), address(_11183), bool(cd[100]), uint16(_11184)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _12152 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_12152] <= _7406:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _11383 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_11383)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11383)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _12584 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_12584] <= _7406:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _11481 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_11481)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_11481)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _12614 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_12614] <= _7406:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12093 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12093] <= _7406:
                                                    revert with 0, 'no profit'
                                            else:
                                                _11385 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _11386 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_11385)
                                                mem[mem[64] + 68] = address(_11386)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_11385), address(_11386), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _12538 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_12538] <= _7406:
                                                    revert with 0, 'no profit'
    else:
        mem[64] = _3685 + (32 * _3680) + 96
        mem[_3685 + (32 * _3680) + 32] = 0
        mem[_3685 + (32 * _3680) + 64] = 0
        mem[var34001] = _3685 + (32 * _3680) + 32
        s = var34001
        idx = var34002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[_3685 + (32 * _3680) + 32] = 0
            mem[_3685 + (32 * _3680) + 64] = 0
            mem[s + 32] = _3685 + (32 * _3680) + 32
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = 10000
        t = cd[4]
        while idx < _3680:
            require idx < mem[96]
            if 0 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                _14501 = mem[mem[(32 * idx) + 128] + 32]
                _14502 = mem[mem[(32 * idx) + 128]]
                _14503 = mem[mem[(32 * idx) + 128] + 96]
                _14504 = mem[mem[(32 * idx) + 128] + 128]
                mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                mem[mem[64] + 68] = address(_14502)
                mem[mem[64] + 100] = uint16(_14503)
                mem[mem[64] + 132] = uint16(_14504)
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(_14501), address(_14502), _14503 << 240, uint16(_14504)
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _14521 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _14526 = mem[_14521]
                require mem[_14521 + 32] == bool(mem[_14521 + 32])
                if idx < mem[_3685]:
                    _14550 = mem[(32 * idx) + _3685 + 32]
                    if idx < mem[_3685]:
                        mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_14521 + 32])
                        mem[_14550] = _14526
                        if idx < mem[_3685]:
                            if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                            if idx < mem[96]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + 128] + 128]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
            else:
                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                    _14515 = mem[mem[(32 * idx) + 128] + 32]
                    _14516 = mem[mem[(32 * idx) + 128]]
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(_14515)
                    mem[mem[64] + 132] = address(_14516)
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_14515), address(_14516), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _14530 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _14538 = mem[_14530]
                    require mem[_14530 + 32] == bool(mem[_14530 + 32])
                    if idx < mem[_3685]:
                        _14566 = mem[(32 * idx) + _3685 + 32]
                        if idx < mem[_3685]:
                            mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_14530 + 32])
                            mem[_14566] = _14538
                            if idx < mem[_3685]:
                                if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                if idx < mem[96]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + 128] + 128]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                else:
                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                        _14518 = mem[mem[(32 * idx) + 128] + 32]
                        _14519 = mem[mem[(32 * idx) + 128]]
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(_14518)
                        mem[mem[64] + 132] = address(_14519)
                        require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                        delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_14518), address(_14519)
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14532 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14542 = mem[_14532]
                        require mem[_14532 + 32] == bool(mem[_14532 + 32])
                        if idx < mem[_3685]:
                            _14576 = mem[(32 * idx) + _3685 + 32]
                            if idx < mem[_3685]:
                                mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_14532 + 32])
                                mem[_14576] = _14542
                                if idx < mem[_3685]:
                                    if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                    if idx < mem[96]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + 128] + 128]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                    else:
                        require 20 == mem[mem[(32 * idx) + 128] + 94 len 2]
                        _14511 = mem[mem[(32 * idx) + 128] + 32]
                        _14512 = mem[mem[(32 * idx) + 128]]
                        _14513 = mem[mem[(32 * idx) + 128] + 128]
                        mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 44 len 20]
                        mem[mem[64] + 68] = address(_14512)
                        mem[mem[64] + 100] = uint16(_14513)
                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xb3072703 with:
                             gas gas_remaining wei
                            args t, address(_14511), address(_14512), uint16(_14513)
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _14529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _14536 = mem[_14529]
                        require mem[_14529 + 32] == bool(mem[_14529 + 32])
                        if idx < mem[_3685]:
                            _14563 = mem[(32 * idx) + _3685 + 32]
                            if idx < mem[_3685]:
                                mem[mem[(32 * idx) + _3685 + 32] + 32] = bool(mem[_14529 + 32])
                                mem[_14563] = _14536
                                if idx < mem[_3685]:
                                    if 0 == mem[mem[(32 * idx) + _3685 + 32]]:
                                    if idx < mem[96]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + 128] + 128]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
            revert
        require _3680 - 1 < mem[_3685]
        if mem[mem[(32 * _3680 - 1) + _3685 + 32]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _14522 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _14528 = mem[_14522]
            require 0 < mem[_3685]
            _14534 = mem[mem[_3685 + 32]]
            require 0 < mem[96]
            require 1 < mem[_3685]
            if not mem[mem[_3685 + 64] + 32]:
                if not mem[mem[128] + 94 len 2]:
                    _14570 = mem[mem[128] + 32]
                    _14571 = mem[mem[128]]
                    _14572 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _14534
                    mem[mem[64] + 100] = address(_14570)
                    mem[mem[64] + 132] = address(_14571)
                    mem[mem[64] + 164] = this.address
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_14572)
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _14534, address(_14570), address(_14571), address(this.address), bool(cd[100]), uint16(_14572)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_3685]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    t = mem[mem[_3685 + 32]]
                    while idx < _3680 - 1:
                        require idx < mem[_3685]
                        _16407 = mem[mem[(32 * idx) + _3685 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_3685]
                        if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                _16645 = mem[mem[(32 * idx) + 128] + 32]
                                _16646 = mem[mem[(32 * idx) + 128]]
                                _16647 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _16407
                                mem[mem[64] + 36] = address(_16645)
                                mem[mem[64] + 68] = address(_16646)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_16647)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _16407, address(_16645), address(_16646), address(this.address), bool(cd[100]), uint16(_16647)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16904 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16904)
                                    mem[mem[64] + 132] = this.address
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16904), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16987 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16987)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16987), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16906 = mem[mem[(32 * idx) + 128] + 32]
                                            _16907 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16407
                                            mem[mem[64] + 36] = address(_16906)
                                            mem[mem[64] + 68] = address(_16907)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _16407, address(_16906), address(_16907), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_3685]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _16558 = mem[mem[(32 * idx + 1) + 128]]
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16754 = mem[mem[(32 * idx) + 128] + 32]
                                    _16755 = mem[mem[(32 * idx) + 128]]
                                    _16756 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _16407
                                    mem[mem[64] + 36] = address(_16754)
                                    mem[mem[64] + 68] = address(_16755)
                                    mem[mem[64] + 100] = address(_16558)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_16756)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _16407, address(_16754), address(_16755), address(_16558), bool(cd[100]), uint16(_16756)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16981 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16981)
                                        mem[mem[64] + 132] = address(_16558)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16981), address(_16558)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _17081 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_17081)
                                            mem[mem[64] + 132] = address(_16558)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17081), address(_16558)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16983 = mem[mem[(32 * idx) + 128] + 32]
                                                _16984 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16407
                                                mem[mem[64] + 36] = address(_16983)
                                                mem[mem[64] + 68] = address(_16984)
                                                mem[mem[64] + 100] = address(_16558)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _16407, address(_16983), address(_16984), address(_16558), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                        revert
                    require _3680 - 1 < mem[_3685]
                    require _3680 - 1 < mem[96]
                    if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                        _16524 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                        _16525 = mem[mem[(32 * _3680 - 1) + 128]]
                        _16526 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                        mem[mem[64] + 36] = address(_16524)
                        mem[mem[64] + 68] = address(_16525)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_16526)
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_16524), address(_16525), bool(cd[100]), uint16(_16526)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17479 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_17479] <= _14528:
                            revert with 0, 'no profit'
                    else:
                        if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _16748 = mem[mem[(32 * _3680 - 1) + 128]]
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(_16748)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16748)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17837 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_17837] <= _14528:
                                revert with 0, 'no profit'
                        else:
                            if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16795 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_16795)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16795)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17868 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17868] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17375 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17375] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    _16750 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16751 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16750)
                                    mem[mem[64] + 68] = address(_16751)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16750), address(_16751), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17815 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17815] <= _14528:
                                        revert with 0, 'no profit'
                else:
                    if 4 == mem[mem[128] + 94 len 2]:
                        _14612 = mem[mem[128]]
                        mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 100] = address(_14612)
                        mem[mem[64] + 132] = this.address
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_14612), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_3685]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        t = mem[mem[_3685 + 32]]
                        while idx < _3680 - 1:
                            require idx < mem[_3685]
                            _16383 = mem[mem[(32 * idx) + _3685 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_3685]
                            if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16617 = mem[mem[(32 * idx) + 128] + 32]
                                    _16618 = mem[mem[(32 * idx) + 128]]
                                    _16619 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _16383
                                    mem[mem[64] + 36] = address(_16617)
                                    mem[mem[64] + 68] = address(_16618)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_16619)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _16383, address(_16617), address(_16618), address(this.address), bool(cd[100]), uint16(_16619)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16876 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16876)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16876), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16955 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16955)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16955), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16878 = mem[mem[(32 * idx) + 128] + 32]
                                                _16879 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16383
                                                mem[mem[64] + 36] = address(_16878)
                                                mem[mem[64] + 68] = address(_16879)
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _16383, address(_16878), address(_16879), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _16546 = mem[mem[(32 * idx + 1) + 128]]
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16710 = mem[mem[(32 * idx) + 128] + 32]
                                        _16711 = mem[mem[(32 * idx) + 128]]
                                        _16712 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _16383
                                        mem[mem[64] + 36] = address(_16710)
                                        mem[mem[64] + 68] = address(_16711)
                                        mem[mem[64] + 100] = address(_16546)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_16712)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _16383, address(_16710), address(_16711), address(_16546), bool(cd[100]), uint16(_16712)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16949 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16949)
                                            mem[mem[64] + 132] = address(_16546)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16949), address(_16546)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _17041 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_17041)
                                                mem[mem[64] + 132] = address(_16546)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17041), address(_16546)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16951 = mem[mem[(32 * idx) + 128] + 32]
                                                    _16952 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _16383
                                                    mem[mem[64] + 36] = address(_16951)
                                                    mem[mem[64] + 68] = address(_16952)
                                                    mem[mem[64] + 100] = address(_16546)
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _16383, address(_16951), address(_16952), address(_16546), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                            revert
                        require _3680 - 1 < mem[_3685]
                        require _3680 - 1 < mem[96]
                        if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _16500 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                            _16501 = mem[mem[(32 * _3680 - 1) + 128]]
                            _16502 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                            mem[mem[64] + 36] = address(_16500)
                            mem[mem[64] + 68] = address(_16501)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_16502)
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_16500), address(_16501), bool(cd[100]), uint16(_16502)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17435 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_17435] <= _14528:
                                revert with 0, 'no profit'
                        else:
                            if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16704 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_16704)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16704)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17829] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16779 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16779)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16779)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17856 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17856] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17359 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17359] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        _16706 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                        _16707 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                        mem[mem[64] + 36] = address(_16706)
                                        mem[mem[64] + 68] = address(_16707)
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_16706), address(_16707), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17795 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17795] <= _14528:
                                            revert with 0, 'no profit'
                    else:
                        if 12 == mem[mem[128] + 94 len 2]:
                            _14637 = mem[mem[128]]
                            mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 100] = address(_14637)
                            mem[mem[64] + 132] = this.address
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_14637), this.address
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[_3685]
                            require 0 < mem[96]
                            idx = 1
                            s = mem[mem[128] + 32]
                            t = mem[mem[_3685 + 32]]
                            while idx < _3680 - 1:
                                require idx < mem[_3685]
                                _16401 = mem[mem[(32 * idx) + _3685 + 32]]
                                require idx < mem[96]
                                require idx + 1 < mem[_3685]
                                if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16638 = mem[mem[(32 * idx) + 128] + 32]
                                        _16639 = mem[mem[(32 * idx) + 128]]
                                        _16640 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _16401
                                        mem[mem[64] + 36] = address(_16638)
                                        mem[mem[64] + 68] = address(_16639)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_16640)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _16401, address(_16638), address(_16639), address(this.address), bool(cd[100]), uint16(_16640)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16897 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16897)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16897), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16979 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16979)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16979), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16899 = mem[mem[(32 * idx) + 128] + 32]
                                                    _16900 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _16401
                                                    mem[mem[64] + 36] = address(_16899)
                                                    mem[mem[64] + 68] = address(_16900)
                                                    mem[mem[64] + 100] = this.address
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _16401, address(_16899), address(_16900), address(this.address), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                                else:
                                    if idx + 1 < mem[96]:
                                        _16555 = mem[mem[(32 * idx + 1) + 128]]
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16743 = mem[mem[(32 * idx) + 128] + 32]
                                            _16744 = mem[mem[(32 * idx) + 128]]
                                            _16745 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16401
                                            mem[mem[64] + 36] = address(_16743)
                                            mem[mem[64] + 68] = address(_16744)
                                            mem[mem[64] + 100] = address(_16555)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16745)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16401, address(_16743), address(_16744), address(_16555), bool(cd[100]), uint16(_16745)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16973 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16973)
                                                mem[mem[64] + 132] = address(_16555)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16973), address(_16555)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _17071 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_17071)
                                                    mem[mem[64] + 132] = address(_16555)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17071), address(_16555)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16975 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16976 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16401
                                                        mem[mem[64] + 36] = address(_16975)
                                                        mem[mem[64] + 68] = address(_16976)
                                                        mem[mem[64] + 100] = address(_16555)
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16401, address(_16975), address(_16976), address(_16555), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                revert
                            require _3680 - 1 < mem[_3685]
                            require _3680 - 1 < mem[96]
                            if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16518 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                _16519 = mem[mem[(32 * _3680 - 1) + 128]]
                                _16520 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                mem[mem[64] + 36] = address(_16518)
                                mem[mem[64] + 68] = address(_16519)
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(_16520)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_16518), address(_16519), bool(cd[100]), uint16(_16520)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17468 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17468] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16737 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16737)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16737)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17835 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17835] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16791 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16791)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16791)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17865 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17865] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17371 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17371] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            _16739 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                            _16740 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                            mem[mem[64] + 36] = address(_16739)
                                            mem[mem[64] + 68] = address(_16740)
                                            mem[mem[64] + 100] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_16739), address(_16740), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17810 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17810] <= _14528:
                                                revert with 0, 'no profit'
                        else:
                            if mem[mem[128] + 94 len 2] != 20:
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _16389 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16624 = mem[mem[(32 * idx) + 128] + 32]
                                            _16625 = mem[mem[(32 * idx) + 128]]
                                            _16626 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16389
                                            mem[mem[64] + 36] = address(_16624)
                                            mem[mem[64] + 68] = address(_16625)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16626)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16389, address(_16624), address(_16625), address(this.address), bool(cd[100]), uint16(_16626)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16883 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16883)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16883), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16963 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16963)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16963), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16885 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16886 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16389
                                                        mem[mem[64] + 36] = address(_16885)
                                                        mem[mem[64] + 68] = address(_16886)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16389, address(_16885), address(_16886), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _16549 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16721 = mem[mem[(32 * idx) + 128] + 32]
                                                _16722 = mem[mem[(32 * idx) + 128]]
                                                _16723 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16389
                                                mem[mem[64] + 36] = address(_16721)
                                                mem[mem[64] + 68] = address(_16722)
                                                mem[mem[64] + 100] = address(_16549)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_16723)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _16389, address(_16721), address(_16722), address(_16549), bool(cd[100]), uint16(_16723)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16957 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16957)
                                                    mem[mem[64] + 132] = address(_16549)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16957), address(_16549)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _17051 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_17051)
                                                        mem[mem[64] + 132] = address(_16549)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17051), address(_16549)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _16959 = mem[mem[(32 * idx) + 128] + 32]
                                                            _16960 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _16389
                                                            mem[mem[64] + 36] = address(_16959)
                                                            mem[mem[64] + 68] = address(_16960)
                                                            mem[mem[64] + 100] = address(_16549)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _16389, address(_16959), address(_16960), address(_16549), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16506 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16507 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _16508 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16506)
                                    mem[mem[64] + 68] = address(_16507)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_16508)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16506), address(_16507), bool(cd[100]), uint16(_16508)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17446 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17446] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16715 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16715)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16715)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17831 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17831] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _16783 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16783)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16783)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17859 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17859] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17363 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17363] <= _14528:
                                                    revert with 0, 'no profit'
                                            else:
                                                _16717 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _16718 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_16717)
                                                mem[mem[64] + 68] = address(_16718)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_16717), address(_16718), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17800 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17800] <= _14528:
                                                    revert with 0, 'no profit'
                            else:
                                _14617 = mem[mem[128] + 32]
                                _14618 = mem[mem[128]]
                                mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = _14534
                                mem[mem[64] + 100] = address(_14617)
                                mem[mem[64] + 132] = address(_14618)
                                mem[mem[64] + 164] = this.address
                                mem[mem[64] + 196] = bool(cd[100])
                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x5ce97508 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _14534, address(_14617), address(_14618), address(this.address), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _16395 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16631 = mem[mem[(32 * idx) + 128] + 32]
                                            _16632 = mem[mem[(32 * idx) + 128]]
                                            _16633 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16395
                                            mem[mem[64] + 36] = address(_16631)
                                            mem[mem[64] + 68] = address(_16632)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16633)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16395, address(_16631), address(_16632), address(this.address), bool(cd[100]), uint16(_16633)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16890 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16890)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16890), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16971 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16971)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16971), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16892 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16893 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16395
                                                        mem[mem[64] + 36] = address(_16892)
                                                        mem[mem[64] + 68] = address(_16893)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16395, address(_16892), address(_16893), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _16552 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16732 = mem[mem[(32 * idx) + 128] + 32]
                                                _16733 = mem[mem[(32 * idx) + 128]]
                                                _16734 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16395
                                                mem[mem[64] + 36] = address(_16732)
                                                mem[mem[64] + 68] = address(_16733)
                                                mem[mem[64] + 100] = address(_16552)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_16734)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _16395, address(_16732), address(_16733), address(_16552), bool(cd[100]), uint16(_16734)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16965 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16965)
                                                    mem[mem[64] + 132] = address(_16552)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16965), address(_16552)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _17061 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_17061)
                                                        mem[mem[64] + 132] = address(_16552)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17061), address(_16552)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _16967 = mem[mem[(32 * idx) + 128] + 32]
                                                            _16968 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _16395
                                                            mem[mem[64] + 36] = address(_16967)
                                                            mem[mem[64] + 68] = address(_16968)
                                                            mem[mem[64] + 100] = address(_16552)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _16395, address(_16967), address(_16968), address(_16552), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16512 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16513 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _16514 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16512)
                                    mem[mem[64] + 68] = address(_16513)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_16514)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16512), address(_16513), bool(cd[100]), uint16(_16514)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17457 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17457] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16726 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16726)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16726)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17833 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17833] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _16787 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16787)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16787)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17862 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17862] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17367 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17367] <= _14528:
                                                    revert with 0, 'no profit'
                                            else:
                                                _16728 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _16729 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_16728)
                                                mem[mem[64] + 68] = address(_16729)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_16728), address(_16729), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17805 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17805] <= _14528:
                                                    revert with 0, 'no profit'
            else:
                require 1 < mem[96]
                _14549 = mem[mem[160]]
                if not mem[mem[128] + 94 len 2]:
                    _14583 = mem[mem[128] + 32]
                    _14584 = mem[mem[128]]
                    _14585 = mem[mem[128] + 96]
                    mem[mem[64]] = 0x1d1f04fb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _14534
                    mem[mem[64] + 100] = address(_14583)
                    mem[mem[64] + 132] = address(_14584)
                    mem[mem[64] + 164] = address(_14549)
                    mem[mem[64] + 196] = bool(cd[100])
                    mem[mem[64] + 228] = uint16(_14585)
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x1d1f04fb with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _14534, address(_14583), address(_14584), address(_14549), bool(cd[100]), uint16(_14585)
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[_3685]
                    require 0 < mem[96]
                    idx = 1
                    s = mem[mem[128] + 32]
                    t = mem[mem[_3685 + 32]]
                    while idx < _3680 - 1:
                        require idx < mem[_3685]
                        _16377 = mem[mem[(32 * idx) + _3685 + 32]]
                        require idx < mem[96]
                        require idx + 1 < mem[_3685]
                        if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                _16610 = mem[mem[(32 * idx) + 128] + 32]
                                _16611 = mem[mem[(32 * idx) + 128]]
                                _16612 = mem[mem[(32 * idx) + 128] + 96]
                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _16377
                                mem[mem[64] + 36] = address(_16610)
                                mem[mem[64] + 68] = address(_16611)
                                mem[mem[64] + 100] = this.address
                                mem[mem[64] + 132] = bool(cd[100])
                                mem[mem[64] + 164] = uint16(_16612)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                     gas gas_remaining wei
                                    args _16377, address(_16610), address(_16611), address(this.address), bool(cd[100]), uint16(_16612)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16869 = mem[mem[(32 * idx) + 128]]
                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16869)
                                    mem[mem[64] + 132] = this.address
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16869), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16947 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16947)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16947), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16871 = mem[mem[(32 * idx) + 128] + 32]
                                            _16872 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16377
                                            mem[mem[64] + 36] = address(_16871)
                                            mem[mem[64] + 68] = address(_16872)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                 gas gas_remaining wei
                                                args _16377, address(_16871), address(_16872), address(this.address), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            if idx < mem[_3685]:
                                if idx < mem[96]:
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + 128] + 32]
                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                    continue 
                        else:
                            if idx + 1 < mem[96]:
                                _16543 = mem[mem[(32 * idx + 1) + 128]]
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16699 = mem[mem[(32 * idx) + 128] + 32]
                                    _16700 = mem[mem[(32 * idx) + 128]]
                                    _16701 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _16377
                                    mem[mem[64] + 36] = address(_16699)
                                    mem[mem[64] + 68] = address(_16700)
                                    mem[mem[64] + 100] = address(_16543)
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_16701)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _16377, address(_16699), address(_16700), address(_16543), bool(cd[100]), uint16(_16701)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16941 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16941)
                                        mem[mem[64] + 132] = address(_16543)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16941), address(_16543)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _17031 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_17031)
                                            mem[mem[64] + 132] = address(_16543)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17031), address(_16543)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16943 = mem[mem[(32 * idx) + 128] + 32]
                                                _16944 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16377
                                                mem[mem[64] + 36] = address(_16943)
                                                mem[mem[64] + 68] = address(_16944)
                                                mem[mem[64] + 100] = address(_16543)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _16377, address(_16943), address(_16944), address(_16543), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                        revert
                    require _3680 - 1 < mem[_3685]
                    require _3680 - 1 < mem[96]
                    if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                        _16494 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                        _16495 = mem[mem[(32 * _3680 - 1) + 128]]
                        _16496 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                        mem[mem[64] + 36] = address(_16494)
                        mem[mem[64] + 68] = address(_16495)
                        mem[mem[64] + 100] = bool(cd[100])
                        mem[mem[64] + 132] = uint16(_16496)
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], address(_16494), address(_16495), bool(cd[100]), uint16(_16496)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _17424 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_17424] <= _14528:
                            revert with 0, 'no profit'
                    else:
                        if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _16693 = mem[mem[(32 * _3680 - 1) + 128]]
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(_16693)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16693)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_17827] <= _14528:
                                revert with 0, 'no profit'
                        else:
                            if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16775 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_16775)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16775)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17853 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17853] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17355 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17355] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    _16695 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16696 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16695)
                                    mem[mem[64] + 68] = address(_16696)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16695), address(_16696), bool(cd[100])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17790 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17790] <= _14528:
                                        revert with 0, 'no profit'
                else:
                    if 4 == mem[mem[128] + 94 len 2]:
                        _14627 = mem[mem[128]]
                        mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 100] = address(_14627)
                        mem[mem[64] + 132] = address(_14549)
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_14627), address(_14549)
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[_3685]
                        require 0 < mem[96]
                        idx = 1
                        s = mem[mem[128] + 32]
                        t = mem[mem[_3685 + 32]]
                        while idx < _3680 - 1:
                            require idx < mem[_3685]
                            _16353 = mem[mem[(32 * idx) + _3685 + 32]]
                            require idx < mem[96]
                            require idx + 1 < mem[_3685]
                            if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                    _16582 = mem[mem[(32 * idx) + 128] + 32]
                                    _16583 = mem[mem[(32 * idx) + 128]]
                                    _16584 = mem[mem[(32 * idx) + 128] + 96]
                                    mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _16353
                                    mem[mem[64] + 36] = address(_16582)
                                    mem[mem[64] + 68] = address(_16583)
                                    mem[mem[64] + 100] = this.address
                                    mem[mem[64] + 132] = bool(cd[100])
                                    mem[mem[64] + 164] = uint16(_16584)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                         gas gas_remaining wei
                                        args _16353, address(_16582), address(_16583), address(this.address), bool(cd[100]), uint16(_16584)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16841 = mem[mem[(32 * idx) + 128]]
                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16841)
                                        mem[mem[64] + 132] = this.address
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16841), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16915 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16915)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16915), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16843 = mem[mem[(32 * idx) + 128] + 32]
                                                _16844 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16353
                                                mem[mem[64] + 36] = address(_16843)
                                                mem[mem[64] + 68] = address(_16844)
                                                mem[mem[64] + 100] = this.address
                                                mem[mem[64] + 132] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                     gas gas_remaining wei
                                                    args _16353, address(_16843), address(_16844), address(this.address), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                if idx < mem[_3685]:
                                    if idx < mem[96]:
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + 128] + 32]
                                        t = mem[mem[(32 * idx) + _3685 + 32]]
                                        continue 
                            else:
                                if idx + 1 < mem[96]:
                                    _16531 = mem[mem[(32 * idx + 1) + 128]]
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16655 = mem[mem[(32 * idx) + 128] + 32]
                                        _16656 = mem[mem[(32 * idx) + 128]]
                                        _16657 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _16353
                                        mem[mem[64] + 36] = address(_16655)
                                        mem[mem[64] + 68] = address(_16656)
                                        mem[mem[64] + 100] = address(_16531)
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_16657)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _16353, address(_16655), address(_16656), address(_16531), bool(cd[100]), uint16(_16657)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16909 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16909)
                                            mem[mem[64] + 132] = address(_16531)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16909), address(_16531)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16991 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16991)
                                                mem[mem[64] + 132] = address(_16531)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16991), address(_16531)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16911 = mem[mem[(32 * idx) + 128] + 32]
                                                    _16912 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _16353
                                                    mem[mem[64] + 36] = address(_16911)
                                                    mem[mem[64] + 68] = address(_16912)
                                                    mem[mem[64] + 100] = address(_16531)
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _16353, address(_16911), address(_16912), address(_16531), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                            revert
                        require _3680 - 1 < mem[_3685]
                        require _3680 - 1 < mem[96]
                        if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                            _16470 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                            _16471 = mem[mem[(32 * _3680 - 1) + 128]]
                            _16472 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                            mem[mem[64] + 36] = address(_16470)
                            mem[mem[64] + 68] = address(_16471)
                            mem[mem[64] + 100] = bool(cd[100])
                            mem[mem[64] + 132] = uint16(_16472)
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], address(_16470), address(_16471), bool(cd[100]), uint16(_16472)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _17380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_17380] <= _14528:
                                revert with 0, 'no profit'
                        else:
                            if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16649 = mem[mem[(32 * _3680 - 1) + 128]]
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(_16649)
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16649)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17819 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17819] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16759 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16759)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16759)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17841 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17841] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17339 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17339] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        _16651 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                        _16652 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                        mem[mem[64] + 36] = address(_16651)
                                        mem[mem[64] + 68] = address(_16652)
                                        mem[mem[64] + 100] = bool(cd[100])
                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], address(_16651), address(_16652), bool(cd[100])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17770 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17770] <= _14528:
                                            revert with 0, 'no profit'
                    else:
                        if 12 == mem[mem[128] + 94 len 2]:
                            _14643 = mem[mem[128]]
                            mem[mem[64]] = 0x52482e9200000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 100] = address(_14643)
                            mem[mem[64] + 132] = address(_14549)
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x52482e92 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, address(_14643), address(_14549)
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[_3685]
                            require 0 < mem[96]
                            idx = 1
                            s = mem[mem[128] + 32]
                            t = mem[mem[_3685 + 32]]
                            while idx < _3680 - 1:
                                require idx < mem[_3685]
                                _16371 = mem[mem[(32 * idx) + _3685 + 32]]
                                require idx < mem[96]
                                require idx + 1 < mem[_3685]
                                if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                    if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                        _16603 = mem[mem[(32 * idx) + 128] + 32]
                                        _16604 = mem[mem[(32 * idx) + 128]]
                                        _16605 = mem[mem[(32 * idx) + 128] + 96]
                                        mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _16371
                                        mem[mem[64] + 36] = address(_16603)
                                        mem[mem[64] + 68] = address(_16604)
                                        mem[mem[64] + 100] = this.address
                                        mem[mem[64] + 132] = bool(cd[100])
                                        mem[mem[64] + 164] = uint16(_16605)
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                             gas gas_remaining wei
                                            args _16371, address(_16603), address(_16604), address(this.address), bool(cd[100]), uint16(_16605)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16862 = mem[mem[(32 * idx) + 128]]
                                            mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16862)
                                            mem[mem[64] + 132] = this.address
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16862), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16939 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16939)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16939), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16864 = mem[mem[(32 * idx) + 128] + 32]
                                                    _16865 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _16371
                                                    mem[mem[64] + 36] = address(_16864)
                                                    mem[mem[64] + 68] = address(_16865)
                                                    mem[mem[64] + 100] = this.address
                                                    mem[mem[64] + 132] = bool(cd[100])
                                                    require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                    delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                         gas gas_remaining wei
                                                        args _16371, address(_16864), address(_16865), address(this.address), bool(cd[100])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    if idx < mem[_3685]:
                                        if idx < mem[96]:
                                            idx = idx + 1
                                            s = mem[mem[(32 * idx) + 128] + 32]
                                            t = mem[mem[(32 * idx) + _3685 + 32]]
                                            continue 
                                else:
                                    if idx + 1 < mem[96]:
                                        _16540 = mem[mem[(32 * idx + 1) + 128]]
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16688 = mem[mem[(32 * idx) + 128] + 32]
                                            _16689 = mem[mem[(32 * idx) + 128]]
                                            _16690 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16371
                                            mem[mem[64] + 36] = address(_16688)
                                            mem[mem[64] + 68] = address(_16689)
                                            mem[mem[64] + 100] = address(_16540)
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16690)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16371, address(_16688), address(_16689), address(_16540), bool(cd[100]), uint16(_16690)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16933 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16933)
                                                mem[mem[64] + 132] = address(_16540)
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16933), address(_16540)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _17021 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_17021)
                                                    mem[mem[64] + 132] = address(_16540)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17021), address(_16540)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16935 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16936 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16371
                                                        mem[mem[64] + 36] = address(_16935)
                                                        mem[mem[64] + 68] = address(_16936)
                                                        mem[mem[64] + 100] = address(_16540)
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16371, address(_16935), address(_16936), address(_16540), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                revert
                            require _3680 - 1 < mem[_3685]
                            require _3680 - 1 < mem[96]
                            if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                _16488 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                _16489 = mem[mem[(32 * _3680 - 1) + 128]]
                                _16490 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                mem[mem[64] + 36] = address(_16488)
                                mem[mem[64] + 68] = address(_16489)
                                mem[mem[64] + 100] = bool(cd[100])
                                mem[mem[64] + 132] = uint16(_16490)
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], address(_16488), address(_16489), bool(cd[100]), uint16(_16490)
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _17413 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_17413] <= _14528:
                                    revert with 0, 'no profit'
                            else:
                                if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16682 = mem[mem[(32 * _3680 - 1) + 128]]
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(_16682)
                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16682)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17825 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17825] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16771 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16771)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16771)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17850 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17850] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17351 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17351] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            _16684 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                            _16685 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                            mem[mem[64] + 36] = address(_16684)
                                            mem[mem[64] + 68] = address(_16685)
                                            mem[mem[64] + 100] = bool(cd[100])
                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], address(_16684), address(_16685), bool(cd[100])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17785 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17785] <= _14528:
                                                revert with 0, 'no profit'
                        else:
                            if mem[mem[128] + 94 len 2] != 20:
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _16359 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16589 = mem[mem[(32 * idx) + 128] + 32]
                                            _16590 = mem[mem[(32 * idx) + 128]]
                                            _16591 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16359
                                            mem[mem[64] + 36] = address(_16589)
                                            mem[mem[64] + 68] = address(_16590)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16591)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16359, address(_16589), address(_16590), address(this.address), bool(cd[100]), uint16(_16591)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16848 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16848)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16848), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16923 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16923)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16923), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16850 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16851 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16359
                                                        mem[mem[64] + 36] = address(_16850)
                                                        mem[mem[64] + 68] = address(_16851)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16359, address(_16850), address(_16851), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _16534 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16666 = mem[mem[(32 * idx) + 128] + 32]
                                                _16667 = mem[mem[(32 * idx) + 128]]
                                                _16668 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16359
                                                mem[mem[64] + 36] = address(_16666)
                                                mem[mem[64] + 68] = address(_16667)
                                                mem[mem[64] + 100] = address(_16534)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_16668)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _16359, address(_16666), address(_16667), address(_16534), bool(cd[100]), uint16(_16668)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16917 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16917)
                                                    mem[mem[64] + 132] = address(_16534)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16917), address(_16534)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _17001 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_17001)
                                                        mem[mem[64] + 132] = address(_16534)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17001), address(_16534)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _16919 = mem[mem[(32 * idx) + 128] + 32]
                                                            _16920 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _16359
                                                            mem[mem[64] + 36] = address(_16919)
                                                            mem[mem[64] + 68] = address(_16920)
                                                            mem[mem[64] + 100] = address(_16534)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _16359, address(_16919), address(_16920), address(_16534), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16476 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16477 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _16478 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16476)
                                    mem[mem[64] + 68] = address(_16477)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_16478)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16476), address(_16477), bool(cd[100]), uint16(_16478)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17391 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17391] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16660 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16660)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16660)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17821 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17821] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _16763 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16763)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16763)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17844 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17844] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17343 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17343] <= _14528:
                                                    revert with 0, 'no profit'
                                            else:
                                                _16662 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _16663 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_16662)
                                                mem[mem[64] + 68] = address(_16663)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_16662), address(_16663), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17775 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17775] <= _14528:
                                                    revert with 0, 'no profit'
                            else:
                                _14632 = mem[mem[128] + 32]
                                _14633 = mem[mem[128]]
                                mem[mem[64]] = 0x5ce9750800000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = _14534
                                mem[mem[64] + 100] = address(_14632)
                                mem[mem[64] + 132] = address(_14633)
                                mem[mem[64] + 164] = address(_14549)
                                mem[mem[64] + 196] = bool(cd[100])
                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x5ce97508 with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _14534, address(_14632), address(_14633), address(_14549), bool(cd[100])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[_3685]
                                require 0 < mem[96]
                                idx = 1
                                s = mem[mem[128] + 32]
                                t = mem[mem[_3685 + 32]]
                                while idx < _3680 - 1:
                                    require idx < mem[_3685]
                                    _16365 = mem[mem[(32 * idx) + _3685 + 32]]
                                    require idx < mem[96]
                                    require idx + 1 < mem[_3685]
                                    if not mem[mem[(32 * idx + 1) + _3685 + 32] + 32]:
                                        if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                            _16596 = mem[mem[(32 * idx) + 128] + 32]
                                            _16597 = mem[mem[(32 * idx) + 128]]
                                            _16598 = mem[mem[(32 * idx) + 128] + 96]
                                            mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _16365
                                            mem[mem[64] + 36] = address(_16596)
                                            mem[mem[64] + 68] = address(_16597)
                                            mem[mem[64] + 100] = this.address
                                            mem[mem[64] + 132] = bool(cd[100])
                                            mem[mem[64] + 164] = uint16(_16598)
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                 gas gas_remaining wei
                                                args _16365, address(_16596), address(_16597), address(this.address), bool(cd[100]), uint16(_16598)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16855 = mem[mem[(32 * idx) + 128]]
                                                mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(_16855)
                                                mem[mem[64] + 132] = this.address
                                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16855), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16931 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16931)
                                                    mem[mem[64] + 132] = this.address
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16931), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _16857 = mem[mem[(32 * idx) + 128] + 32]
                                                        _16858 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _16365
                                                        mem[mem[64] + 36] = address(_16857)
                                                        mem[mem[64] + 68] = address(_16858)
                                                        mem[mem[64] + 100] = this.address
                                                        mem[mem[64] + 132] = bool(cd[100])
                                                        require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                        delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                             gas gas_remaining wei
                                                            args _16365, address(_16857), address(_16858), address(this.address), bool(cd[100])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        if idx < mem[_3685]:
                                            if idx < mem[96]:
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + 128] + 32]
                                                t = mem[mem[(32 * idx) + _3685 + 32]]
                                                continue 
                                    else:
                                        if idx + 1 < mem[96]:
                                            _16537 = mem[mem[(32 * idx + 1) + 128]]
                                            if not mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                _16677 = mem[mem[(32 * idx) + 128] + 32]
                                                _16678 = mem[mem[(32 * idx) + 128]]
                                                _16679 = mem[mem[(32 * idx) + 128] + 96]
                                                mem[mem[64]] = 0xefd57cd500000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _16365
                                                mem[mem[64] + 36] = address(_16677)
                                                mem[mem[64] + 68] = address(_16678)
                                                mem[mem[64] + 100] = address(_16537)
                                                mem[mem[64] + 132] = bool(cd[100])
                                                mem[mem[64] + 164] = uint16(_16679)
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xefd57cd5 with:
                                                     gas gas_remaining wei
                                                    args _16365, address(_16677), address(_16678), address(_16537), bool(cd[100]), uint16(_16679)
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 4 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                    _16925 = mem[mem[(32 * idx) + 128]]
                                                    mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(_16925)
                                                    mem[mem[64] + 132] = address(_16537)
                                                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16925), address(_16537)
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 12 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                        _17011 = mem[mem[(32 * idx) + 128]]
                                                        mem[mem[64]] = 0x816a50b600000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(_17011)
                                                        mem[mem[64] + 132] = address(_16537)
                                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x816a50b6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_17011), address(_16537)
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                    else:
                                                        if 20 == mem[mem[(32 * idx) + 128] + 94 len 2]:
                                                            _16927 = mem[mem[(32 * idx) + 128] + 32]
                                                            _16928 = mem[mem[(32 * idx) + 128]]
                                                            mem[mem[64]] = 0xba3c0b5d00000000000000000000000000000000000000000000000000000000
                                                            mem[mem[64] + 4] = _16365
                                                            mem[mem[64] + 36] = address(_16927)
                                                            mem[mem[64] + 68] = address(_16928)
                                                            mem[mem[64] + 100] = address(_16537)
                                                            mem[mem[64] + 132] = bool(cd[100])
                                                            require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                            delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0xba3c0b5d with:
                                                                 gas gas_remaining wei
                                                                args _16365, address(_16927), address(_16928), address(_16537), bool(cd[100])
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                            if idx < mem[_3685]:
                                                if idx < mem[96]:
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + 128] + 32]
                                                    t = mem[mem[(32 * idx) + _3685 + 32]]
                                                    continue 
                                    revert
                                require _3680 - 1 < mem[_3685]
                                require _3680 - 1 < mem[96]
                                if not mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                    _16482 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                    _16483 = mem[mem[(32 * _3680 - 1) + 128]]
                                    _16484 = mem[mem[(32 * _3680 - 1) + 128] + 96]
                                    mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                    mem[mem[64] + 36] = address(_16482)
                                    mem[mem[64] + 68] = address(_16483)
                                    mem[mem[64] + 100] = bool(cd[100])
                                    mem[mem[64] + 132] = uint16(_16484)
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xc951b8b with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], address(_16482), address(_16483), bool(cd[100]), uint16(_16484)
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _17402 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_17402] <= _14528:
                                        revert with 0, 'no profit'
                                else:
                                    if 4 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                        _16671 = mem[mem[(32 * _3680 - 1) + 128]]
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(_16671)
                                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16671)
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _17823 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_17823] <= _14528:
                                            revert with 0, 'no profit'
                                    else:
                                        if 12 == mem[mem[(32 * _3680 - 1) + 128] + 94 len 2]:
                                            _16767 = mem[mem[(32 * _3680 - 1) + 128]]
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(_16767)
                                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(_16767)
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _17847 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            if mem[_17847] <= _14528:
                                                revert with 0, 'no profit'
                                        else:
                                            if mem[mem[(32 * _3680 - 1) + 128] + 94 len 2] != 20:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17347 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17347] <= _14528:
                                                    revert with 0, 'no profit'
                                            else:
                                                _16673 = mem[mem[(32 * _3680 - 1) + 128] + 32]
                                                _16674 = mem[mem[(32 * _3680 - 1) + 128]]
                                                mem[mem[64] + 4] = mem[mem[(32 * _3680 - 1) + _3685 + 32]]
                                                mem[mem[64] + 36] = address(_16673)
                                                mem[mem[64] + 68] = address(_16674)
                                                mem[mem[64] + 100] = bool(cd[100])
                                                require ext_code.size(0x432e4f7ccc62e8d94b2629144a5f61ed4c255987)
                                                delegate 0x432e4f7ccc62e8d94b2629144a5f61ed4c255987.0x171c3c6a with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], address(_16673), address(_16674), bool(cd[100])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.balanceOf(address arg1) with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _17780 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                if mem[_17780] <= _14528:
                                                    revert with 0, 'no profit'
}



}
