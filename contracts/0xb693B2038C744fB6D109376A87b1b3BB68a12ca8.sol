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

function sub_22466fee(?) {
    require calldata.size - 4 >= 96
    require cd[36] == bool(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (160 * ('cd', 68).length) + 36 <= calldata.size
    require ('cd', 68).length <= test266151307()
    mem[96] = ('cd', 68).length
    mem[64] = (32 * ('cd', 68).length) + 128
    if not ('cd', 68).length:
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 68).length:
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _100 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_100] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_100 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_100 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_100 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_100 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _122 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _134 = mem[_122]
                require mem[_122 + 32] == bool(mem[_122 + 32])
                require idx < mem[96]
                _172 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_122 + 32])
                mem[_172] = _134
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) != 4:
                    require 12 == uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                    delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _143 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _161 = mem[_143]
                    require mem[_143 + 32] == bool(mem[_143 + 32])
                    require idx < mem[96]
                    _195 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_143 + 32])
                    mem[_195] = _161
                else:
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _141 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _151 = mem[_141]
                    require mem[_141 + 32] == bool(mem[_141 + 32])
                    require idx < mem[96]
                    _193 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_141 + 32])
                    mem[_193] = _151
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        u = 0
        v = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        w = cd[4]
        while u < ('cd', 68).length:
            require u < mem[96]
            _229 = mem[mem[(32 * u) + 128]]
            require u < ('cd', 68).length
            require calldata.size + (-160 * u) + -cd[68] - 36 >= 160
            _230 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * u) + cd[68] + 36)] == address(cd[((160 * u) + cd[68] + 36)])
            mem[_230] = cd[((160 * u) + cd[68] + 36)]
            require cd[((160 * u) + cd[68] + 68)] == address(cd[((160 * u) + cd[68] + 68)])
            mem[_230 + 32] = cd[((160 * u) + cd[68] + 68)]
            require cd[((160 * u) + cd[68] + 100)] == uint16(cd[((160 * u) + cd[68] + 100)])
            mem[_230 + 64] = cd[((160 * u) + cd[68] + 100)]
            require cd[((160 * u) + cd[68] + 132)] == uint16(cd[((160 * u) + cd[68] + 132)])
            mem[_230 + 96] = cd[((160 * u) + cd[68] + 132)]
            require cd[((160 * u) + cd[68] + 164)] == uint16(cd[((160 * u) + cd[68] + 164)])
            mem[_230 + 128] = cd[((160 * u) + cd[68] + 164)]
            if uint16(cd[((160 * u) + cd[68] + 100)]):
                if 4 == uint16(cd[((160 * u) + cd[68] + 100)]):
                    mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = w
                    mem[mem[64] + 68] = address(v)
                    mem[mem[64] + 100] = address(cd[((160 * u) + cd[68] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, address(v), address(cd[((160 * u) + cd[68] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 12 == uint16(cd[((160 * u) + cd[68] + 100)]):
                        mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = w
                        mem[mem[64] + 68] = address(v)
                        mem[mem[64] + 100] = address(cd[((160 * u) + cd[68] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, address(v), address(cd[((160 * u) + cd[68] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] + 36] = w
                mem[mem[64] + 68] = _229
                mem[mem[64] + 100] = address(v)
                mem[mem[64] + 132] = address(cd[((160 * u) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * u) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * u) + cd[68] + 132)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, _229, address(v), address(cd[((160 * u) + cd[68] + 68)]), address(cd[((160 * u) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * u) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require u < mem[96]
            require u < ('cd', 68).length
            require cd[((160 * u) + cd[68] + 68)] == address(cd[((160 * u) + cd[68] + 68)])
            u = u + 1
            v = cd[((160 * u) + cd[68] + 68)]
            w = mem[mem[(32 * u) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 68).length) + 192
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[var23001] = (32 * ('cd', 68).length) + 128
        s = var23001
        idx = var23002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 68).length) + 128] = 0
            mem[(32 * ('cd', 68).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 68).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 68).length:
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _305 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_305] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_305 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_305 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_305 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_305 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _326 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _331 = mem[_326]
                require mem[_326 + 32] == bool(mem[_326 + 32])
                require idx < mem[96]
                _355 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_326 + 32])
                mem[_355] = _331
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) != 4:
                    require 12 == uint16(cd[((160 * idx) + cd[68] + 100)])
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                    delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _338 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _349 = mem[_338]
                    require mem[_338 + 32] == bool(mem[_338 + 32])
                    require idx < mem[96]
                    _373 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_338 + 32])
                    mem[_373] = _349
                else:
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _337 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _343 = mem[_337]
                    require mem[_337 + 32] == bool(mem[_337 + 32])
                    require idx < mem[96]
                    _371 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_337 + 32])
                    mem[_371] = _343
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        u = 0
        v = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        w = cd[4]
        while u < ('cd', 68).length:
            require u < mem[96]
            _385 = mem[mem[(32 * u) + 128]]
            require u < ('cd', 68).length
            require calldata.size + (-160 * u) + -cd[68] - 36 >= 160
            _386 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * u) + cd[68] + 36)] == address(cd[((160 * u) + cd[68] + 36)])
            mem[_386] = cd[((160 * u) + cd[68] + 36)]
            require cd[((160 * u) + cd[68] + 68)] == address(cd[((160 * u) + cd[68] + 68)])
            mem[_386 + 32] = cd[((160 * u) + cd[68] + 68)]
            require cd[((160 * u) + cd[68] + 100)] == uint16(cd[((160 * u) + cd[68] + 100)])
            mem[_386 + 64] = cd[((160 * u) + cd[68] + 100)]
            require cd[((160 * u) + cd[68] + 132)] == uint16(cd[((160 * u) + cd[68] + 132)])
            mem[_386 + 96] = cd[((160 * u) + cd[68] + 132)]
            require cd[((160 * u) + cd[68] + 164)] == uint16(cd[((160 * u) + cd[68] + 164)])
            mem[_386 + 128] = cd[((160 * u) + cd[68] + 164)]
            if uint16(cd[((160 * u) + cd[68] + 100)]):
                if 4 == uint16(cd[((160 * u) + cd[68] + 100)]):
                    mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = w
                    mem[mem[64] + 68] = address(v)
                    mem[mem[64] + 100] = address(cd[((160 * u) + cd[68] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, address(v), address(cd[((160 * u) + cd[68] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 12 == uint16(cd[((160 * u) + cd[68] + 100)]):
                        mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = w
                        mem[mem[64] + 68] = address(v)
                        mem[mem[64] + 100] = address(cd[((160 * u) + cd[68] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, address(v), address(cd[((160 * u) + cd[68] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] + 36] = w
                mem[mem[64] + 68] = _385
                mem[mem[64] + 100] = address(v)
                mem[mem[64] + 132] = address(cd[((160 * u) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * u) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * u) + cd[68] + 132)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, w, _385, address(v), address(cd[((160 * u) + cd[68] + 68)]), address(cd[((160 * u) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * u) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require u < mem[96]
            require u < ('cd', 68).length
            require cd[((160 * u) + cd[68] + 68)] == address(cd[((160 * u) + cd[68] + 68)])
            u = u + 1
            v = cd[((160 * u) + cd[68] + 68)]
            w = mem[mem[(32 * u) + 128]]
            continue 
}

function sub_1d9575a5(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (160 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _104 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_104] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_104 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_104 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_104 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_104 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _133 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _143 = mem[_133]
                require mem[_133 + 32] == bool(mem[_133 + 32])
                require idx < mem[96]
                _166 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_133 + 32])
                mem[_166] = _143
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                    require 12 == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                    delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _148 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _158 = mem[_148]
                    require mem[_148 + 32] == bool(mem[_148 + 32])
                    require idx < mem[96]
                    _181 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_148 + 32])
                    mem[_181] = _158
                else:
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _146 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _152 = mem[_146]
                    require mem[_146 + 32] == bool(mem[_146 + 32])
                    require idx < mem[96]
                    _179 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_146 + 32])
                    mem[_179] = _152
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _305 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _307 = mem[_305]
            require idx < mem[96]
            _310 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _311 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_311] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_311 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_311 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_311 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_311 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                if 4 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < ('cd', 36).length:
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _385 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= ('cd', 36).length - 1:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < mem[96]:
                            if mem[mem[(32 * idx) + 128]] == mem[_385] - _307:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < ('cd', 36).length:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx < mem[96]:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_385] - _307, mem[mem[(32 * idx) + 128]]
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 12:
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_375] - _307:
                                    require idx < mem[96]
                                    require idx < ('cd', 36).length
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    idx = idx + 1
                                    s = cd[((160 * idx) + cd[36] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                if idx < ('cd', 36).length:
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    if idx < mem[96]:
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_375] - _307, mem[mem[(32 * idx) + 128]]
                    else:
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_391] - _307:
                                    require idx < mem[96]
                                    require idx < ('cd', 36).length
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    idx = idx + 1
                                    s = cd[((160 * idx) + cd[36] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                if idx < ('cd', 36).length:
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    if idx < mem[96]:
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_391] - _307, mem[mem[(32 * idx) + 128]]
            else:
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _310
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _310, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx < ('cd', 36).length:
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _384 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= ('cd', 36).length - 1:
                        require idx < mem[96]
                        require idx < ('cd', 36).length
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[36] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    if idx < mem[96]:
                        if mem[mem[(32 * idx) + 128]] == mem[_384] - _307:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx < mem[96]:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_384] - _307, mem[mem[(32 * idx) + 128]]
            revert
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var20001] = (32 * ('cd', 36).length) + 128
        s = var20001
        idx = var20002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 36).length) + 128] = 0
            mem[(32 * ('cd', 36).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 36).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _445 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_445] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_445 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_445 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_445 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_445 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if 0 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _471 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _474 = mem[_471]
                require mem[_471 + 32] == bool(mem[_471 + 32])
                require idx < mem[96]
                _483 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_471 + 32])
                mem[_483] = _474
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                    require 12 == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(0x876db852bbe59dd0953ecf61ee4a58515219712c)
                    delegate 0x876db852bbe59dd0953ecf61ee4a58515219712c.0xd93ec7e1 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _477 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _480 = mem[_477]
                    require mem[_477 + 32] == bool(mem[_477 + 32])
                    require idx < mem[96]
                    _493 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_477 + 32])
                    mem[_493] = _480
                else:
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _476 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _478 = mem[_476]
                    require mem[_476 + 32] == bool(mem[_476 + 32])
                    require idx < mem[96]
                    _491 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_476 + 32])
                    mem[_491] = _478
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _593 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _594 = mem[_593]
            require idx < mem[96]
            _597 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _598 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_598] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_598 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_598 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_598 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_598 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                if 4 == uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    if idx < ('cd', 36).length:
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                        staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _625 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if idx >= ('cd', 36).length - 1:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < mem[96]:
                            if mem[mem[(32 * idx) + 128]] == mem[_625] - _594:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < ('cd', 36).length:
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                if idx < mem[96]:
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_625] - _594, mem[mem[(32 * idx) + 128]]
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 12:
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _615 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_615] - _594:
                                    require idx < mem[96]
                                    require idx < ('cd', 36).length
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    idx = idx + 1
                                    s = cd[((160 * idx) + cd[36] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                if idx < ('cd', 36).length:
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    if idx < mem[96]:
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_615] - _594, mem[mem[(32 * idx) + 128]]
                    else:
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[36] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                            staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _631 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_631] - _594:
                                    require idx < mem[96]
                                    require idx < ('cd', 36).length
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    idx = idx + 1
                                    s = cd[((160 * idx) + cd[36] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                if idx < ('cd', 36).length:
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    if idx < mem[96]:
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_631] - _594, mem[mem[(32 * idx) + 128]]
            else:
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _597
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                require ext_code.size(0x9aadc0be97b63f2201d6999eb53baa291276d685)
                delegate 0x9aadc0be97b63f2201d6999eb53baa291276d685.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _597, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx < ('cd', 36).length:
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 68)]))
                    staticcall address(cd[((160 * idx) + cd[36] + 68)]).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _624 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if idx >= ('cd', 36).length - 1:
                        require idx < mem[96]
                        require idx < ('cd', 36).length
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[36] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    if idx < mem[96]:
                        if mem[mem[(32 * idx) + 128]] == mem[_624] - _594:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < ('cd', 36).length:
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            if idx < mem[96]:
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_624] - _594, mem[mem[(32 * idx) + 128]]
            revert
    return 0
}



}
