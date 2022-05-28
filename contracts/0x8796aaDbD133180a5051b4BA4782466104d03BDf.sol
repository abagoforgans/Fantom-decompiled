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
                _1342 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_1342] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_1342 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_1342 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_1342 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_1342 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                    _1772 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _1783 = mem[_1772]
                    require mem[_1772] == mem[_1772]
                    require mem[_1772 + 32] == bool(mem[_1772 + 32])
                    require idx < mem[96]
                    _1983 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1772 + 32])
                    mem[_1983] = _1783
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
                        _1816 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1843 = mem[_1816]
                        require mem[_1816] == mem[_1816]
                        require mem[_1816 + 32] == bool(mem[_1816 + 32])
                        require idx < mem[96]
                        _2151 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1816 + 32])
                        mem[_2151] = _1843
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
                        _1867 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1908 = mem[_1867]
                        require mem[_1867] == mem[_1867]
                        require mem[_1867 + 32] == bool(mem[_1867 + 32])
                        require idx < mem[96]
                        _2291 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1867 + 32])
                        mem[_2291] = _1908
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
                    _1349 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_1349] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_1349 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_1349 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_1349 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_1349 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                        _1776 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _1789 = mem[_1776]
                        require mem[_1776] == mem[_1776]
                        require mem[_1776 + 32] == bool(mem[_1776 + 32])
                        require idx < mem[96]
                        _2002 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1776 + 32])
                        mem[_2002] = _1789
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
                            _1826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1857 = mem[_1826]
                            require mem[_1826] == mem[_1826]
                            require mem[_1826 + 32] == bool(mem[_1826 + 32])
                            require idx < mem[96]
                            _2180 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1826 + 32])
                            mem[_2180] = _1857
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
                            _1881 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1929 = mem[_1881]
                            require mem[_1881] == mem[_1881]
                            require mem[_1881 + 32] == bool(mem[_1881 + 32])
                            require idx < mem[96]
                            _2322 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1881 + 32])
                            mem[_2322] = _1929
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
                        _1354 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_1354] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_1354 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_1354 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_1354 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_1354 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                            _1780 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _1794 = mem[_1780]
                            require mem[_1780] == mem[_1780]
                            require mem[_1780 + 32] == bool(mem[_1780 + 32])
                            require idx < mem[96]
                            _2024 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1780 + 32])
                            mem[_2024] = _1794
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
                                _1868 = mem[_1835]
                                require mem[_1835] == mem[_1835]
                                require mem[_1835 + 32] == bool(mem[_1835 + 32])
                                require idx < mem[96]
                                _2211 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1835 + 32])
                                mem[_2211] = _1868
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
                                _1894 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1947 = mem[_1894]
                                require mem[_1894] == mem[_1894]
                                require mem[_1894 + 32] == bool(mem[_1894 + 32])
                                require idx < mem[96]
                                _2354 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1894 + 32])
                                mem[_2354] = _1947
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
                            _1359 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_1359] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_1359 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_1359 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_1359 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_1359 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                _1784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _1801 = mem[_1784]
                                require mem[_1784] == mem[_1784]
                                require mem[_1784 + 32] == bool(mem[_1784 + 32])
                                require idx < mem[96]
                                _2047 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1784 + 32])
                                mem[_2047] = _1801
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
                                    _1846 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1882 = mem[_1846]
                                    require mem[_1846] == mem[_1846]
                                    require mem[_1846 + 32] == bool(mem[_1846 + 32])
                                    require idx < mem[96]
                                    _2241 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1846 + 32])
                                    mem[_2241] = _1882
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
                                    _1909 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1966 = mem[_1909]
                                    require mem[_1909] == mem[_1909]
                                    require mem[_1909 + 32] == bool(mem[_1909 + 32])
                                    require idx < mem[96]
                                    _2386 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1909 + 32])
                                    mem[_2386] = _1966
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
                                    _1790 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _1810 = mem[_1790]
                                    require mem[_1790] == mem[_1790]
                                    require mem[_1790 + 32] == bool(mem[_1790 + 32])
                                    require idx < mem[96]
                                    _2068 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1790 + 32])
                                    mem[_2068] = _1810
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
                                        _1860 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1895 = mem[_1860]
                                        require mem[_1860] == mem[_1860]
                                        require mem[_1860 + 32] == bool(mem[_1860 + 32])
                                        require idx < mem[96]
                                        _2268 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1860 + 32])
                                        mem[_2268] = _1895
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
                                        _1930 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1987 = mem[_1930]
                                        require mem[_1930] == mem[_1930]
                                        require mem[_1930 + 32] == bool(mem[_1930 + 32])
                                        require idx < mem[96]
                                        _2415 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1930 + 32])
                                        mem[_2415] = _1987
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
                                    _1365 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_1365] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_1365 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_1365 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_1365 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_1365 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                        _1795 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _1818 = mem[_1795]
                                        require mem[_1795] == mem[_1795]
                                        require mem[_1795 + 32] == bool(mem[_1795 + 32])
                                        require idx < mem[96]
                                        _2089 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1795 + 32])
                                        mem[_2089] = _1818
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
                                            _1871 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1910 = mem[_1871]
                                            require mem[_1871] == mem[_1871]
                                            require mem[_1871 + 32] == bool(mem[_1871 + 32])
                                            require idx < mem[96]
                                            _2298 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1871 + 32])
                                            mem[_2298] = _1910
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
                                            _1948 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _2006 = mem[_1948]
                                            require mem[_1948] == mem[_1948]
                                            require mem[_1948 + 32] == bool(mem[_1948 + 32])
                                            require idx < mem[96]
                                            _2442 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1948 + 32])
                                            mem[_2442] = _2006
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
                                            _1802 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _1828 = mem[_1802]
                                            require mem[_1802] == mem[_1802]
                                            require mem[_1802 + 32] == bool(mem[_1802 + 32])
                                            require idx < mem[96]
                                            _2110 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1802 + 32])
                                            mem[_2110] = _1828
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
                                                _1885 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1931 = mem[_1885]
                                                require mem[_1885] == mem[_1885]
                                                require mem[_1885 + 32] == bool(mem[_1885 + 32])
                                                require idx < mem[96]
                                                _2329 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1885 + 32])
                                                mem[_2329] = _1931
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
                                                _1967 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _2028 = mem[_1967]
                                                require mem[_1967] == mem[_1967]
                                                require mem[_1967 + 32] == bool(mem[_1967 + 32])
                                                require idx < mem[96]
                                                _2469 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1967 + 32])
                                                mem[_2469] = _2028
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
                                            _1373 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_1373] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_1373 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_1373 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_1373 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_1373 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                _1811 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _1837 = mem[_1811]
                                                require mem[_1811] == mem[_1811]
                                                require mem[_1811 + 32] == bool(mem[_1811 + 32])
                                                require idx < mem[96]
                                                _2132 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1811 + 32])
                                                mem[_2132] = _1837
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
                                                    _1898 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1949 = mem[_1898]
                                                    require mem[_1898] == mem[_1898]
                                                    require mem[_1898 + 32] == bool(mem[_1898 + 32])
                                                    require idx < mem[96]
                                                    _2361 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1898 + 32])
                                                    mem[_2361] = _1949
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
                                                    _1988 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _2051 = mem[_1988]
                                                    require mem[_1988] == mem[_1988]
                                                    require mem[_1988 + 32] == bool(mem[_1988 + 32])
                                                    require idx < mem[96]
                                                    _2495 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1988 + 32])
                                                    mem[_2495] = _2051
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
                                                    _1819 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _1848 = mem[_1819]
                                                    require mem[_1819] == mem[_1819]
                                                    require mem[_1819 + 32] == bool(mem[_1819 + 32])
                                                    require idx < mem[96]
                                                    _2159 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1819 + 32])
                                                    mem[_2159] = _1848
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
                                                        _1913 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _1968 = mem[_1913]
                                                        require mem[_1913] == mem[_1913]
                                                        require mem[_1913 + 32] == bool(mem[_1913 + 32])
                                                        require idx < mem[96]
                                                        _2393 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1913 + 32])
                                                        mem[_2393] = _1968
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
                                                        _2007 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _2072 = mem[_2007]
                                                        require mem[_2007] == mem[_2007]
                                                        require mem[_2007 + 32] == bool(mem[_2007 + 32])
                                                        require idx < mem[96]
                                                        _2520 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2007 + 32])
                                                        mem[_2520] = _2072
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
                                                    _1379 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_1379] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_1379 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_1379 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_1379 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_1379 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                        _1862 = mem[_1829]
                                                        require mem[_1829] == mem[_1829]
                                                        require mem[_1829 + 32] == bool(mem[_1829 + 32])
                                                        require idx < mem[96]
                                                        _2188 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1829 + 32])
                                                        mem[_2188] = _1862
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
                                                            _1934 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1989 = mem[_1934]
                                                            require mem[_1934] == mem[_1934]
                                                            require mem[_1934 + 32] == bool(mem[_1934 + 32])
                                                            require idx < mem[96]
                                                            _2422 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1934 + 32])
                                                            mem[_2422] = _1989
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
                                                            _2029 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _2093 = mem[_2029]
                                                            require mem[_2029] == mem[_2029]
                                                            require mem[_2029 + 32] == bool(mem[_2029 + 32])
                                                            require idx < mem[96]
                                                            _2543 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2029 + 32])
                                                            mem[_2543] = _2093
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
                                                            _1838 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _1873 = mem[_1838]
                                                            require mem[_1838] == mem[_1838]
                                                            require mem[_1838 + 32] == bool(mem[_1838 + 32])
                                                            require idx < mem[96]
                                                            _2219 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1838 + 32])
                                                            mem[_2219] = _1873
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
                                                                _1952 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2008 = mem[_1952]
                                                                require mem[_1952] == mem[_1952]
                                                                require mem[_1952 + 32] == bool(mem[_1952 + 32])
                                                                require idx < mem[96]
                                                                _2449 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1952 + 32])
                                                                mem[_2449] = _2008
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
                                                                _2052 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _2114 = mem[_2052]
                                                                require mem[_2052] == mem[_2052]
                                                                require mem[_2052 + 32] == bool(mem[_2052 + 32])
                                                                require idx < mem[96]
                                                                _2564 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2052 + 32])
                                                                mem[_2564] = _2114
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1325 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1325] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1325 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1325 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1325 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1325 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                                _1767 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _1769 = mem[_1767]
                                                                require mem[_1767] == mem[_1767]
                                                                require mem[_1767 + 32] == bool(mem[_1767 + 32])
                                                                require idx < mem[96]
                                                                _1900 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1767 + 32])
                                                                mem[_1900] = _1769
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
                                                                    _1786 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _1804 = mem[_1786]
                                                                    require mem[_1786] == mem[_1786]
                                                                    require mem[_1786 + 32] == bool(mem[_1786 + 32])
                                                                    require idx < mem[96]
                                                                    _2053 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1786 + 32])
                                                                    mem[_2053] = _1804
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
                                                                    _1821 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _1849 = mem[_1821]
                                                                    require mem[_1821] == mem[_1821]
                                                                    require mem[_1821 + 32] == bool(mem[_1821 + 32])
                                                                    require idx < mem[96]
                                                                    _2163 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1821 + 32])
                                                                    mem[_2163] = _1849
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _1383 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_1383] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_1383 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_1383 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_1383 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_1383 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                                _1850 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _1888 = mem[_1850]
                                                                require mem[_1850] == mem[_1850]
                                                                require mem[_1850 + 32] == bool(mem[_1850 + 32])
                                                                require idx < mem[96]
                                                                _2249 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1850 + 32])
                                                                mem[_2249] = _1888
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
                                                                    _1971 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2031 = mem[_1971]
                                                                    require mem[_1971] == mem[_1971]
                                                                    require mem[_1971 + 32] == bool(mem[_1971 + 32])
                                                                    require idx < mem[96]
                                                                    _2476 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_1971 + 32])
                                                                    mem[_2476] = _2031
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
                                                                    _2075 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _2137 = mem[_2075]
                                                                    require mem[_2075] == mem[_2075]
                                                                    require mem[_2075 + 32] == bool(mem[_2075 + 32])
                                                                    require idx < mem[96]
                                                                    _2586 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_2075 + 32])
                                                                    mem[_2586] = _2137
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
            _2701 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _2702 = mem[_2701]
            require mem[_2701] == mem[_2701]
            require idx < mem[96]
            _2706 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _2711 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_2711] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_2711 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_2711 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_2711 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_2711 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 4:
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
                        _3139 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_3139] == mem[_3139]
                        if idx >= ('cd', 36).length - 1:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < mem[96]:
                            if mem[mem[(32 * idx) + 128]] == mem[_3139] - _2702:
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
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_3139] - _2702, mem[mem[(32 * idx) + 128]]
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
                            _2944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2944] == mem[_2944]
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_2944] - _2702:
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
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_2944] - _2702, mem[mem[(32 * idx) + 128]]
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
                            _3154 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_3154] == mem[_3154]
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_3154] - _2702:
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
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_3154] - _2702, mem[mem[(32 * idx) + 128]]
            else:
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _2706
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _2706, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
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
                    _3367 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_3367] == mem[_3367]
                    if idx >= ('cd', 36).length - 1:
                        require idx < mem[96]
                        require idx < ('cd', 36).length
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[36] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    if idx < mem[96]:
                        if mem[mem[(32 * idx) + 128]] == mem[_3367] - _2702:
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
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_3367] - _2702, mem[mem[(32 * idx) + 128]]
            revert
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var27001] = (32 * ('cd', 36).length) + 128
        s = var27001
        idx = var27002
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
                _3470 = mem[64]
                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                mem[64] = mem[64] + 160
                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                mem[_3470] = cd[((160 * idx) + cd[36] + 36)]
                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                mem[_3470 + 32] = cd[((160 * idx) + cd[36] + 68)]
                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                mem[_3470 + 64] = cd[((160 * idx) + cd[36] + 100)]
                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                mem[_3470 + 96] = cd[((160 * idx) + cd[36] + 132)]
                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                mem[_3470 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                    _3688 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _3698 = mem[_3688]
                    require mem[_3688] == mem[_3688]
                    require mem[_3688 + 32] == bool(mem[_3688 + 32])
                    require idx < mem[96]
                    _3821 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3688 + 32])
                    mem[_3821] = _3698
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
                        _3721 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3737 = mem[_3721]
                        require mem[_3721] == mem[_3721]
                        require mem[_3721 + 32] == bool(mem[_3721 + 32])
                        require idx < mem[96]
                        _3914 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3721 + 32])
                        mem[_3914] = _3737
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
                        _3751 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3776 = mem[_3751]
                        require mem[_3751] == mem[_3751]
                        require mem[_3751 + 32] == bool(mem[_3751 + 32])
                        require idx < mem[96]
                        _3994 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3751 + 32])
                        mem[_3994] = _3776
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
                    _3474 = mem[64]
                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                    mem[64] = mem[64] + 160
                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                    mem[_3474] = cd[((160 * idx) + cd[36] + 36)]
                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                    mem[_3474 + 32] = cd[((160 * idx) + cd[36] + 68)]
                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                    mem[_3474 + 64] = cd[((160 * idx) + cd[36] + 100)]
                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                    mem[_3474 + 96] = cd[((160 * idx) + cd[36] + 132)]
                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                    mem[_3474 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                        _3691 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3702 = mem[_3691]
                        require mem[_3691] == mem[_3691]
                        require mem[_3691 + 32] == bool(mem[_3691 + 32])
                        require idx < mem[96]
                        _3832 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3691 + 32])
                        mem[_3832] = _3702
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
                            _3727 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3745 = mem[_3727]
                            require mem[_3727] == mem[_3727]
                            require mem[_3727 + 32] == bool(mem[_3727 + 32])
                            require idx < mem[96]
                            _3930 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3727 + 32])
                            mem[_3930] = _3745
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
                            _3759 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3789 = mem[_3759]
                            require mem[_3759] == mem[_3759]
                            require mem[_3759 + 32] == bool(mem[_3759 + 32])
                            require idx < mem[96]
                            _4011 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3759 + 32])
                            mem[_4011] = _3789
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
                        _3477 = mem[64]
                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                        mem[64] = mem[64] + 160
                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                        mem[_3477] = cd[((160 * idx) + cd[36] + 36)]
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        mem[_3477 + 32] = cd[((160 * idx) + cd[36] + 68)]
                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                        mem[_3477 + 64] = cd[((160 * idx) + cd[36] + 100)]
                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                        mem[_3477 + 96] = cd[((160 * idx) + cd[36] + 132)]
                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                        mem[_3477 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                            _3695 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3706 = mem[_3695]
                            require mem[_3695] == mem[_3695]
                            require mem[_3695 + 32] == bool(mem[_3695 + 32])
                            require idx < mem[96]
                            _3845 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3695 + 32])
                            mem[_3845] = _3706
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
                                _3733 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3752 = mem[_3733]
                                require mem[_3733] == mem[_3733]
                                require mem[_3733 + 32] == bool(mem[_3733 + 32])
                                require idx < mem[96]
                                _3948 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3733 + 32])
                                mem[_3948] = _3752
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
                                _3767 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3801 = mem[_3767]
                                require mem[_3767] == mem[_3767]
                                require mem[_3767 + 32] == bool(mem[_3767 + 32])
                                require idx < mem[96]
                                _4027 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3767 + 32])
                                mem[_4027] = _3801
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
                            _3480 = mem[64]
                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                            mem[64] = mem[64] + 160
                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                            mem[_3480] = cd[((160 * idx) + cd[36] + 36)]
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            mem[_3480 + 32] = cd[((160 * idx) + cd[36] + 68)]
                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                            mem[_3480 + 64] = cd[((160 * idx) + cd[36] + 100)]
                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                            mem[_3480 + 96] = cd[((160 * idx) + cd[36] + 132)]
                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                            mem[_3480 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                _3699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 64
                                _3711 = mem[_3699]
                                require mem[_3699] == mem[_3699]
                                require mem[_3699 + 32] == bool(mem[_3699 + 32])
                                require idx < mem[96]
                                _3859 = mem[(32 * idx) + 128]
                                require idx < mem[96]
                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3699 + 32])
                                mem[_3859] = _3711
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
                                    _3740 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3760 = mem[_3740]
                                    require mem[_3740] == mem[_3740]
                                    require mem[_3740 + 32] == bool(mem[_3740 + 32])
                                    require idx < mem[96]
                                    _3966 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3740 + 32])
                                    mem[_3966] = _3760
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
                                    _3777 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3812 = mem[_3777]
                                    require mem[_3777] == mem[_3777]
                                    require mem[_3777 + 32] == bool(mem[_3777 + 32])
                                    require idx < mem[96]
                                    _4042 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3777 + 32])
                                    mem[_4042] = _3812
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
                                _3481 = mem[64]
                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                mem[64] = mem[64] + 160
                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                mem[_3481] = cd[((160 * idx) + cd[36] + 36)]
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                mem[_3481 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                mem[_3481 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                mem[_3481 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                mem[_3481 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                    _3703 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 64
                                    _3717 = mem[_3703]
                                    require mem[_3703] == mem[_3703]
                                    require mem[_3703 + 32] == bool(mem[_3703 + 32])
                                    require idx < mem[96]
                                    _3872 = mem[(32 * idx) + 128]
                                    require idx < mem[96]
                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3703 + 32])
                                    mem[_3872] = _3717
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
                                        _3748 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _3768 = mem[_3748]
                                        require mem[_3748] == mem[_3748]
                                        require mem[_3748 + 32] == bool(mem[_3748 + 32])
                                        require idx < mem[96]
                                        _3983 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3748 + 32])
                                        mem[_3983] = _3768
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
                                        _3790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _3825 = mem[_3790]
                                        require mem[_3790] == mem[_3790]
                                        require mem[_3790 + 32] == bool(mem[_3790 + 32])
                                        require idx < mem[96]
                                        _4057 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3790 + 32])
                                        mem[_4057] = _3825
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
                                    _3482 = mem[64]
                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                    mem[64] = mem[64] + 160
                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                    mem[_3482] = cd[((160 * idx) + cd[36] + 36)]
                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                    mem[_3482 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                    mem[_3482 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                    mem[_3482 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                    mem[_3482 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                        _3707 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 64
                                        _3723 = mem[_3707]
                                        require mem[_3707] == mem[_3707]
                                        require mem[_3707 + 32] == bool(mem[_3707 + 32])
                                        require idx < mem[96]
                                        _3885 = mem[(32 * idx) + 128]
                                        require idx < mem[96]
                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3707 + 32])
                                        mem[_3885] = _3723
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
                                            _3755 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _3778 = mem[_3755]
                                            require mem[_3755] == mem[_3755]
                                            require mem[_3755 + 32] == bool(mem[_3755 + 32])
                                            require idx < mem[96]
                                            _4001 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3755 + 32])
                                            mem[_4001] = _3778
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
                                            _3802 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _3836 = mem[_3802]
                                            require mem[_3802] == mem[_3802]
                                            require mem[_3802 + 32] == bool(mem[_3802 + 32])
                                            require idx < mem[96]
                                            _4071 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3802 + 32])
                                            mem[_4071] = _3836
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
                                        _3483 = mem[64]
                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                        mem[64] = mem[64] + 160
                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                        mem[_3483] = cd[((160 * idx) + cd[36] + 36)]
                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                        mem[_3483 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                        mem[_3483 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                        mem[_3483 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                        mem[_3483 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                            _3712 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 64
                                            _3729 = mem[_3712]
                                            require mem[_3712] == mem[_3712]
                                            require mem[_3712 + 32] == bool(mem[_3712 + 32])
                                            require idx < mem[96]
                                            _3897 = mem[(32 * idx) + 128]
                                            require idx < mem[96]
                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3712 + 32])
                                            mem[_3897] = _3729
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
                                                _3763 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _3791 = mem[_3763]
                                                require mem[_3763] == mem[_3763]
                                                require mem[_3763 + 32] == bool(mem[_3763 + 32])
                                                require idx < mem[96]
                                                _4018 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3763 + 32])
                                                mem[_4018] = _3791
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
                                                _3813 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _3849 = mem[_3813]
                                                require mem[_3813] == mem[_3813]
                                                require mem[_3813 + 32] == bool(mem[_3813 + 32])
                                                require idx < mem[96]
                                                _4085 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3813 + 32])
                                                mem[_4085] = _3849
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
                                            _3484 = mem[64]
                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                            mem[64] = mem[64] + 160
                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                            mem[_3484] = cd[((160 * idx) + cd[36] + 36)]
                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                            mem[_3484 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                            mem[_3484 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                            mem[_3484 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                            mem[_3484 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                _3718 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 64
                                                _3735 = mem[_3718]
                                                require mem[_3718] == mem[_3718]
                                                require mem[_3718 + 32] == bool(mem[_3718 + 32])
                                                require idx < mem[96]
                                                _3908 = mem[(32 * idx) + 128]
                                                require idx < mem[96]
                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3718 + 32])
                                                mem[_3908] = _3735
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
                                                    _3771 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _3803 = mem[_3771]
                                                    require mem[_3771] == mem[_3771]
                                                    require mem[_3771 + 32] == bool(mem[_3771 + 32])
                                                    require idx < mem[96]
                                                    _4034 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3771 + 32])
                                                    mem[_4034] = _3803
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
                                                    _3826 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _3863 = mem[_3826]
                                                    require mem[_3826] == mem[_3826]
                                                    require mem[_3826 + 32] == bool(mem[_3826 + 32])
                                                    require idx < mem[96]
                                                    _4098 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3826 + 32])
                                                    mem[_4098] = _3863
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
                                                _3485 = mem[64]
                                                require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                mem[64] = mem[64] + 160
                                                require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                mem[_3485] = cd[((160 * idx) + cd[36] + 36)]
                                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                mem[_3485 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                mem[_3485 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                mem[_3485 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                mem[_3485 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                    _3724 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 64
                                                    _3742 = mem[_3724]
                                                    require mem[_3724] == mem[_3724]
                                                    require mem[_3724 + 32] == bool(mem[_3724 + 32])
                                                    require idx < mem[96]
                                                    _3922 = mem[(32 * idx) + 128]
                                                    require idx < mem[96]
                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3724 + 32])
                                                    mem[_3922] = _3742
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
                                                        _3781 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _3814 = mem[_3781]
                                                        require mem[_3781] == mem[_3781]
                                                        require mem[_3781 + 32] == bool(mem[_3781 + 32])
                                                        require idx < mem[96]
                                                        _4049 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3781 + 32])
                                                        mem[_4049] = _3814
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
                                                        _3837 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _3876 = mem[_3837]
                                                        require mem[_3837] == mem[_3837]
                                                        require mem[_3837 + 32] == bool(mem[_3837 + 32])
                                                        require idx < mem[96]
                                                        _4109 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3837 + 32])
                                                        mem[_4109] = _3876
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
                                                    _3486 = mem[64]
                                                    require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                    mem[64] = mem[64] + 160
                                                    require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                    mem[_3486] = cd[((160 * idx) + cd[36] + 36)]
                                                    require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                    mem[_3486 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                    require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                    mem[_3486 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                    require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                    mem[_3486 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                    require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                    mem[_3486 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                        _3730 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 64
                                                        _3750 = mem[_3730]
                                                        require mem[_3730] == mem[_3730]
                                                        require mem[_3730 + 32] == bool(mem[_3730 + 32])
                                                        require idx < mem[96]
                                                        _3938 = mem[(32 * idx) + 128]
                                                        require idx < mem[96]
                                                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3730 + 32])
                                                        mem[_3938] = _3750
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
                                                            _3794 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _3827 = mem[_3794]
                                                            require mem[_3794] == mem[_3794]
                                                            require mem[_3794 + 32] == bool(mem[_3794 + 32])
                                                            require idx < mem[96]
                                                            _4064 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3794 + 32])
                                                            mem[_4064] = _3827
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
                                                            _3850 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _3889 = mem[_3850]
                                                            require mem[_3850] == mem[_3850]
                                                            require mem[_3850 + 32] == bool(mem[_3850 + 32])
                                                            require idx < mem[96]
                                                            _4118 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3850 + 32])
                                                            mem[_4118] = _3889
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
                                                        _3487 = mem[64]
                                                        require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                        mem[64] = mem[64] + 160
                                                        require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                        mem[_3487] = cd[((160 * idx) + cd[36] + 36)]
                                                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                        mem[_3487 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                        require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                        mem[_3487 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                        require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                        mem[_3487 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                        require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                        mem[_3487 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                            _3736 = mem[64]
                                                            mem[64] = mem[64] + ceil32(return_data.size)
                                                            require return_data.size >= 64
                                                            _3757 = mem[_3736]
                                                            require mem[_3736] == mem[_3736]
                                                            require mem[_3736 + 32] == bool(mem[_3736 + 32])
                                                            require idx < mem[96]
                                                            _3956 = mem[(32 * idx) + 128]
                                                            require idx < mem[96]
                                                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3736 + 32])
                                                            mem[_3956] = _3757
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
                                                                _3806 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3838 = mem[_3806]
                                                                require mem[_3806] == mem[_3806]
                                                                require mem[_3806 + 32] == bool(mem[_3806 + 32])
                                                                require idx < mem[96]
                                                                _4078 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3806 + 32])
                                                                mem[_4078] = _3838
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
                                                                _3864 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3901 = mem[_3864]
                                                                require mem[_3864] == mem[_3864]
                                                                require mem[_3864 + 32] == bool(mem[_3864 + 32])
                                                                require idx < mem[96]
                                                                _4125 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3864 + 32])
                                                                mem[_4125] = _3901
                                                    else:
                                                        if uint16(cd[((160 * idx) + cd[36] + 100)]) != 31:
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _3461 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_3461] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_3461 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_3461 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_3461 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_3461 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                                _3684 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3686 = mem[_3684]
                                                                require mem[_3684] == mem[_3684]
                                                                require mem[_3684 + 32] == bool(mem[_3684 + 32])
                                                                require idx < mem[96]
                                                                _3773 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3684 + 32])
                                                                mem[_3773] = _3686
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
                                                                    _3701 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3714 = mem[_3701]
                                                                    require mem[_3701] == mem[_3701]
                                                                    require mem[_3701 + 32] == bool(mem[_3701 + 32])
                                                                    require idx < mem[96]
                                                                    _3865 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3701 + 32])
                                                                    mem[_3865] = _3714
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
                                                                    _3726 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3743 = mem[_3726]
                                                                    require mem[_3726] == mem[_3726]
                                                                    require mem[_3726 + 32] == bool(mem[_3726 + 32])
                                                                    require idx < mem[96]
                                                                    _3926 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3726 + 32])
                                                                    mem[_3926] = _3743
                                                        else:
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            require ext_code.size(address(cd[((160 * idx) + cd[36] + 36)]))
                                                            call address(cd[((160 * idx) + cd[36] + 36)]).sync() with:
                                                                 gas gas_remaining wei
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require idx < ('cd', 36).length
                                                            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
                                                            _3488 = mem[64]
                                                            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
                                                            mem[64] = mem[64] + 160
                                                            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
                                                            mem[_3488] = cd[((160 * idx) + cd[36] + 36)]
                                                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                                            mem[_3488 + 32] = cd[((160 * idx) + cd[36] + 68)]
                                                            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
                                                            mem[_3488 + 64] = cd[((160 * idx) + cd[36] + 100)]
                                                            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
                                                            mem[_3488 + 96] = cd[((160 * idx) + cd[36] + 132)]
                                                            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
                                                            mem[_3488 + 128] = cd[((160 * idx) + cd[36] + 164)]
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
                                                                _3744 = mem[64]
                                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                                require return_data.size >= 64
                                                                _3766 = mem[_3744]
                                                                require mem[_3744] == mem[_3744]
                                                                require mem[_3744 + 32] == bool(mem[_3744 + 32])
                                                                require idx < mem[96]
                                                                _3974 = mem[(32 * idx) + 128]
                                                                require idx < mem[96]
                                                                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3744 + 32])
                                                                mem[_3974] = _3766
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
                                                                    _3817 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3852 = mem[_3817]
                                                                    require mem[_3817] == mem[_3817]
                                                                    require mem[_3817 + 32] == bool(mem[_3817 + 32])
                                                                    require idx < mem[96]
                                                                    _4092 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3817 + 32])
                                                                    mem[_4092] = _3852
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
                                                                    _3879 = mem[64]
                                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                                    require return_data.size >= 64
                                                                    _3913 = mem[_3879]
                                                                    require mem[_3879] == mem[_3879]
                                                                    require mem[_3879 + 32] == bool(mem[_3879 + 32])
                                                                    require idx < mem[96]
                                                                    _4133 = mem[(32 * idx) + 128]
                                                                    require idx < mem[96]
                                                                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3879 + 32])
                                                                    mem[_4133] = _3913
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
            _4187 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _4188 = mem[_4187]
            require mem[_4187] == mem[_4187]
            require idx < mem[96]
            _4191 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-160 * idx) + -cd[36] - 36 >= 160
            _4192 = mem[64]
            require mem[64] + 160 <= test266151307() and mem[64] + 160 >= mem[64]
            mem[64] = mem[64] + 160
            require cd[((160 * idx) + cd[36] + 36)] == address(cd[((160 * idx) + cd[36] + 36)])
            mem[_4192] = cd[((160 * idx) + cd[36] + 36)]
            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
            mem[_4192 + 32] = cd[((160 * idx) + cd[36] + 68)]
            require cd[((160 * idx) + cd[36] + 100)] == uint16(cd[((160 * idx) + cd[36] + 100)])
            mem[_4192 + 64] = cd[((160 * idx) + cd[36] + 100)]
            require cd[((160 * idx) + cd[36] + 132)] == uint16(cd[((160 * idx) + cd[36] + 132)])
            mem[_4192 + 96] = cd[((160 * idx) + cd[36] + 132)]
            require cd[((160 * idx) + cd[36] + 164)] == uint16(cd[((160 * idx) + cd[36] + 164)])
            mem[_4192 + 128] = cd[((160 * idx) + cd[36] + 164)]
            if uint16(cd[((160 * idx) + cd[36] + 100)]):
                if uint16(cd[((160 * idx) + cd[36] + 100)]) == 4:
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
                        _4225 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_4225] == mem[_4225]
                        if idx >= ('cd', 36).length - 1:
                            require idx < mem[96]
                            require idx < ('cd', 36).length
                            require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                            idx = idx + 1
                            s = cd[((160 * idx) + cd[36] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        if idx < mem[96]:
                            if mem[mem[(32 * idx) + 128]] == mem[_4225] - _4188:
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
                                    return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4225] - _4188, mem[mem[(32 * idx) + 128]]
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
                            _4208 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4208] == mem[_4208]
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_4208] - _4188:
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
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4208] - _4188, mem[mem[(32 * idx) + 128]]
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
                            _4228 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_4228] == mem[_4228]
                            if idx >= ('cd', 36).length - 1:
                                require idx < mem[96]
                                require idx < ('cd', 36).length
                                require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                                idx = idx + 1
                                s = cd[((160 * idx) + cd[36] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            if idx < mem[96]:
                                if mem[mem[(32 * idx) + 128]] == mem[_4228] - _4188:
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
                                        return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4228] - _4188, mem[mem[(32 * idx) + 128]]
            else:
                mem[mem[64] + 36] = t
                mem[mem[64] + 68] = _4191
                mem[mem[64] + 100] = address(s)
                mem[mem[64] + 132] = address(cd[((160 * idx) + cd[36] + 68)])
                mem[mem[64] + 164] = address(cd[((160 * idx) + cd[36] + 36)])
                mem[mem[64] + 196] = 0
                mem[mem[64] + 228] = uint16(cd[((160 * idx) + cd[36] + 132)])
                require ext_code.size(0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130)
                delegate 0xd365f3fa21bc48dc2aec9eeb6062bd1bb0b43130.0xa58d574 with:
                     gas gas_remaining wei
                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, _4191, address(s), address(cd[((160 * idx) + cd[36] + 68)]), address(cd[((160 * idx) + cd[36] + 36)]), 0, uint16(cd[((160 * idx) + cd[36] + 132)])
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
                    _4250 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_4250] == mem[_4250]
                    if idx >= ('cd', 36).length - 1:
                        require idx < mem[96]
                        require idx < ('cd', 36).length
                        require cd[((160 * idx) + cd[36] + 68)] == address(cd[((160 * idx) + cd[36] + 68)])
                        idx = idx + 1
                        s = cd[((160 * idx) + cd[36] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    if idx < mem[96]:
                        if mem[mem[(32 * idx) + 128]] == mem[_4250] - _4188:
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
                                return 1, address(cd[((160 * idx) + cd[36] + 68)]), mem[_4250] - _4188, mem[mem[(32 * idx) + 128]]
            revert
    return 0
}



}
