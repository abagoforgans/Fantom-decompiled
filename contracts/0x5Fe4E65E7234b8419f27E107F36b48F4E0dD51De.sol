contract main {




// =====================  Runtime code  =====================


#
#  - approveToken(address arg1, address arg2, uint256 arg3)
#
mapping of uint8 stor0;
address adminAddress;

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_ed8d7eab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == adminAddress
    if ext_code.size(arg1):
        revert with 0, 'callable cannot be a contract'
    stor0[address(arg1)] = 1
    return 1
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

function sub_b4ec59bc(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == adminAddress
    if adminAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x2e43616e6e6f742072656d6f76652061646d696e20616464726573732066726f6d2063616c6c61626c65206164647265737365,
                    mem[215 len 13]
    if stor0[address(arg1)]:
        stor0[address(arg1)] = 0
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
        require msg.sender == adminAddress
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

function sub_98196e50(?) {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    require ('cd', 36).length <= test266151307()
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
            _156 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            mem[_156] = cd[((96 * idx) + cd[36] + 36)]
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            mem[_156 + 32] = cd[((96 * idx) + cd[36] + 68)]
            require cd[((96 * idx) + cd[36] + 100)] == uint16(cd[((96 * idx) + cd[36] + 100)])
            mem[_156 + 64] = cd[((96 * idx) + cd[36] + 100)]
            if 0 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = 9970
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                     gas gas_remaining wei
                    args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9970
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _182 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _195 = mem[_182]
                require mem[_182 + 32] == bool(mem[_182 + 32])
                require idx < mem[96]
                _240 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_182 + 32])
                mem[_240] = _195
            else:
                if 4 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _203 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _229 = mem[_203]
                    require mem[_203 + 32] == bool(mem[_203 + 32])
                    require idx < mem[96]
                    _279 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_203 + 32])
                    mem[_279] = _229
                else:
                    if 7 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = 9980
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                             gas gas_remaining wei
                            args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9980
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _194 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _213 = mem[_194]
                        require mem[_194 + 32] == bool(mem[_194 + 32])
                        require idx < mem[96]
                        _260 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_194 + 32])
                        mem[_260] = _213
                    else:
                        if 9 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = 9975
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                                 gas gas_remaining wei
                                args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9975
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _202 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _227 = mem[_202]
                            require mem[_202 + 32] == bool(mem[_202 + 32])
                            require idx < mem[96]
                            _275 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_202 + 32])
                            mem[_275] = _227
                        else:
                            require 12 == uint16(cd[((96 * idx) + cd[36] + 100)])
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                            mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                            require ext_code.size(0xbe50ca154da40853586fdcc222d275db724635af)
                            delegate 0xbe50ca154da40853586fdcc222d275db724635af.0xd93ec7e1 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _235 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _248 = mem[_235]
                            require mem[_235 + 32] == bool(mem[_235 + 32])
                            require idx < mem[96]
                            _307 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_235 + 32])
                            mem[_307] = _248
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _356 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
            _357 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            mem[_357] = cd[((96 * idx) + cd[36] + 36)]
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            mem[_357 + 32] = cd[((96 * idx) + cd[36] + 68)]
            require cd[((96 * idx) + cd[36] + 100)] == uint16(cd[((96 * idx) + cd[36] + 100)])
            mem[_357 + 64] = cd[((96 * idx) + cd[36] + 100)]
            if not uint16(cd[((96 * idx) + cd[36] + 100)]):
                mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t
                mem[mem[64] + 36] = _356
                mem[mem[64] + 68] = address(s)
                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                     gas gas_remaining wei
                    args t, _356, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 7 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                    mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = t
                    mem[mem[64] + 36] = _356
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                         gas gas_remaining wei
                        args t, _356, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 9 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                        mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = t
                        mem[mem[64] + 36] = _356
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                        mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                             gas gas_remaining wei
                            args t, _356, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                            mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 36)])
                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 12 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                                mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 36)])
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
    else:
        mem[64] = (32 * ('cd', 36).length) + 192
        mem[(32 * ('cd', 36).length) + 128] = 0
        mem[(32 * ('cd', 36).length) + 160] = 0
        mem[var18001] = (32 * ('cd', 36).length) + 128
        s = var18001
        idx = var18002
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
            require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
            _475 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            mem[_475] = cd[((96 * idx) + cd[36] + 36)]
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            mem[_475 + 32] = cd[((96 * idx) + cd[36] + 68)]
            require cd[((96 * idx) + cd[36] + 100)] == uint16(cd[((96 * idx) + cd[36] + 100)])
            mem[_475 + 64] = cd[((96 * idx) + cd[36] + 100)]
            if 0 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                mem[mem[64] + 100] = 9970
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                     gas gas_remaining wei
                    args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9970
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _508 = mem[_500]
                require mem[_500 + 32] == bool(mem[_500 + 32])
                require idx < mem[96]
                _536 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_500 + 32])
                mem[_536] = _508
            else:
                if 4 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _515 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _529 = mem[_515]
                    require mem[_515 + 32] == bool(mem[_515 + 32])
                    require idx < mem[96]
                    _564 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_515 + 32])
                    mem[_564] = _529
                else:
                    if 7 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[mem[64] + 100] = 9980
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                             gas gas_remaining wei
                            args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9980
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _507 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _520 = mem[_507]
                        require mem[_507 + 32] == bool(mem[_507 + 32])
                        require idx < mem[96]
                        _548 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_507 + 32])
                        mem[_548] = _520
                    else:
                        if 9 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[36] + 68)])
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[36] + 36)])
                            mem[mem[64] + 100] = 9975
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                                 gas gas_remaining wei
                                args t, address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)]), 9975
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _514 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _527 = mem[_514]
                            require mem[_514 + 32] == bool(mem[_514 + 32])
                            require idx < mem[96]
                            _560 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_514 + 32])
                            mem[_560] = _527
                        else:
                            require 12 == uint16(cd[((96 * idx) + cd[36] + 100)])
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                            mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                            require ext_code.size(0xbe50ca154da40853586fdcc222d275db724635af)
                            delegate 0xbe50ca154da40853586fdcc222d275db724635af.0xd93ec7e1 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _533 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _538 = mem[_533]
                            require mem[_533 + 32] == bool(mem[_533 + 32])
                            require idx < mem[96]
                            _584 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_533 + 32])
                            mem[_584] = _538
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 36).length:
            require idx < mem[96]
            _598 = mem[mem[(32 * idx) + 128]]
            require idx < ('cd', 36).length
            require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
            _599 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
            mem[_599] = cd[((96 * idx) + cd[36] + 36)]
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            mem[_599 + 32] = cd[((96 * idx) + cd[36] + 68)]
            require cd[((96 * idx) + cd[36] + 100)] == uint16(cd[((96 * idx) + cd[36] + 100)])
            mem[_599 + 64] = cd[((96 * idx) + cd[36] + 100)]
            if not uint16(cd[((96 * idx) + cd[36] + 100)]):
                mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = t
                mem[mem[64] + 36] = _598
                mem[mem[64] + 68] = address(s)
                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                     gas gas_remaining wei
                    args t, _598, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if 7 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                    mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = t
                    mem[mem[64] + 36] = _598
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                         gas gas_remaining wei
                        args t, _598, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if 9 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                        mem[mem[64]] = 0x589b898d00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = t
                        mem[mem[64] + 36] = _598
                        mem[mem[64] + 68] = address(s)
                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 68)])
                        mem[mem[64] + 132] = address(cd[((96 * idx) + cd[36] + 36)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x589b898d with:
                             gas gas_remaining wei
                            args t, _598, address(s), address(cd[((96 * idx) + cd[36] + 68)]), address(cd[((96 * idx) + cd[36] + 36)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if 4 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                            mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 36)])
                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x6e5d6f6b with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 36)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if 12 == uint16(cd[((96 * idx) + cd[36] + 100)]):
                                mem[mem[64]] = 0x6e5d6f6b00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = t
                                mem[mem[64] + 68] = address(s)
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[36] + 36)])
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x6e5d6f6b with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[36] + 36)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
            require idx < mem[96]
            require idx < ('cd', 36).length
            require cd[((96 * idx) + cd[36] + 68)] == address(cd[((96 * idx) + cd[36] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[36] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
}



}
