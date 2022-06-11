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
    if ext_code.size(arg1) > 0:
        revert with 0, 'new admin is a contract'
    stor0[stor1] = 0
    adminAddress = arg1
    stor0[address(arg1)] = 1
    return 1
}

function sub_c0ce282a(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require msg.sender == adminAddress
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if ext_code.size(mem[(32 * idx) + 128]) > 0:
            revert with 0, 'callable cannot be a contract'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        stor0[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    return 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function withdrawEth(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    require cd[4] == cd[4]
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
        t = 10000
        t = cd[4]
        while idx < ('cd', 68).length:
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _103 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_103] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_103 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_103 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_103 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_103 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _149 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _150 = mem[_149]
                require mem[_149] == mem[_149]
                require mem[_149 + 32] == bool(mem[_149 + 32])
                require idx < mem[96]
                _177 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_149 + 32])
                mem[_177] = _150
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) != 4:
                    require uint16(cd[((160 * idx) + cd[68] + 100)]) == 12
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
                    _156 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _163 = mem[_156]
                    require mem[_156] == mem[_156]
                    require mem[_156 + 32] == bool(mem[_156 + 32])
                    require idx < mem[96]
                    _198 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_156 + 32])
                    mem[_198] = _163
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
                    _168 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _171 = mem[_168]
                    require mem[_168] == mem[_168]
                    require mem[_168 + 32] == bool(mem[_168 + 32])
                    require idx < mem[96]
                    _207 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_168 + 32])
                    mem[_207] = _171
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = cd[((160 * idx) + cd[68] + 164)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 68).length:
            require idx < mem[96]
            _229 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 68).length
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _230 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_230] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_230 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_230 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_230 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_230 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if uint16(cd[((160 * idx) + cd[68] + 100)]):
                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 4:
                    mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 12:
                        mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _229
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[68] + 132)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _229, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * idx) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 68).length) + 192
        mem[(32 * ('cd', 68).length) + 128] = 0
        mem[(32 * ('cd', 68).length) + 160] = 0
        mem[var34001] = (32 * ('cd', 68).length) + 128
        s = var34001
        idx = var34002
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
        t = 10000
        t = cd[4]
        while idx < ('cd', 68).length:
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _308 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_308] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_308 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_308 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_308 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_308 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if not uint16(cd[((160 * idx) + cd[68] + 100)]):
                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[68] + 132)])
                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[68] + 164)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                     gas gas_remaining wei
                    args t, address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), cd[((160 * idx) + cd[68] + 132)] << 240, uint16(cd[((160 * idx) + cd[68] + 164)])
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _339 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _340 = mem[_339]
                require mem[_339] == mem[_339]
                require mem[_339 + 32] == bool(mem[_339 + 32])
                require idx < mem[96]
                _358 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_339 + 32])
                mem[_358] = _340
            else:
                if uint16(cd[((160 * idx) + cd[68] + 100)]) != 4:
                    require uint16(cd[((160 * idx) + cd[68] + 100)]) == 12
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
                    _344 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _350 = mem[_344]
                    require mem[_344] == mem[_344]
                    require mem[_344 + 32] == bool(mem[_344 + 32])
                    require idx < mem[96]
                    _370 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_344 + 32])
                    mem[_370] = _350
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
                    _354 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _355 = mem[_354]
                    require mem[_354] == mem[_354]
                    require mem[_354 + 32] == bool(mem[_354 + 32])
                    require idx < mem[96]
                    _377 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_354 + 32])
                    mem[_377] = _355
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = cd[((160 * idx) + cd[68] + 164)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 68).length:
            require idx < mem[96]
            _385 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 68).length
            require calldata.size + (-160 * idx) + -cd[68] - 36 >= 160
            _386 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[68] + 36)] == address(cd[((160 * idx) + cd[68] + 36)])
            mem[_386] = cd[((160 * idx) + cd[68] + 36)]
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            mem[_386 + 32] = cd[((160 * idx) + cd[68] + 68)]
            require cd[((160 * idx) + cd[68] + 100)] == uint16(cd[((160 * idx) + cd[68] + 100)])
            mem[_386 + 64] = cd[((160 * idx) + cd[68] + 100)]
            require cd[((160 * idx) + cd[68] + 132)] == uint16(cd[((160 * idx) + cd[68] + 132)])
            mem[_386 + 96] = cd[((160 * idx) + cd[68] + 132)]
            require cd[((160 * idx) + cd[68] + 164)] == uint16(cd[((160 * idx) + cd[68] + 164)])
            mem[_386 + 128] = cd[((160 * idx) + cd[68] + 164)]
            if uint16(cd[((160 * idx) + cd[68] + 100)]):
                if uint16(cd[((160 * idx) + cd[68] + 100)]) == 4:
                    mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 36)])
                    require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                    delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint16(cd[((160 * idx) + cd[68] + 100)]) == 12:
                        mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = t
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((160 * idx) + cd[68] + 36)])
                        require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                        delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((160 * idx) + cd[68] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[mem[64]] = 0xa58d57400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _385
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[68] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[68] + 36)])
                mem[mem[64] + 196] = bool(cd[36])
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[68] + 132)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _385, address(s), address(cd[((160 * idx) + cd[68] + 68)]), address(cd[((160 * idx) + cd[68] + 36)]), bool(cd[36]), uint16(cd[((160 * idx) + cd[68] + 132)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 68).length
            require cd[((160 * idx) + cd[68] + 68)] == address(cd[((160 * idx) + cd[68] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[68] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
}

function sub_1d9575a5(?) {
    require calldata.size - 4 >= 64
    require cd[4] == cd[4]
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
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _1351 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_1351] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_1351 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_1351 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_1351 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_1351 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                         gas gas_remaining wei
                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1792 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1802 = mem[_1792]
                    require mem[_1792] == mem[_1792]
                    require mem[_1792 + 32] == bool(mem[_1792 + 32])
                    require idx < mem[96]
                    _1994 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1792 + 32])
                    mem[_1994] = _1802
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                        _1835 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1862 = mem[_1835]
                        require mem[_1835] == mem[_1835]
                        require mem[_1835 + 32] == bool(mem[_1835 + 32])
                        require idx < mem[96]
                        _2164 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1835 + 32])
                        mem[_2164] = _1862
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
                        _1886 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1928 = mem[_1886]
                        require mem[_1886] == mem[_1886]
                        require mem[_1886 + 32] == bool(mem[_1886 + 32])
                        require idx < mem[96]
                        _2298 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1886 + 32])
                        mem[_2298] = _1928
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 6:
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _1357 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_1357] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_1357 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_1357 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_1357 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_1357 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1797 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1808 = mem[_1797]
                        require mem[_1797] == mem[_1797]
                        require mem[_1797 + 32] == bool(mem[_1797 + 32])
                        require idx < mem[96]
                        _2015 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1797 + 32])
                        mem[_2015] = _1808
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                            _1845 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1876 = mem[_1845]
                            require mem[_1845] == mem[_1845]
                            require mem[_1845 + 32] == bool(mem[_1845 + 32])
                            require idx < mem[96]
                            _2193 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1845 + 32])
                            mem[_2193] = _1876
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
                            _1900 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1945 = mem[_1900]
                            require mem[_1900] == mem[_1900]
                            require mem[_1900 + 32] == bool(mem[_1900 + 32])
                            require idx < mem[96]
                            _2327 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1900 + 32])
                            mem[_2327] = _1945
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 17:
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _1362 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_1362] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_1362 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_1362 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_1362 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_1362 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1812 = mem[_1800]
                            require mem[_1800] == mem[_1800]
                            require mem[_1800 + 32] == bool(mem[_1800 + 32])
                            require idx < mem[96]
                            _2037 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1800 + 32])
                            mem[_2037] = _1812
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                _1854 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1887 = mem[_1854]
                                require mem[_1854] == mem[_1854]
                                require mem[_1854 + 32] == bool(mem[_1854 + 32])
                                require idx < mem[96]
                                _2224 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1854 + 32])
                                mem[_2224] = _1887
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
                                _1913 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1963 = mem[_1913]
                                require mem[_1913] == mem[_1913]
                                require mem[_1913 + 32] == bool(mem[_1913 + 32])
                                require idx < mem[96]
                                _2358 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1913 + 32])
                                mem[_2358] = _1963
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 18:
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _1369 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_1369] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_1369 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_1369 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_1369 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_1369 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1803 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1819 = mem[_1803]
                                require mem[_1803] == mem[_1803]
                                require mem[_1803 + 32] == bool(mem[_1803 + 32])
                                require idx < mem[96]
                                _2060 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1803 + 32])
                                mem[_2060] = _1819
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                    _1865 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1901 = mem[_1865]
                                    require mem[_1865] == mem[_1865]
                                    require mem[_1865 + 32] == bool(mem[_1865 + 32])
                                    require idx < mem[96]
                                    _2253 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1865 + 32])
                                    mem[_2253] = _1901
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
                                    _1929 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1980 = mem[_1929]
                                    require mem[_1929] == mem[_1929]
                                    require mem[_1929 + 32] == bool(mem[_1929 + 32])
                                    require idx < mem[96]
                                    _2389 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1929 + 32])
                                    mem[_2389] = _1980
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 19:
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _1372 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_1372] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_1372 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_1372 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_1372 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_1372 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1809 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1828 = mem[_1809]
                                    require mem[_1809] == mem[_1809]
                                    require mem[_1809 + 32] == bool(mem[_1809 + 32])
                                    require idx < mem[96]
                                    _2081 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1809 + 32])
                                    mem[_2081] = _1828
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                        _1879 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1914 = mem[_1879]
                                        require mem[_1879] == mem[_1879]
                                        require mem[_1879 + 32] == bool(mem[_1879 + 32])
                                        require idx < mem[96]
                                        _2278 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1879 + 32])
                                        mem[_2278] = _1914
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
                                        _1946 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1998 = mem[_1946]
                                        require mem[_1946] == mem[_1946]
                                        require mem[_1946 + 32] == bool(mem[_1946 + 32])
                                        require idx < mem[96]
                                        _2417 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1946 + 32])
                                        mem[_2417] = _1998
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _1377 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_1377] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_1377 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_1377 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_1377 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_1377 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1837 = mem[_1813]
                                        require mem[_1813] == mem[_1813]
                                        require mem[_1813 + 32] == bool(mem[_1813 + 32])
                                        require idx < mem[96]
                                        _2102 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1813 + 32])
                                        mem[_2102] = _1837
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                            _1890 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1930 = mem[_1890]
                                            require mem[_1890] == mem[_1890]
                                            require mem[_1890 + 32] == bool(mem[_1890 + 32])
                                            require idx < mem[96]
                                            _2305 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1890 + 32])
                                            mem[_2305] = _1930
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
                                            _1964 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _2019 = mem[_1964]
                                            require mem[_1964] == mem[_1964]
                                            require mem[_1964 + 32] == bool(mem[_1964 + 32])
                                            require idx < mem[96]
                                            _2444 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1964 + 32])
                                            mem[_2444] = _2019
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _1381 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_1381] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_1381 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_1381 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_1381 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_1381 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1820 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1847 = mem[_1820]
                                            require mem[_1820] == mem[_1820]
                                            require mem[_1820 + 32] == bool(mem[_1820 + 32])
                                            require idx < mem[96]
                                            _2123 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1820 + 32])
                                            mem[_2123] = _1847
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                _1904 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1947 = mem[_1904]
                                                require mem[_1904] == mem[_1904]
                                                require mem[_1904 + 32] == bool(mem[_1904 + 32])
                                                require idx < mem[96]
                                                _2334 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1904 + 32])
                                                mem[_2334] = _1947
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
                                                _1981 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _2041 = mem[_1981]
                                                require mem[_1981] == mem[_1981]
                                                require mem[_1981 + 32] == bool(mem[_1981 + 32])
                                                require idx < mem[96]
                                                _2471 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1981 + 32])
                                                mem[_2471] = _2041
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _1385 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_1385] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_1385 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_1385 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_1385 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_1385 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _1829 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1856 = mem[_1829]
                                                require mem[_1829] == mem[_1829]
                                                require mem[_1829 + 32] == bool(mem[_1829 + 32])
                                                require idx < mem[96]
                                                _2145 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1829 + 32])
                                                mem[_2145] = _1856
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                    _1917 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1965 = mem[_1917]
                                                    require mem[_1917] == mem[_1917]
                                                    require mem[_1917 + 32] == bool(mem[_1917 + 32])
                                                    require idx < mem[96]
                                                    _2365 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1917 + 32])
                                                    mem[_2365] = _1965
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
                                                    _1999 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _2064 = mem[_1999]
                                                    require mem[_1999] == mem[_1999]
                                                    require mem[_1999 + 32] == bool(mem[_1999 + 32])
                                                    require idx < mem[96]
                                                    _2497 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1999 + 32])
                                                    mem[_2497] = _2064
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _1391 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_1391] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_1391 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_1391 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_1391 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_1391 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _1838 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1867 = mem[_1838]
                                                    require mem[_1838] == mem[_1838]
                                                    require mem[_1838 + 32] == bool(mem[_1838 + 32])
                                                    require idx < mem[96]
                                                    _2172 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1838 + 32])
                                                    mem[_2172] = _1867
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                        _1933 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _1982 = mem[_1933]
                                                        require mem[_1933] == mem[_1933]
                                                        require mem[_1933 + 32] == bool(mem[_1933 + 32])
                                                        require idx < mem[96]
                                                        _2396 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1933 + 32])
                                                        mem[_2396] = _1982
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
                                                        _2020 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _2085 = mem[_2020]
                                                        require mem[_2020] == mem[_2020]
                                                        require mem[_2020 + 32] == bool(mem[_2020 + 32])
                                                        require idx < mem[96]
                                                        _2532 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2020 + 32])
                                                        mem[_2532] = _2085
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _1393 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_1393] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_1393 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_1393 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_1393 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_1393 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _1848 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _1881 = mem[_1848]
                                                        require mem[_1848] == mem[_1848]
                                                        require mem[_1848 + 32] == bool(mem[_1848 + 32])
                                                        require idx < mem[96]
                                                        _2201 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1848 + 32])
                                                        mem[_2201] = _1881
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                            _1950 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _2000 = mem[_1950]
                                                            require mem[_1950] == mem[_1950]
                                                            require mem[_1950 + 32] == bool(mem[_1950 + 32])
                                                            require idx < mem[96]
                                                            _2424 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1950 + 32])
                                                            mem[_2424] = _2000
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
                                                            _2042 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _2106 = mem[_2042]
                                                            require mem[_2042] == mem[_2042]
                                                            require mem[_2042 + 32] == bool(mem[_2042 + 32])
                                                            require idx < mem[96]
                                                            _2555 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2042 + 32])
                                                            mem[_2555] = _2106
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _1395 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_1395] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_1395 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_1395 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_1395 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_1395 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _1857 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1892 = mem[_1857]
                                                            require mem[_1857] == mem[_1857]
                                                            require mem[_1857 + 32] == bool(mem[_1857 + 32])
                                                            require idx < mem[96]
                                                            _2232 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1857 + 32])
                                                            mem[_2232] = _1892
                                                        else:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                _1968 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2021 = mem[_1968]
                                                                require mem[_1968] == mem[_1968]
                                                                require mem[_1968 + 32] == bool(mem[_1968 + 32])
                                                                require idx < mem[96]
                                                                _2451 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1968 + 32])
                                                                mem[_2451] = _2021
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
                                                                _2065 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2127 = mem[_2065]
                                                                require mem[_2065] == mem[_2065]
                                                                require mem[_2065 + 32] == bool(mem[_2065 + 32])
                                                                require idx < mem[96]
                                                                _2584 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2065 + 32])
                                                                mem[_2584] = _2127
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1334 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1334] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1334 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1334 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1334 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1334 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _1787 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _1789 = mem[_1787]
                                                                require mem[_1787] == mem[_1787]
                                                                require mem[_1787 + 32] == bool(mem[_1787 + 32])
                                                                require idx < mem[96]
                                                                _1919 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1787 + 32])
                                                                mem[_1919] = _1789
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                    _1805 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _1822 = mem[_1805]
                                                                    require mem[_1805] == mem[_1805]
                                                                    require mem[_1805 + 32] == bool(mem[_1805 + 32])
                                                                    require idx < mem[96]
                                                                    _2066 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1805 + 32])
                                                                    mem[_2066] = _1822
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
                                                                    _1840 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _1868 = mem[_1840]
                                                                    require mem[_1840] == mem[_1840]
                                                                    require mem[_1840 + 32] == bool(mem[_1840 + 32])
                                                                    require idx < mem[96]
                                                                    _2176 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1840 + 32])
                                                                    mem[_2176] = _1868
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1397 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1397] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1397 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1397 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1397 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1397 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _1869 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _1907 = mem[_1869]
                                                                require mem[_1869] == mem[_1869]
                                                                require mem[_1869 + 32] == bool(mem[_1869 + 32])
                                                                require idx < mem[96]
                                                                _2261 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1869 + 32])
                                                                mem[_2261] = _1907
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                    _1985 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2044 = mem[_1985]
                                                                    require mem[_1985] == mem[_1985]
                                                                    require mem[_1985 + 32] == bool(mem[_1985 + 32])
                                                                    require idx < mem[96]
                                                                    _2478 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1985 + 32])
                                                                    mem[_2478] = _2044
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
                                                                    _2088 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2150 = mem[_2088]
                                                                    require mem[_2088] == mem[_2088]
                                                                    require mem[_2088 + 32] == bool(mem[_2088 + 32])
                                                                    require idx < mem[96]
                                                                    _2607 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2088 + 32])
                                                                    mem[_2607] = _2150
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        s = 0
        t = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        u = cd[4]
        while s < ('cd', 36).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(t))
            staticcall address(t).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3565 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3566 = mem[_3565]
            require mem[_3565] == mem[_3565]
            _3571 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _3566
            _3572 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_3572 + 32] = mem[_3572 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _3575 = mem[_3572]
            w = _3572 + 32
            x = mem[64]
            v = mem[_3572]
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[mem[64] + floor32(mem[_3572])] = mem[_3572 + floor32(mem[_3572]) + -(mem[_3572] % 32) + 64 len mem[_3572] % 32] or Mask(8 * -(mem[_3572] % 32) + 32, -(8 * -(mem[_3572] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3572])])
            call address(t).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _3575 + _3571 + -mem[64] + 96]
            if not return_data.size:
                require ext_call.success
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(t))
                staticcall address(t).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4472 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4472] == mem[_4472]
                if _3566 != mem[_4472]:
                    return 1, address(t), mem[_4472], _3566
                require s < mem[96]
                _4485 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4508 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4512 = mem[_4508]
                require mem[_4508] == mem[_4508]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    _4516 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_4516] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_4516 + 32] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_4516 + 64] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_4516 + 96] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_4516 + 128] = cd[((160 * s) + cd[36] + 164)]
                    if uint16(cd[((160 * s) + cd[36] + 100)]):
                        if uint16(cd[((160 * s) + cd[36] + 100)]) == 4:
                            mem[mem[64] + 36] = u
                            mem[mem[64] + 68] = address(t)
                            mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                            staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4772] == mem[_4772]
                            if _4485 != mem[_4772] - _4512:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                if s < ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4772] - _4512, _4485
                        else:
                            if uint16(cd[((160 * s) + cd[36] + 100)]) != 12:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4668 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4668] == mem[_4668]
                                if _4485 != mem[_4668] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4668] - _4512, _4485
                            else:
                                mem[mem[64] + 36] = u
                                mem[mem[64] + 68] = address(t)
                                mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4784] == mem[_4784]
                                if _4485 != mem[_4784] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4784] - _4512, _4485
                    else:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = _4485
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 164] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, _4485, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4843 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4843] == mem[_4843]
                        if _4485 != mem[_4843] - _4512:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4843] - _4512, _4485
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4528 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4532 = mem[_4528]
                    require mem[_4528] == mem[_4528]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    _4536 = mem[64]
                    mem[mem[64] + 36] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 68] = u
                    _4537 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_4537 + 32] = mem[_4537 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _4540 = mem[_4537]
                    w = _4537 + 32
                    x = mem[64]
                    v = mem[_4537]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4537])] = mem[_4537 + floor32(mem[_4537]) + -(mem[_4537] % 32) + 64 len mem[_4537] % 32] or Mask(8 * -(mem[_4537] % 32) + 32, -(8 * -(mem[_4537] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4537])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4540 + _4536 + -mem[64] + 96]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4912 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4912] == mem[_4912]
                        if u != mem[_4912] - _4532:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_4912] - _4532, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4984 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4984] == mem[_4984 + 12 len 20]
                            if mem[_4984 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _4485
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4485, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5042 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5042] == mem[_5042]
                                if _4485 != mem[_5042] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5042] - _4512, _4485
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4485, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5043 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5043] == mem[_5043]
                                if _4485 != mem[_5043] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5043] - _4512, _4485
                    else:
                        _4836 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4836] = return_data.size
                        mem[_4836 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4913 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4913] == mem[_4913]
                        if u != mem[_4913] - _4532:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_4913] - _4532, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4985 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4985] == mem[_4985 + 12 len 20]
                            if mem[_4985 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _4485
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4485, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5044 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5044] == mem[_5044]
                                if _4485 != mem[_5044] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5044] - _4512, _4485
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4485, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5045 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5045] == mem[_5045]
                                if _4485 != mem[_5045] - _4512:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5045] - _4512, _4485
            else:
                _4462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_4462] = return_data.size
                mem[_4462 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(t))
                staticcall address(t).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4473 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_4473] == mem[_4473]
                if _3566 != mem[_4473]:
                    return 1, address(t), mem[_4473], _3566
                require s < mem[96]
                _4487 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _4509 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _4513 = mem[_4509]
                require mem[_4509] == mem[_4509]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    _4517 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_4517] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_4517 + 32] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_4517 + 64] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_4517 + 96] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_4517 + 128] = cd[((160 * s) + cd[36] + 164)]
                    if uint16(cd[((160 * s) + cd[36] + 100)]):
                        if uint16(cd[((160 * s) + cd[36] + 100)]) == 4:
                            mem[mem[64] + 36] = u
                            mem[mem[64] + 68] = address(t)
                            mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                            staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4775 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4775] == mem[_4775]
                            if _4487 != mem[_4775] - _4513:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                if s < ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4775] - _4513, _4487
                        else:
                            if uint16(cd[((160 * s) + cd[36] + 100)]) != 12:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4669 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4669] == mem[_4669]
                                if _4487 != mem[_4669] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4669] - _4513, _4487
                            else:
                                mem[mem[64] + 36] = u
                                mem[mem[64] + 68] = address(t)
                                mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _4788 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_4788] == mem[_4788]
                                if _4487 != mem[_4788] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4788] - _4513, _4487
                    else:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = _4487
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 164] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, _4487, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4845 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4845] == mem[_4845]
                        if _4487 != mem[_4845] - _4513:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_4845] - _4513, _4487
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _4529 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _4533 = mem[_4529]
                    require mem[_4529] == mem[_4529]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    _4541 = mem[64]
                    mem[mem[64] + 36] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 68] = u
                    _4542 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_4542 + 32] = mem[_4542 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _4545 = mem[_4542]
                    w = _4542 + 32
                    x = mem[64]
                    v = mem[_4542]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_4542])] = mem[_4542 + floor32(mem[_4542]) + -(mem[_4542] % 32) + 64 len mem[_4542] % 32] or Mask(8 * -(mem[_4542] % 32) + 32, -(8 * -(mem[_4542] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4542])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _4545 + _4541 + -mem[64] + 96]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4914 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4914] == mem[_4914]
                        if u != mem[_4914] - _4533:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_4914] - _4533, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4986 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4986] == mem[_4986 + 12 len 20]
                            if mem[_4986 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _4487
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4487, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5046 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5046] == mem[_5046]
                                if _4487 != mem[_5046] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5046] - _4513, _4487
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4487, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5047 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5047] == mem[_5047]
                                if _4487 != mem[_5047] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5047] - _4513, _4487
                    else:
                        _4837 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_4837] = return_data.size
                        mem[_4837 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _4915 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4915] == mem[_4915]
                        if u != mem[_4915] - _4533:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_4915] - _4533, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _4987 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4987] == mem[_4987 + 12 len 20]
                            if mem[_4987 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _4487
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _4487, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5048 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5048] == mem[_5048]
                                if _4487 != mem[_5048] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5048] - _4513, _4487
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _4487, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5049 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5049] == mem[_5049]
                                if _4487 != mem[_5049] - _4513:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5049] - _4513, _4487
            require s < mem[96]
            require s < ('cd', 36).length
            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
            s = s + 1
            t = cd[((160 * s) + cd[36] + 68)]
            u = mem[mem[(32 * s) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var28001] = (32 * ('cd', 36).length) + 128
        s = var28001
        idx = var28002
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
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            require idx < ('cd', 36).length
            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require idx < ('cd', 36).length
                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                _3619 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_3619] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_3619 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_3619 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_3619 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_3619 + 128] = cd[((160 * idx) + cd[36] + 164)]
                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                         gas gas_remaining wei
                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3870 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _3881 = mem[_3870]
                    require mem[_3870] == mem[_3870]
                    require mem[_3870 + 32] == bool(mem[_3870 + 32])
                    require idx < mem[96]
                    _4002 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3870 + 32])
                    mem[_4002] = _3881
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                        _3904 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3922 = mem[_3904]
                        require mem[_3904] == mem[_3904]
                        require mem[_3904 + 32] == bool(mem[_3904 + 32])
                        require idx < mem[96]
                        _4097 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3904 + 32])
                        mem[_4097] = _3922
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
                        _3938 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3966 = mem[_3938]
                        require mem[_3938] == mem[_3938]
                        require mem[_3938 + 32] == bool(mem[_3938 + 32])
                        require idx < mem[96]
                        _4171 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3938 + 32])
                        mem[_4171] = _3966
            else:
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 6:
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require idx < ('cd', 36).length
                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                    _3622 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_3622] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_3622 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_3622 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_3622 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_3622 + 128] = cd[((160 * idx) + cd[36] + 164)]
                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                             gas gas_remaining wei
                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3874 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3885 = mem[_3874]
                        require mem[_3874] == mem[_3874]
                        require mem[_3874 + 32] == bool(mem[_3874 + 32])
                        require idx < mem[96]
                        _4015 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3874 + 32])
                        mem[_4015] = _3885
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                            _3910 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3932 = mem[_3910]
                            require mem[_3910] == mem[_3910]
                            require mem[_3910 + 32] == bool(mem[_3910 + 32])
                            require idx < mem[96]
                            _4113 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3910 + 32])
                            mem[_4113] = _3932
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
                            _3946 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3975 = mem[_3946]
                            require mem[_3946] == mem[_3946]
                            require mem[_3946 + 32] == bool(mem[_3946 + 32])
                            require idx < mem[96]
                            _4186 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3946 + 32])
                            mem[_4186] = _3975
                else:
                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 17:
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < ('cd', 36).length
                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                        _3627 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_3627] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_3627 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_3627 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_3627 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_3627 + 128] = cd[((160 * idx) + cd[36] + 164)]
                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                 gas gas_remaining wei
                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3879 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3888 = mem[_3879]
                            require mem[_3879] == mem[_3879]
                            require mem[_3879 + 32] == bool(mem[_3879 + 32])
                            require idx < mem[96]
                            _4028 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3879 + 32])
                            mem[_4028] = _3888
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                _3918 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3939 = mem[_3918]
                                require mem[_3918] == mem[_3918]
                                require mem[_3918 + 32] == bool(mem[_3918 + 32])
                                require idx < mem[96]
                                _4131 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3918 + 32])
                                mem[_4131] = _3939
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
                                _3956 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3987 = mem[_3956]
                                require mem[_3956] == mem[_3956]
                                require mem[_3956 + 32] == bool(mem[_3956 + 32])
                                require idx < mem[96]
                                _4211 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3956 + 32])
                                mem[_4211] = _3987
                    else:
                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 18:
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < ('cd', 36).length
                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                            _3632 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_3632] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_3632 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_3632 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_3632 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_3632 + 128] = cd[((160 * idx) + cd[36] + 164)]
                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                     gas gas_remaining wei
                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _3882 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3893 = mem[_3882]
                                require mem[_3882] == mem[_3882]
                                require mem[_3882 + 32] == bool(mem[_3882 + 32])
                                require idx < mem[96]
                                _4042 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3882 + 32])
                                mem[_4042] = _3893
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                    _3925 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3947 = mem[_3925]
                                    require mem[_3925] == mem[_3925]
                                    require mem[_3925 + 32] == bool(mem[_3925 + 32])
                                    require idx < mem[96]
                                    _4148 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3925 + 32])
                                    mem[_4148] = _3947
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
                                    _3967 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3996 = mem[_3967]
                                    require mem[_3967] == mem[_3967]
                                    require mem[_3967 + 32] == bool(mem[_3967 + 32])
                                    require idx < mem[96]
                                    _4225 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3967 + 32])
                                    mem[_4225] = _3996
                        else:
                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 19:
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < ('cd', 36).length
                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                _3633 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_3633] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_3633 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_3633 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_3633 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_3633 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                         gas gas_remaining wei
                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _3886 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3899 = mem[_3886]
                                    require mem[_3886] == mem[_3886]
                                    require mem[_3886 + 32] == bool(mem[_3886 + 32])
                                    require idx < mem[96]
                                    _4055 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3886 + 32])
                                    mem[_4055] = _3899
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                        _3935 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _3957 = mem[_3935]
                                        require mem[_3935] == mem[_3935]
                                        require mem[_3935 + 32] == bool(mem[_3935 + 32])
                                        require idx < mem[96]
                                        _4163 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3935 + 32])
                                        mem[_4163] = _3957
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
                                        _3976 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _4006 = mem[_3976]
                                        require mem[_3976] == mem[_3976]
                                        require mem[_3976 + 32] == bool(mem[_3976 + 32])
                                        require idx < mem[96]
                                        _4247 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3976 + 32])
                                        mem[_4247] = _4006
                            else:
                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 23:
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < ('cd', 36).length
                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                    _3636 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_3636] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_3636 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_3636 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_3636 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_3636 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                             gas gas_remaining wei
                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _3889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _3906 = mem[_3889]
                                        require mem[_3889] == mem[_3889]
                                        require mem[_3889 + 32] == bool(mem[_3889 + 32])
                                        require idx < mem[96]
                                        _4068 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3889 + 32])
                                        mem[_4068] = _3906
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                            _3942 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _3968 = mem[_3942]
                                            require mem[_3942] == mem[_3942]
                                            require mem[_3942 + 32] == bool(mem[_3942 + 32])
                                            require idx < mem[96]
                                            _4178 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3942 + 32])
                                            mem[_4178] = _3968
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
                                            _3988 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _4019 = mem[_3988]
                                            require mem[_3988] == mem[_3988]
                                            require mem[_3988 + 32] == bool(mem[_3988 + 32])
                                            require idx < mem[96]
                                            _4263 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3988 + 32])
                                            mem[_4263] = _4019
                                else:
                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 24:
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                             gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < ('cd', 36).length
                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                        _3637 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_3637] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_3637 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_3637 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_3637 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_3637 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                 gas gas_remaining wei
                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _3894 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _3912 = mem[_3894]
                                            require mem[_3894] == mem[_3894]
                                            require mem[_3894 + 32] == bool(mem[_3894 + 32])
                                            require idx < mem[96]
                                            _4080 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3894 + 32])
                                            mem[_4080] = _3912
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                _3950 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _3977 = mem[_3950]
                                                require mem[_3950] == mem[_3950]
                                                require mem[_3950 + 32] == bool(mem[_3950 + 32])
                                                require idx < mem[96]
                                                _4193 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3950 + 32])
                                                mem[_4193] = _3977
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
                                                _3997 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _4032 = mem[_3997]
                                                require mem[_3997] == mem[_3997]
                                                require mem[_3997 + 32] == bool(mem[_3997 + 32])
                                                require idx < mem[96]
                                                _4279 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3997 + 32])
                                                mem[_4279] = _4032
                                    else:
                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) == 27:
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                 gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require idx < ('cd', 36).length
                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                            _3638 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_3638] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_3638 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_3638 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_3638 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_3638 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                     gas gas_remaining wei
                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _3900 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _3920 = mem[_3900]
                                                require mem[_3900] == mem[_3900]
                                                require mem[_3900 + 32] == bool(mem[_3900 + 32])
                                                require idx < mem[96]
                                                _4091 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3900 + 32])
                                                mem[_4091] = _3920
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                    _3960 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _3989 = mem[_3960]
                                                    require mem[_3960] == mem[_3960]
                                                    require mem[_3960 + 32] == bool(mem[_3960 + 32])
                                                    require idx < mem[96]
                                                    _4218 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3960 + 32])
                                                    mem[_4218] = _3989
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
                                                    _4007 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _4046 = mem[_4007]
                                                    require mem[_4007] == mem[_4007]
                                                    require mem[_4007 + 32] == bool(mem[_4007 + 32])
                                                    require idx < mem[96]
                                                    _4294 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4007 + 32])
                                                    mem[_4294] = _4046
                                        else:
                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) == 28:
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                     gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require idx < ('cd', 36).length
                                                require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                _3641 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_3641] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_3641 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_3641 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_3641 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_3641 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                    mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                    delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                         gas gas_remaining wei
                                                        args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _3907 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _3927 = mem[_3907]
                                                    require mem[_3907] == mem[_3907]
                                                    require mem[_3907 + 32] == bool(mem[_3907 + 32])
                                                    require idx < mem[96]
                                                    _4105 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3907 + 32])
                                                    mem[_4105] = _3927
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                        require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                        _3971 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _3998 = mem[_3971]
                                                        require mem[_3971] == mem[_3971]
                                                        require mem[_3971 + 32] == bool(mem[_3971 + 32])
                                                        require idx < mem[96]
                                                        _4232 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3971 + 32])
                                                        mem[_4232] = _3998
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
                                                        _4020 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _4059 = mem[_4020]
                                                        require mem[_4020] == mem[_4020]
                                                        require mem[_4020 + 32] == bool(mem[_4020 + 32])
                                                        require idx < mem[96]
                                                        _4317 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4020 + 32])
                                                        mem[_4317] = _4059
                                            else:
                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 29:
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                    call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                         gas gas_remaining wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require idx < ('cd', 36).length
                                                    require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                    _3642 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_3642] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_3642 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_3642 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_3642 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_3642 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                    if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                        mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                             gas gas_remaining wei
                                                            args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _3913 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _3937 = mem[_3913]
                                                        require mem[_3913] == mem[_3913]
                                                        require mem[_3913 + 32] == bool(mem[_3913 + 32])
                                                        require idx < mem[96]
                                                        _4121 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3913 + 32])
                                                        mem[_4121] = _3937
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                            require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                            _3980 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _4008 = mem[_3980]
                                                            require mem[_3980] == mem[_3980]
                                                            require mem[_3980 + 32] == bool(mem[_3980 + 32])
                                                            require idx < mem[96]
                                                            _4254 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3980 + 32])
                                                            mem[_4254] = _4008
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
                                                            _4033 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _4072 = mem[_4033]
                                                            require mem[_4033] == mem[_4033]
                                                            require mem[_4033 + 32] == bool(mem[_4033 + 32])
                                                            require idx < mem[96]
                                                            _4334 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4033 + 32])
                                                            mem[_4334] = _4072
                                                else:
                                                    if uint16(cd[((160 * idx) + cd[36] + 100)]) == 30:
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                        call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                             gas gas_remaining wei
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require idx < ('cd', 36).length
                                                        require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                        _3643 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_3643] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_3643 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_3643 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_3643 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_3643 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                        if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                            mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                            delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                 gas gas_remaining wei
                                                                args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                            if not delegate.return_code:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            _3921 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _3944 = mem[_3921]
                                                            require mem[_3921] == mem[_3921]
                                                            require mem[_3921 + 32] == bool(mem[_3921 + 32])
                                                            require idx < mem[96]
                                                            _4139 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3921 + 32])
                                                            mem[_4139] = _3944
                                                        else:
                                                            if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                _3992 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _4021 = mem[_3992]
                                                                require mem[_3992] == mem[_3992]
                                                                require mem[_3992 + 32] == bool(mem[_3992 + 32])
                                                                require idx < mem[96]
                                                                _4270 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3992 + 32])
                                                                mem[_4270] = _4021
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
                                                                _4047 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _4084 = mem[_4047]
                                                                require mem[_4047] == mem[_4047]
                                                                require mem[_4047 + 32] == bool(mem[_4047 + 32])
                                                                require idx < mem[96]
                                                                _4349 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4047 + 32])
                                                                mem[_4349] = _4084
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _3606 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_3606] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_3606 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_3606 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_3606 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_3606 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _3866 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3868 = mem[_3866]
                                                                require mem[_3866] == mem[_3866]
                                                                require mem[_3866 + 32] == bool(mem[_3866 + 32])
                                                                require idx < mem[96]
                                                                _3962 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3866 + 32])
                                                                mem[_3962] = _3868
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                    _3884 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3896 = mem[_3884]
                                                                    require mem[_3884] == mem[_3884]
                                                                    require mem[_3884 + 32] == bool(mem[_3884 + 32])
                                                                    require idx < mem[96]
                                                                    _4048 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3884 + 32])
                                                                    mem[_4048] = _3896
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
                                                                    _3909 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3928 = mem[_3909]
                                                                    require mem[_3909] == mem[_3909]
                                                                    require mem[_3909 + 32] == bool(mem[_3909 + 32])
                                                                    require idx < mem[96]
                                                                    _4109 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3909 + 32])
                                                                    mem[_4109] = _3928
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _3644 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_3644] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_3644 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_3644 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_3644 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_3644 + 128] = cd[((160 * idx) + cd[36] + 164)]
                                                            if not uint16(cd[((160 * idx) + cd[36] + 100)]):
                                                                mem[mem[64] + 36] = address(cd[((160 * idx) + cd[36] + 68)])
                                                                mem[mem[64] + 68] = address(cd[((160 * idx) + cd[36] + 36)])
                                                                mem[mem[64] + 100] = uint16(cd[((160 * idx) + cd[36] + 132)])
                                                                mem[mem[64] + 132] = uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                                                                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0x659ad184 with:
                                                                     gas gas_remaining wei
                                                                    args t, address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), cd[((160 * idx) + cd[36] + 132)] << 240, uint16(cd[((160 * idx) + cd[36] + 164)])
                                                                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                                                                if not delegate.return_code:
                                                                    revert with ext_call.return_data[0 len return_data.size]
                                                                _3929 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3953 = mem[_3929]
                                                                require mem[_3929] == mem[_3929]
                                                                require mem[_3929 + 32] == bool(mem[_3929 + 32])
                                                                require idx < mem[96]
                                                                _4156 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3929 + 32])
                                                                mem[_4156] = _3953
                                                            else:
                                                                if uint16(cd[((160 * idx) + cd[36] + 100)]) != 4:
                                                                    require uint16(cd[((160 * idx) + cd[36] + 100)]) == 12
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
                                                                    _4001 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _4035 = mem[_4001]
                                                                    require mem[_4001] == mem[_4001]
                                                                    require mem[_4001 + 32] == bool(mem[_4001 + 32])
                                                                    require idx < mem[96]
                                                                    _4286 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4001 + 32])
                                                                    mem[_4286] = _4035
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
                                                                    _4062 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _4096 = mem[_4062]
                                                                    require mem[_4062] == mem[_4062]
                                                                    require mem[_4062 + 32] == bool(mem[_4062 + 32])
                                                                    require idx < mem[96]
                                                                    _4362 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_4062 + 32])
                                                                    mem[_4362] = _4096
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((160 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        s = 0
        t = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        u = cd[4]
        while s < ('cd', 36).length:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(t))
            staticcall address(t).balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4873 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4878 = mem[_4873]
            require mem[_4873] == mem[_4873]
            _4916 = mem[64]
            mem[mem[64] + 36] = this.address
            mem[mem[64] + 68] = _4878
            _4917 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_4917 + 32] = mem[_4917 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            _4920 = mem[_4917]
            w = _4917 + 32
            x = mem[64]
            v = mem[_4917]
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[mem[64] + floor32(mem[_4917])] = mem[_4917 + floor32(mem[_4917]) + -(mem[_4917] % 32) + 64 len mem[_4917] % 32] or Mask(8 * -(mem[_4917] % 32) + 32, -(8 * -(mem[_4917] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_4917])])
            call address(t).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _4920 + _4916 + -mem[64] + 96]
            if not return_data.size:
                require ext_call.success
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(t))
                staticcall address(t).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5235] == mem[_5235]
                if _4878 != mem[_5235]:
                    return 1, address(t), mem[_5235], _4878
                require s < mem[96]
                _5242 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5253 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5255 = mem[_5253]
                require mem[_5253] == mem[_5253]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    _5257 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_5257] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_5257 + 32] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_5257 + 64] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_5257 + 96] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_5257 + 128] = cd[((160 * s) + cd[36] + 164)]
                    if uint16(cd[((160 * s) + cd[36] + 100)]):
                        if uint16(cd[((160 * s) + cd[36] + 100)]) == 4:
                            mem[mem[64] + 36] = u
                            mem[mem[64] + 68] = address(t)
                            mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                            staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5385] == mem[_5385]
                            if _5242 != mem[_5385] - _5255:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                if s < ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5385] - _5255, _5242
                        else:
                            if uint16(cd[((160 * s) + cd[36] + 100)]) != 12:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5333 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5333] == mem[_5333]
                                if _5242 != mem[_5333] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5333] - _5255, _5242
                            else:
                                mem[mem[64] + 36] = u
                                mem[mem[64] + 68] = address(t)
                                mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5391] == mem[_5391]
                                if _5242 != mem[_5391] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5391] - _5255, _5242
                    else:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = _5242
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 164] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, _5242, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5426 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5426] == mem[_5426]
                        if _5242 != mem[_5426] - _5255:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5426] - _5255, _5242
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5263 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5265 = mem[_5263]
                    require mem[_5263] == mem[_5263]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    _5267 = mem[64]
                    mem[mem[64] + 36] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 68] = u
                    _5268 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5268 + 32] = mem[_5268 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _5271 = mem[_5268]
                    w = _5268 + 32
                    x = mem[64]
                    v = mem[_5268]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_5268])] = mem[_5268 + floor32(mem[_5268]) + -(mem[_5268] % 32) + 64 len mem[_5268] % 32] or Mask(8 * -(mem[_5268] % 32) + 32, -(8 * -(mem[_5268] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5268])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5271 + _5267 + -mem[64] + 96]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5491 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5491] == mem[_5491]
                        if u != mem[_5491] - _5265:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_5491] - _5265, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5537] == mem[_5537 + 12 len 20]
                            if mem[_5537 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _5242
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _5242, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5581] == mem[_5581]
                                if _5242 != mem[_5581] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5581] - _5255, _5242
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _5242, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5582 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5582] == mem[_5582]
                                if _5242 != mem[_5582] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5582] - _5255, _5242
                    else:
                        _5421 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5421] = return_data.size
                        mem[_5421 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5492 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5492] == mem[_5492]
                        if u != mem[_5492] - _5265:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_5492] - _5265, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5538] == mem[_5538 + 12 len 20]
                            if mem[_5538 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _5242
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _5242, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5583 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5583] == mem[_5583]
                                if _5242 != mem[_5583] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5583] - _5255, _5242
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _5242, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5584 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5584] == mem[_5584]
                                if _5242 != mem[_5584] - _5255:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5584] - _5255, _5242
            else:
                _5230 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_5230] = return_data.size
                mem[_5230 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(t))
                staticcall address(t).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_5236] == mem[_5236]
                if _4878 != mem[_5236]:
                    return 1, address(t), mem[_5236], _4878
                require s < mem[96]
                _5244 = mem[mem[(32 * s) + 128]]
                require s < ('cd', 36).length
                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                mem[mem[64] + 4] = this.address
                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _5254 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _5256 = mem[_5254]
                require mem[_5254] == mem[_5254]
                require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                if uint16(cd[((160 * s) + cd[36] + 100)]):
                    require calldata.size + (-160 * s) + -cd[36] - 36 >= 160
                    _5258 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[_5258] = cd[((160 * s) + cd[36] + 36)]
                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                    mem[_5258 + 32] = cd[((160 * s) + cd[36] + 68)]
                    require cd[((160 * s) + cd[36] + 100)] == uint16(cd[((160 * s) + cd[36] + 100)])
                    mem[_5258 + 64] = cd[((160 * s) + cd[36] + 100)]
                    require cd[((160 * s) + cd[36] + 132)] == uint16(cd[((160 * s) + cd[36] + 132)])
                    mem[_5258 + 96] = cd[((160 * s) + cd[36] + 132)]
                    require cd[((160 * s) + cd[36] + 164)] == uint16(cd[((160 * s) + cd[36] + 164)])
                    mem[_5258 + 128] = cd[((160 * s) + cd[36] + 164)]
                    if uint16(cd[((160 * s) + cd[36] + 100)]):
                        if uint16(cd[((160 * s) + cd[36] + 100)]) == 4:
                            mem[mem[64] + 36] = u
                            mem[mem[64] + 68] = address(t)
                            mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                            delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                            staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5388 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5388] == mem[_5388]
                            if _5244 != mem[_5388] - _5256:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                if s < ('cd', 36).length - 1:
                                    return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5388] - _5256, _5244
                        else:
                            if uint16(cd[((160 * s) + cd[36] + 100)]) != 12:
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5334 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5334] == mem[_5334]
                                if _5244 != mem[_5334] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5334] - _5256, _5244
                            else:
                                mem[mem[64] + 36] = u
                                mem[mem[64] + 68] = address(t)
                                mem[mem[64] + 100] = address(cd[((160 * s) + cd[36] + 36)])
                                require ext_code.size(0x5922542bfe30f1a7241b3b8e26a446e61796df41)
                                delegate 0x5922542bfe30f1a7241b3b8e26a446e61796df41.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, address(t), address(cd[((160 * s) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5395 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5395] == mem[_5395]
                                if _5244 != mem[_5395] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5395] - _5256, _5244
                    else:
                        mem[mem[64] + 36] = u
                        mem[mem[64] + 68] = _5244
                        mem[mem[64] + 100] = address(t)
                        mem[mem[64] + 132] = address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 164] = address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 196] = 0
                        mem[mem[64] + 228] = uint16(cd[((160 * s) + cd[36] + 132)])
                        require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                        delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, u, _5244, address(t), address(cd[((160 * s) + cd[36] + 68)]), address(cd[((160 * s) + cd[36] + 36)]), 0, uint16(cd[((160 * s) + cd[36] + 132)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                        staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5428 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5428] == mem[_5428]
                        if _5244 != mem[_5428] - _5256:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            if s < ('cd', 36).length - 1:
                                return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5428] - _5256, _5244
                else:
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                    require ext_code.size(address(t))
                    staticcall address(t).balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5264 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _5266 = mem[_5264]
                    require mem[_5264] == mem[_5264]
                    require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                    _5272 = mem[64]
                    mem[mem[64] + 36] = address(cd[((160 * s) + cd[36] + 36)])
                    mem[mem[64] + 68] = u
                    _5273 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_5273 + 32] = mem[_5273 + 36 len 28] or 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    _5276 = mem[_5273]
                    w = _5273 + 32
                    x = mem[64]
                    v = mem[_5273]
                    while v >= 32:
                        mem[x] = mem[w]
                        w = w + 32
                        x = x + 32
                        v = v - 32
                        continue 
                    mem[mem[64] + floor32(mem[_5273])] = mem[_5273 + floor32(mem[_5273]) + -(mem[_5273] % 32) + 64 len mem[_5273] % 32] or Mask(8 * -(mem[_5273] % 32) + 32, -(8 * -(mem[_5273] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5273])])
                    call address(t).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _5276 + _5272 + -mem[64] + 96]
                    if not return_data.size:
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5493 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5493] == mem[_5493]
                        if u != mem[_5493] - _5266:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_5493] - _5266, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5539] == mem[_5539 + 12 len 20]
                            if mem[_5539 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _5244
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _5244, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5585] == mem[_5585]
                                if _5244 != mem[_5585] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5585] - _5256, _5244
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _5244, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5586] == mem[_5586]
                                if _5244 != mem[_5586] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5586] - _5256, _5244
                    else:
                        _5422 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_5422] = return_data.size
                        mem[_5422 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64] + 4] = address(cd[((160 * s) + cd[36] + 36)])
                        require ext_code.size(address(t))
                        staticcall address(t).balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args address(cd[((160 * s) + cd[36] + 36)])
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _5494 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_5494] == mem[_5494]
                        if u != mem[_5494] - _5266:
                            if s < ('cd', 36).length - 1:
                                return 1, address(t), mem[_5494] - _5266, u
                        else:
                            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                            require cd[((160 * s) + cd[36] + 36)] == address(cd[((160 * s) + cd[36] + 36)])
                            require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                            staticcall address(cd[((160 * s) + cd[36] + 36)]).token0() with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5540 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5540] == mem[_5540 + 12 len 20]
                            if mem[_5540 + 12 len 20] != address(cd[((160 * s) + cd[36] + 68)]):
                                mem[mem[64] + 36] = _5244
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, _5244, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5587] == mem[_5587]
                                if _5244 != mem[_5587] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5587] - _5256, _5244
                            else:
                                mem[mem[64] + 36] = 0
                                mem[mem[64] + 68] = this.address
                                mem[mem[64] + 100] = 128
                                mem[mem[64] + 132] = 0
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 36)]))
                                call address(cd[((160 * s) + cd[36] + 36)]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args _5244, 0, address(this.address), 128, 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[((160 * s) + cd[36] + 68)]))
                                staticcall address(cd[((160 * s) + cd[36] + 68)]).balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5588 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5588] == mem[_5588]
                                if _5244 != mem[_5588] - _5256:
                                    require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
                                    if s < ('cd', 36).length - 1:
                                        return 1, address(cd[((160 * s) + cd[36] + 68)]), mem[_5588] - _5256, _5244
            require s < mem[96]
            require s < ('cd', 36).length
            require cd[((160 * s) + cd[36] + 68)] == address(cd[((160 * s) + cd[36] + 68)])
            s = s + 1
            t = cd[((160 * s) + cd[36] + 68)]
            u = mem[mem[(32 * s) + 128]]
            continue 
    return 0
}



}
