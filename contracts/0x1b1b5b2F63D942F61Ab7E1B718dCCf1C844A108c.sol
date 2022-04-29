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
    staticcall arg1.0x70a08231 with:
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

function sub_c5d40494(?) {
    require calldata.size - 4 >= 160
    require cd[68] == bool(cd[68])
    require cd[100] == uint8(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (96 * ('cd', 132).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = 0
    require stor0[msg.sender]
    require ('cd', 132).length - 1 < ('cd', 132).length
    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
    require address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]) == 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
    require ('cd', 132).length <= test266151307()
    mem[96] = ('cd', 132).length
    mem[64] = (32 * ('cd', 132).length) + 128
    if not ('cd', 132).length:
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 132).length:
            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
            _3040 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
            mem[_3040] = cd[((96 * idx) + cd[132] + 36)]
            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
            mem[_3040 + 32] = cd[((96 * idx) + cd[132] + 68)]
            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
            mem[_3040 + 64] = cd[((96 * idx) + cd[132] + 100)]
            if 0 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                mem[mem[64] + 100] = 9970
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                     gas gas_remaining wei
                    args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9970
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _3076 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _3091 = mem[_3076]
                require mem[_3076 + 32] == bool(mem[_3076 + 32])
                require idx < mem[96]
                _3135 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3076 + 32])
                mem[_3135] = _3091
            else:
                if 4 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[132] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _3095 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _3114 = mem[_3095]
                    require mem[_3095 + 32] == bool(mem[_3095 + 32])
                    require idx < mem[96]
                    _3159 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3095 + 32])
                    mem[_3159] = _3114
                else:
                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                        mem[mem[64] + 100] = 9980
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                             gas gas_remaining wei
                            args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9980
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _3090 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _3102 = mem[_3090]
                        require mem[_3090 + 32] == bool(mem[_3090 + 32])
                        require idx < mem[96]
                        _3148 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3090 + 32])
                        mem[_3148] = _3102
                    else:
                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                            mem[mem[64] + 100] = 9975
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                                 gas gas_remaining wei
                                args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9975
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3094 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3112 = mem[_3094]
                            require mem[_3094 + 32] == bool(mem[_3094 + 32])
                            require idx < mem[96]
                            _3155 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3094 + 32])
                            mem[_3155] = _3112
                        else:
                            require 12 == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 68)])
                            mem[mem[64] + 132] = address(cd[((96 * idx) + cd[132] + 36)])
                            require ext_code.size(0xbe50ca154da40853586fdcc222d275db724635af)
                            delegate 0xbe50ca154da40853586fdcc222d275db724635af.0xd93ec7e1 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _3118 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _3128 = mem[_3118]
                            require mem[_3118 + 32] == bool(mem[_3118 + 32])
                            require idx < mem[96]
                            _3182 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_3118 + 32])
                            mem[_3182] = _3128
            require idx < mem[96]
            require idx < ('cd', 132).length
            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[132] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        require ('cd', 132).length - 1 < mem[96]
        if mem[mem[(32 * ('cd', 132).length - 1) + 128]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _3046 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _3049 = mem[_3046]
            require 0 < mem[96]
            _3055 = mem[mem[128]]
            require 0 < ('cd', 132).length
            require calldata.size + -cd[132] - 36 >= 96
            _3067 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require ('cd', 132)[0] == address(('cd', 132)[0])
            mem[_3067] = ('cd', 132)[0]
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[_3067 + 32] = ('cd', 132)[1]
            require ('cd', 132)[2] == uint16(('cd', 132)[2])
            mem[_3067 + 64] = ('cd', 132)[2]
            require 1 < mem[96]
            if not mem[mem[160] + 32]:
                if not uint16(('cd', 132)[2]):
                    mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _3055
                    mem[mem[64] + 100] = address(('cd', 132)[1])
                    mem[mem[64] + 132] = address(('cd', 132)[0])
                    mem[mem[64] + 164] = this.address
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 132).length
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    idx = 1
                    s = ('cd', 132)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[96]
                        _6121 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 132).length
                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                        _6155 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                        mem[_6155] = cd[((96 * idx) + cd[132] + 36)]
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        mem[_6155 + 32] = cd[((96 * idx) + cd[132] + 68)]
                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                        mem[_6155 + 64] = cd[((96 * idx) + cd[132] + 100)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6121
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6121
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6121
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6121
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6121
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6121
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6121, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 132).length
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        idx = idx + 1
                        s = cd[((96 * idx) + cd[132] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 132).length - 1 < mem[96]
                    _6119 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                    require ('cd', 132).length - 1 < ('cd', 132).length
                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                    _6154 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                    mem[_6154] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                    mem[_6154 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                    mem[_6154 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                             gas gas_remaining wei
                            args _6119, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7174 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7174] > _3049
                    else:
                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _6119, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7214 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7214] > _3049
                        else:
                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6119, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7280] > _3049
                            else:
                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7453 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7453] > _3049
                                else:
                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7175 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7175] > _3049
                                    else:
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7470 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7470] > _3049
                else:
                    if 7 == uint16(('cd', 132)[2]):
                        mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _3055
                        mem[mem[64] + 100] = address(('cd', 132)[1])
                        mem[mem[64] + 132] = address(('cd', 132)[0])
                        mem[mem[64] + 164] = this.address
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 132).length
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        idx = 1
                        s = ('cd', 132)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 132).length - 1:
                            require idx < mem[96]
                            _6125 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 132).length
                            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                            _6157 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                            mem[_6157] = cd[((96 * idx) + cd[132] + 36)]
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            mem[_6157 + 32] = cd[((96 * idx) + cd[132] + 68)]
                            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[_6157 + 64] = cd[((96 * idx) + cd[132] + 100)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6125
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6125
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6125
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6125
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6125
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6125
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6125, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            idx = idx + 1
                            s = cd[((96 * idx) + cd[132] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 132).length - 1 < mem[96]
                        _6123 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                        require ('cd', 132).length - 1 < ('cd', 132).length
                        require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                        _6156 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        mem[_6156] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                        require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[_6156 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                        require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                        mem[_6156 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                        if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _6123, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7177 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7177] > _3049
                        else:
                            if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6123, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7217 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7217] > _3049
                            else:
                                if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6123, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7287 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7287] > _3049
                                else:
                                    if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7454 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7454] > _3049
                                    else:
                                        if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7178 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7178] > _3049
                                        else:
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7471 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7471] > _3049
                    else:
                        if uint16(('cd', 132)[2]) != 9:
                            if 4 == uint16(('cd', 132)[2]):
                                mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = address(('cd', 132)[0])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[96]
                                require 0 < ('cd', 132).length
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                idx = 1
                                s = ('cd', 132)[1]
                                t = mem[mem[128]]
                                while idx < ('cd', 132).length - 1:
                                    require idx < mem[96]
                                    _6129 = mem[mem[(32 * idx) + 128]]
                                    require idx < ('cd', 132).length
                                    require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                    _6159 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[_6159] = cd[((96 * idx) + cd[132] + 36)]
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[_6159 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                    require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                    mem[_6159 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                    require idx + 1 < mem[96]
                                    if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6129
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6129
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6129
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6129
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6129
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6129
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6129, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < mem[96]
                                    require idx < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    idx = idx + 1
                                    s = cd[((96 * idx) + cd[132] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                require ('cd', 132).length - 1 < mem[96]
                                _6127 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                require ('cd', 132).length - 1 < ('cd', 132).length
                                require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                _6158 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                mem[_6158] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[_6158 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                mem[_6158 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6127, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7180 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7180] > _3049
                                else:
                                    if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6127, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7220 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7220] > _3049
                                    else:
                                        if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6127, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7294 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7294] > _3049
                                        else:
                                            if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7455 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7455] > _3049
                                            else:
                                                if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7181 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7181] > _3049
                                                else:
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7472 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7472] > _3049
                            else:
                                if uint16(('cd', 132)[2]) != 12:
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _6133 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _6161 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_6161] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_6161 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_6161 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6133
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6133
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6133
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6133
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6133
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6133
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6133, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _6131 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _6160 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_6160] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_6160 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_6160 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6131, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7183 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7183] > _3049
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6131, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7223 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7223] > _3049
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _6131, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7301 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7301] > _3049
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7456 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7456] > _3049
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7184 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7184] > _3049
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7473 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7473] > _3049
                                else:
                                    mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = cd[4]
                                    mem[mem[64] + 68] = address(('cd', 132)[0])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _6137 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _6163 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_6163] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_6163 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_6163 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6137
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6137
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6137
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6137
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6137
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6137
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6137, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _6135 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _6162 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_6162] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_6162 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_6162 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6135, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7186 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7186] > _3049
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6135, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7226 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7226] > _3049
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _6135, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7308 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7308] > _3049
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7457 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7457] > _3049
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7187 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7187] > _3049
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7474 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7474] > _3049
                        else:
                            mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _3055
                            mem[mem[64] + 100] = address(('cd', 132)[1])
                            mem[mem[64] + 132] = address(('cd', 132)[0])
                            mem[mem[64] + 164] = this.address
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 132).length
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            idx = 1
                            s = ('cd', 132)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 132).length - 1:
                                require idx < mem[96]
                                _6141 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 132).length
                                require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                _6165 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                mem[_6165] = cd[((96 * idx) + cd[132] + 36)]
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                mem[_6165 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                mem[_6165 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6141
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6141
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6141
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6141
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6141
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6141
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6141, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                idx = idx + 1
                                s = cd[((96 * idx) + cd[132] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 132).length - 1 < mem[96]
                            _6139 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                            require ('cd', 132).length - 1 < ('cd', 132).length
                            require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                            _6164 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            mem[_6164] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                            require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[_6164 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                            require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                            mem[_6164 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                            if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6139, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7189 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7189] > _3049
                            else:
                                if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6139, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7229 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7229] > _3049
                                else:
                                    if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6139, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7315 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7315] > _3049
                                    else:
                                        if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7458 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7458] > _3049
                                        else:
                                            if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7190 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7190] > _3049
                                            else:
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7475 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7475] > _3049
            else:
                require 1 < ('cd', 132).length
                require ('cd', 132)[3] == address(('cd', 132)[3])
                if not uint16(('cd', 132)[2]):
                    mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _3055
                    mem[mem[64] + 100] = address(('cd', 132)[1])
                    mem[mem[64] + 132] = address(('cd', 132)[0])
                    mem[mem[64] + 164] = address(('cd', 132)[3])
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 132).length
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    idx = 1
                    s = ('cd', 132)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[96]
                        _6097 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 132).length
                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                        _6143 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                        mem[_6143] = cd[((96 * idx) + cd[132] + 36)]
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        mem[_6143 + 32] = cd[((96 * idx) + cd[132] + 68)]
                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                        mem[_6143 + 64] = cd[((96 * idx) + cd[132] + 100)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6097
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6097
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6097
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _6097
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6097
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6097
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6097, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 132).length
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        idx = idx + 1
                        s = cd[((96 * idx) + cd[132] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 132).length - 1 < mem[96]
                    _6095 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                    require ('cd', 132).length - 1 < ('cd', 132).length
                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                    _6142 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                    mem[_6142] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                    mem[_6142 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                    mem[_6142 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                             gas gas_remaining wei
                            args _6095, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _7156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_7156] > _3049
                    else:
                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _6095, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7196 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7196] > _3049
                        else:
                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6095, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7238 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7238] > _3049
                            else:
                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7447 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7447] > _3049
                                else:
                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7157 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7157] > _3049
                                    else:
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7464 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7464] > _3049
                else:
                    if 7 == uint16(('cd', 132)[2]):
                        mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _3055
                        mem[mem[64] + 100] = address(('cd', 132)[1])
                        mem[mem[64] + 132] = address(('cd', 132)[0])
                        mem[mem[64] + 164] = address(('cd', 132)[3])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 132).length
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        idx = 1
                        s = ('cd', 132)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 132).length - 1:
                            require idx < mem[96]
                            _6101 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 132).length
                            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                            _6145 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                            mem[_6145] = cd[((96 * idx) + cd[132] + 36)]
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            mem[_6145 + 32] = cd[((96 * idx) + cd[132] + 68)]
                            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[_6145 + 64] = cd[((96 * idx) + cd[132] + 100)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6101
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6101
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6101
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _6101
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6101
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6101
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6101, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            idx = idx + 1
                            s = cd[((96 * idx) + cd[132] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 132).length - 1 < mem[96]
                        _6099 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                        require ('cd', 132).length - 1 < ('cd', 132).length
                        require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                        _6144 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        mem[_6144] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                        require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[_6144 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                        require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                        mem[_6144 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                        if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _6099, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _7159 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_7159] > _3049
                        else:
                            if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6099, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7199 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7199] > _3049
                            else:
                                if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6099, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7245 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7245] > _3049
                                else:
                                    if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7448 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7448] > _3049
                                    else:
                                        if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7160 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7160] > _3049
                                        else:
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7465 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7465] > _3049
                    else:
                        if uint16(('cd', 132)[2]) != 9:
                            if 4 == uint16(('cd', 132)[2]):
                                mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = address(('cd', 132)[0])
                                mem[mem[64] + 100] = address(('cd', 132)[3])
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), address(('cd', 132)[3])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[96]
                                require 0 < ('cd', 132).length
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                idx = 1
                                s = ('cd', 132)[1]
                                t = mem[mem[128]]
                                while idx < ('cd', 132).length - 1:
                                    require idx < mem[96]
                                    _6105 = mem[mem[(32 * idx) + 128]]
                                    require idx < ('cd', 132).length
                                    require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                    _6147 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[_6147] = cd[((96 * idx) + cd[132] + 36)]
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[_6147 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                    require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                    mem[_6147 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                    require idx + 1 < mem[96]
                                    if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6105
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6105
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6105
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6105
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6105
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6105
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6105, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < mem[96]
                                    require idx < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    idx = idx + 1
                                    s = cd[((96 * idx) + cd[132] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                require ('cd', 132).length - 1 < mem[96]
                                _6103 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                require ('cd', 132).length - 1 < ('cd', 132).length
                                require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                _6146 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                mem[_6146] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[_6146 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                mem[_6146 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6103, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7162 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7162] > _3049
                                else:
                                    if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6103, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7202 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7202] > _3049
                                    else:
                                        if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6103, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7252 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7252] > _3049
                                        else:
                                            if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7449 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7449] > _3049
                                            else:
                                                if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7163 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7163] > _3049
                                                else:
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7466 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7466] > _3049
                            else:
                                if uint16(('cd', 132)[2]) != 12:
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _6109 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _6149 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_6149] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_6149 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_6149 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6109
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6109
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6109
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6109
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6109
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6109
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6109, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _6107 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _6148 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_6148] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_6148 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_6148 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6107, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7165 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7165] > _3049
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6107, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7205 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7205] > _3049
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _6107, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7259 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7259] > _3049
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7450 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7450] > _3049
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7166 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7166] > _3049
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7467 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7467] > _3049
                                else:
                                    mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = cd[4]
                                    mem[mem[64] + 68] = address(('cd', 132)[0])
                                    mem[mem[64] + 100] = address(('cd', 132)[3])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), address(('cd', 132)[3])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _6113 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _6151 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_6151] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_6151 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_6151 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6113
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6113
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6113
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6113
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _6113
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _6113
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _6113, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _6111 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _6150 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_6150] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_6150 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_6150 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6111, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7168 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7168] > _3049
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _6111, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7208 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7208] > _3049
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _6111, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7266 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7266] > _3049
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7451 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_7451] > _3049
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7169 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7169] > _3049
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _7468 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_7468] > _3049
                        else:
                            mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _3055
                            mem[mem[64] + 100] = address(('cd', 132)[1])
                            mem[mem[64] + 132] = address(('cd', 132)[0])
                            mem[mem[64] + 164] = address(('cd', 132)[3])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _3055, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 132).length
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            idx = 1
                            s = ('cd', 132)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 132).length - 1:
                                require idx < mem[96]
                                _6117 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 132).length
                                require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                _6153 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                mem[_6153] = cd[((96 * idx) + cd[132] + 36)]
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                mem[_6153 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                mem[_6153 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6117
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6117
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6117
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _6117
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _6117
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _6117
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _6117, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                idx = idx + 1
                                s = cd[((96 * idx) + cd[132] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 132).length - 1 < mem[96]
                            _6115 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                            require ('cd', 132).length - 1 < ('cd', 132).length
                            require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                            _6152 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            mem[_6152] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                            require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[_6152 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                            require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                            mem[_6152 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                            if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _6115, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _7171 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_7171] > _3049
                            else:
                                if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _6115, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7211 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_7211] > _3049
                                else:
                                    if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _6115, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7273 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_7273] > _3049
                                    else:
                                        if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7452 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_7452] > _3049
                                        else:
                                            if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7172 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7172] > _3049
                                            else:
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7469 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_7469] > _3049
    else:
        mem[64] = (32 * ('cd', 132).length) + 192
        mem[(32 * ('cd', 132).length) + 128] = 0
        mem[(32 * ('cd', 132).length) + 160] = 0
        mem[var33001] = (32 * ('cd', 132).length) + 128
        s = var33001
        idx = var33002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 132).length) + 128] = 0
            mem[(32 * ('cd', 132).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 132).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        s = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
        t = cd[4]
        while idx < ('cd', 132).length:
            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
            _8933 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
            mem[_8933] = cd[((96 * idx) + cd[132] + 36)]
            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
            mem[_8933 + 32] = cd[((96 * idx) + cd[132] + 68)]
            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
            mem[_8933 + 64] = cd[((96 * idx) + cd[132] + 100)]
            if 0 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                mem[mem[64] + 100] = 9970
                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                     gas gas_remaining wei
                    args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9970
                mem[mem[64] len 64] = delegate.return_data[0 len 64]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                _8961 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 64
                _8968 = mem[_8961]
                require mem[_8961 + 32] == bool(mem[_8961 + 32])
                require idx < mem[96]
                _8986 = mem[(32 * idx) + 128]
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = bool(mem[_8961 + 32])
                mem[_8986] = _8968
            else:
                if 4 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                    mem[mem[64] + 36] = t
                    mem[mem[64] + 68] = address(s)
                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 68)])
                    mem[mem[64] + 132] = address(cd[((96 * idx) + cd[132] + 36)])
                    mem[mem[64] + 164] = 9970
                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0x4c3f8388 with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9970
                    mem[mem[64] len 64] = delegate.return_data[0 len 64]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    _8971 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 64
                    _8977 = mem[_8971]
                    require mem[_8971 + 32] == bool(mem[_8971 + 32])
                    require idx < mem[96]
                    _9002 = mem[(32 * idx) + 128]
                    require idx < mem[96]
                    mem[mem[(32 * idx) + 128] + 32] = bool(mem[_8971 + 32])
                    mem[_9002] = _8977
                else:
                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                        mem[mem[64] + 100] = 9980
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                             gas gas_remaining wei
                            args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9980
                        mem[mem[64] len 64] = delegate.return_data[0 len 64]
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8967 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 64
                        _8973 = mem[_8967]
                        require mem[_8967 + 32] == bool(mem[_8967 + 32])
                        require idx < mem[96]
                        _8992 = mem[(32 * idx) + 128]
                        require idx < mem[96]
                        mem[mem[(32 * idx) + 128] + 32] = bool(mem[_8967 + 32])
                        mem[_8992] = _8973
                    else:
                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                            mem[mem[64] + 100] = 9975
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xac0f3cc0 with:
                                 gas gas_remaining wei
                                args t, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), 9975
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8970 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _8975 = mem[_8970]
                            require mem[_8970 + 32] == bool(mem[_8970 + 32])
                            require idx < mem[96]
                            _8998 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_8970 + 32])
                            mem[_8998] = _8975
                        else:
                            require 12 == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[mem[64] + 36] = t
                            mem[mem[64] + 68] = address(s)
                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 68)])
                            mem[mem[64] + 132] = address(cd[((96 * idx) + cd[132] + 36)])
                            require ext_code.size(0xbe50ca154da40853586fdcc222d275db724635af)
                            delegate 0xbe50ca154da40853586fdcc222d275db724635af.0xd93ec7e1 with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)])
                            mem[mem[64] len 64] = delegate.return_data[0 len 64]
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8979 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 64
                            _8981 = mem[_8979]
                            require mem[_8979 + 32] == bool(mem[_8979 + 32])
                            require idx < mem[96]
                            _9017 = mem[(32 * idx) + 128]
                            require idx < mem[96]
                            mem[mem[(32 * idx) + 128] + 32] = bool(mem[_8979 + 32])
                            mem[_9017] = _8981
            require idx < mem[96]
            require idx < ('cd', 132).length
            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
            idx = idx + 1
            s = cd[((96 * idx) + cd[132] + 68)]
            t = mem[mem[(32 * idx) + 128]]
            continue 
        require ('cd', 132).length - 1 < mem[96]
        if mem[mem[(32 * ('cd', 132).length - 1) + 128]] > cd[4] + cd[36]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _8936 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _8937 = mem[_8936]
            require 0 < mem[96]
            _8941 = mem[mem[128]]
            require 0 < ('cd', 132).length
            require calldata.size + -cd[132] - 36 >= 96
            _8952 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require ('cd', 132)[0] == address(('cd', 132)[0])
            mem[_8952] = ('cd', 132)[0]
            require ('cd', 132)[1] == address(('cd', 132)[1])
            mem[_8952 + 32] = ('cd', 132)[1]
            require ('cd', 132)[2] == uint16(('cd', 132)[2])
            mem[_8952 + 64] = ('cd', 132)[2]
            require 1 < mem[96]
            if not mem[mem[160] + 32]:
                if not uint16(('cd', 132)[2]):
                    mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _8941
                    mem[mem[64] + 100] = address(('cd', 132)[1])
                    mem[mem[64] + 132] = address(('cd', 132)[0])
                    mem[mem[64] + 164] = this.address
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 132).length
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    idx = 1
                    s = ('cd', 132)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[96]
                        _10497 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 132).length
                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                        _10531 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                        mem[_10531] = cd[((96 * idx) + cd[132] + 36)]
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        mem[_10531 + 32] = cd[((96 * idx) + cd[132] + 68)]
                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                        mem[_10531 + 64] = cd[((96 * idx) + cd[132] + 100)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _10497
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10497
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10497
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _10497
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10497
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10497
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10497, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 132).length
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        idx = idx + 1
                        s = cd[((96 * idx) + cd[132] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 132).length - 1 < mem[96]
                    _10495 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                    require ('cd', 132).length - 1 < ('cd', 132).length
                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                    _10530 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                    mem[_10530] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                    mem[_10530 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                    mem[_10530 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                             gas gas_remaining wei
                            args _10495, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11496 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11496] > _8937
                    else:
                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _10495, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11532 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11532] > _8937
                        else:
                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10495, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11595 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11595] > _8937
                            else:
                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11748 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11748] > _8937
                                else:
                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11497 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11497] > _8937
                                    else:
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11760 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11760] > _8937
                else:
                    if 7 == uint16(('cd', 132)[2]):
                        mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _8941
                        mem[mem[64] + 100] = address(('cd', 132)[1])
                        mem[mem[64] + 132] = address(('cd', 132)[0])
                        mem[mem[64] + 164] = this.address
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 132).length
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        idx = 1
                        s = ('cd', 132)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 132).length - 1:
                            require idx < mem[96]
                            _10501 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 132).length
                            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                            _10533 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                            mem[_10533] = cd[((96 * idx) + cd[132] + 36)]
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            mem[_10533 + 32] = cd[((96 * idx) + cd[132] + 68)]
                            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[_10533 + 64] = cd[((96 * idx) + cd[132] + 100)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10501
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10501
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10501
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10501
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10501
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10501
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10501, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            idx = idx + 1
                            s = cd[((96 * idx) + cd[132] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 132).length - 1 < mem[96]
                        _10499 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                        require ('cd', 132).length - 1 < ('cd', 132).length
                        require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                        _10532 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        mem[_10532] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                        require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[_10532 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                        require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                        mem[_10532 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                        if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _10499, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11499 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11499] > _8937
                        else:
                            if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10499, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11535 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11535] > _8937
                            else:
                                if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10499, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11602 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11602] > _8937
                                else:
                                    if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11749 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11749] > _8937
                                    else:
                                        if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11500 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11500] > _8937
                                        else:
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11761 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11761] > _8937
                    else:
                        if uint16(('cd', 132)[2]) != 9:
                            if 4 == uint16(('cd', 132)[2]):
                                mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = address(('cd', 132)[0])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[96]
                                require 0 < ('cd', 132).length
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                idx = 1
                                s = ('cd', 132)[1]
                                t = mem[mem[128]]
                                while idx < ('cd', 132).length - 1:
                                    require idx < mem[96]
                                    _10505 = mem[mem[(32 * idx) + 128]]
                                    require idx < ('cd', 132).length
                                    require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                    _10535 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[_10535] = cd[((96 * idx) + cd[132] + 36)]
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[_10535 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                    require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                    mem[_10535 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                    require idx + 1 < mem[96]
                                    if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10505
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10505
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10505
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10505
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10505
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10505
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10505, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < mem[96]
                                    require idx < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    idx = idx + 1
                                    s = cd[((96 * idx) + cd[132] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                require ('cd', 132).length - 1 < mem[96]
                                _10503 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                require ('cd', 132).length - 1 < ('cd', 132).length
                                require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                _10534 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                mem[_10534] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[_10534 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                mem[_10534 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10503, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11502 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11502] > _8937
                                else:
                                    if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10503, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11538 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11538] > _8937
                                    else:
                                        if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10503, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11609 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11609] > _8937
                                        else:
                                            if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11750 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11750] > _8937
                                            else:
                                                if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11503 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11503] > _8937
                                                else:
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11762 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11762] > _8937
                            else:
                                if uint16(('cd', 132)[2]) != 12:
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _10509 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _10537 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_10537] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_10537 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_10537 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10509
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10509
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10509
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10509
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10509
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10509
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10509, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _10507 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _10536 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_10536] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_10536 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_10536 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10507, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11505 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11505] > _8937
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10507, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11541 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11541] > _8937
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _10507, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11616 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11616] > _8937
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11751 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11751] > _8937
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11506 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11506] > _8937
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11763 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11763] > _8937
                                else:
                                    mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = cd[4]
                                    mem[mem[64] + 68] = address(('cd', 132)[0])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _10513 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _10539 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_10539] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_10539 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_10539 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10513
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10513
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10513
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10513
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10513
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10513
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10513, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _10511 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _10538 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_10538] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_10538 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_10538 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10511, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11508 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11508] > _8937
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10511, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11544 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11544] > _8937
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _10511, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11623 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11623] > _8937
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11752 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11752] > _8937
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11509 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11509] > _8937
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11764 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11764] > _8937
                        else:
                            mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _8941
                            mem[mem[64] + 100] = address(('cd', 132)[1])
                            mem[mem[64] + 132] = address(('cd', 132)[0])
                            mem[mem[64] + 164] = this.address
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), this.address
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 132).length
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            idx = 1
                            s = ('cd', 132)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 132).length - 1:
                                require idx < mem[96]
                                _10517 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 132).length
                                require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                _10541 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                mem[_10541] = cd[((96 * idx) + cd[132] + 36)]
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                mem[_10541 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                mem[_10541 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10517
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10517
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10517
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10517
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10517
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10517
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10517, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                idx = idx + 1
                                s = cd[((96 * idx) + cd[132] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 132).length - 1 < mem[96]
                            _10515 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                            require ('cd', 132).length - 1 < ('cd', 132).length
                            require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                            _10540 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            mem[_10540] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                            require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[_10540 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                            require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                            mem[_10540 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                            if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10515, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11511 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11511] > _8937
                            else:
                                if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10515, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11547 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11547] > _8937
                                else:
                                    if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10515, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11630 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11630] > _8937
                                    else:
                                        if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11753 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11753] > _8937
                                        else:
                                            if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11512 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11512] > _8937
                                            else:
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11765 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11765] > _8937
            else:
                require 1 < ('cd', 132).length
                require ('cd', 132)[3] == address(('cd', 132)[3])
                if not uint16(('cd', 132)[2]):
                    mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                    mem[mem[64] + 36] = cd[4]
                    mem[mem[64] + 68] = _8941
                    mem[mem[64] + 100] = address(('cd', 132)[1])
                    mem[mem[64] + 132] = address(('cd', 132)[0])
                    mem[mem[64] + 164] = address(('cd', 132)[3])
                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                         gas gas_remaining wei
                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    require 0 < mem[96]
                    require 0 < ('cd', 132).length
                    require ('cd', 132)[1] == address(('cd', 132)[1])
                    idx = 1
                    s = ('cd', 132)[1]
                    t = mem[mem[128]]
                    while idx < ('cd', 132).length - 1:
                        require idx < mem[96]
                        _10473 = mem[mem[(32 * idx) + 128]]
                        require idx < ('cd', 132).length
                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                        _10519 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                        mem[_10519] = cd[((96 * idx) + cd[132] + 36)]
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        mem[_10519 + 32] = cd[((96 * idx) + cd[132] + 68)]
                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                        mem[_10519 + 64] = cd[((96 * idx) + cd[132] + 100)]
                        require idx + 1 < mem[96]
                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _10473
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = this.address
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10473
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10473
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require idx + 1 < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _10473
                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                     gas gas_remaining wei
                                    args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10473
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10473
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10473, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                        require idx < mem[96]
                        require idx < ('cd', 132).length
                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                        idx = idx + 1
                        s = cd[((96 * idx) + cd[132] + 68)]
                        t = mem[mem[(32 * idx) + 128]]
                        continue 
                    require ('cd', 132).length - 1 < mem[96]
                    _10471 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                    require ('cd', 132).length - 1 < ('cd', 132).length
                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                    _10518 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                    mem[_10518] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                    mem[_10518 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                    mem[_10518 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                             gas gas_remaining wei
                            args _10471, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                gas gas_remaining wei
                               args address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _11478 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_11478] > _8937
                    else:
                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _10471, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11514 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11514] > _8937
                        else:
                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10471, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11553 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11553] > _8937
                            else:
                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = t
                                    mem[mem[64] + 68] = address(s)
                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11742 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11742] > _8937
                                else:
                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11479 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11479] > _8937
                                    else:
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11754 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11754] > _8937
                else:
                    if 7 == uint16(('cd', 132)[2]):
                        mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                        mem[mem[64] + 36] = cd[4]
                        mem[mem[64] + 68] = _8941
                        mem[mem[64] + 100] = address(('cd', 132)[1])
                        mem[mem[64] + 132] = address(('cd', 132)[0])
                        mem[mem[64] + 164] = address(('cd', 132)[3])
                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                             gas gas_remaining wei
                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                        if not delegate.return_code:
                            revert with ext_call.return_data[0 len return_data.size]
                        require 0 < mem[96]
                        require 0 < ('cd', 132).length
                        require ('cd', 132)[1] == address(('cd', 132)[1])
                        idx = 1
                        s = ('cd', 132)[1]
                        t = mem[mem[128]]
                        while idx < ('cd', 132).length - 1:
                            require idx < mem[96]
                            _10477 = mem[mem[(32 * idx) + 128]]
                            require idx < ('cd', 132).length
                            require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                            _10521 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                            mem[_10521] = cd[((96 * idx) + cd[132] + 36)]
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            mem[_10521 + 32] = cd[((96 * idx) + cd[132] + 68)]
                            require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                            mem[_10521 + 64] = cd[((96 * idx) + cd[132] + 100)]
                            require idx + 1 < mem[96]
                            if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10477
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = this.address
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10477
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10477
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require idx + 1 < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _10477
                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                         gas gas_remaining wei
                                        args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10477
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10477
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10477, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                            require idx < mem[96]
                            require idx < ('cd', 132).length
                            require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                            idx = idx + 1
                            s = cd[((96 * idx) + cd[132] + 68)]
                            t = mem[mem[(32 * idx) + 128]]
                            continue 
                        require ('cd', 132).length - 1 < mem[96]
                        _10475 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                        require ('cd', 132).length - 1 < ('cd', 132).length
                        require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                        _10520 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                        mem[_10520] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                        require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                        mem[_10520 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                        require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                        mem[_10520 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                        if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                 gas gas_remaining wei
                                args _10475, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11481 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_11481] > _8937
                        else:
                            if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10475, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11517 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11517] > _8937
                            else:
                                if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10475, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11560 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11560] > _8937
                                else:
                                    if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = t
                                        mem[mem[64] + 68] = address(s)
                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                             gas gas_remaining wei
                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11743 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11743] > _8937
                                    else:
                                        if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11482 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11482] > _8937
                                        else:
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11755 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11755] > _8937
                    else:
                        if uint16(('cd', 132)[2]) != 9:
                            if 4 == uint16(('cd', 132)[2]):
                                mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                mem[mem[64] + 36] = cd[4]
                                mem[mem[64] + 68] = address(('cd', 132)[0])
                                mem[mem[64] + 100] = address(('cd', 132)[3])
                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                     gas gas_remaining wei
                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), address(('cd', 132)[3])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require 0 < mem[96]
                                require 0 < ('cd', 132).length
                                require ('cd', 132)[1] == address(('cd', 132)[1])
                                idx = 1
                                s = ('cd', 132)[1]
                                t = mem[mem[128]]
                                while idx < ('cd', 132).length - 1:
                                    require idx < mem[96]
                                    _10481 = mem[mem[(32 * idx) + 128]]
                                    require idx < ('cd', 132).length
                                    require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                    _10523 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                    mem[_10523] = cd[((96 * idx) + cd[132] + 36)]
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    mem[_10523 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                    require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                    mem[_10523 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                    require idx + 1 < mem[96]
                                    if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10481
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10481
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10481
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        require idx + 1 < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                        if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10481
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10481
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10481
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10481, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                    require idx < mem[96]
                                    require idx < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                    idx = idx + 1
                                    s = cd[((96 * idx) + cd[132] + 68)]
                                    t = mem[mem[(32 * idx) + 128]]
                                    continue 
                                require ('cd', 132).length - 1 < mem[96]
                                _10479 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                require ('cd', 132).length - 1 < ('cd', 132).length
                                require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                _10522 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                mem[_10522] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[_10522 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                mem[_10522 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10479, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11484 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11484] > _8937
                                else:
                                    if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10479, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11520 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11520] > _8937
                                    else:
                                        if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10479, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11567 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11567] > _8937
                                        else:
                                            if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11744 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11744] > _8937
                                            else:
                                                if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11485 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11485] > _8937
                                                else:
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11756 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11756] > _8937
                            else:
                                if uint16(('cd', 132)[2]) != 12:
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _10485 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _10525 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_10525] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_10525 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_10525 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10485
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10485
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10485
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10485
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10485
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10485
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10485, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _10483 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _10524 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_10524] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_10524 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_10524 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10483, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11487 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11487] > _8937
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10483, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11523 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11523] > _8937
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _10483, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11574 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11574] > _8937
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11745 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11745] > _8937
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11488 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11488] > _8937
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11757 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11757] > _8937
                                else:
                                    mem[mem[64]] = 0xa851020d00000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                                    mem[mem[64] + 36] = cd[4]
                                    mem[mem[64] + 68] = address(('cd', 132)[0])
                                    mem[mem[64] + 100] = address(('cd', 132)[3])
                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xa851020d with:
                                         gas gas_remaining wei
                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], address(('cd', 132)[0]), address(('cd', 132)[3])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require 0 < mem[96]
                                    require 0 < ('cd', 132).length
                                    require ('cd', 132)[1] == address(('cd', 132)[1])
                                    idx = 1
                                    s = ('cd', 132)[1]
                                    t = mem[mem[128]]
                                    while idx < ('cd', 132).length - 1:
                                        require idx < mem[96]
                                        _10489 = mem[mem[(32 * idx) + 128]]
                                        require idx < ('cd', 132).length
                                        require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                        _10527 = mem[64]
                                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                        mem[64] = mem[64] + 96
                                        require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[_10527] = cd[((96 * idx) + cd[132] + 36)]
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[_10527 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                        require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                        mem[_10527 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                        require idx + 1 < mem[96]
                                        if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10489
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10489
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = this.address
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10489
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = this.address
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            require idx + 1 < ('cd', 132).length
                                            require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                            if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10489
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                            else:
                                                if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                    mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                    mem[mem[64] + 4] = _10489
                                                    mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                    mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                    mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                         gas gas_remaining wei
                                                        args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                else:
                                                    if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                        mem[mem[64] + 4] = _10489
                                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                             gas gas_remaining wei
                                                            args _10489, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                        require idx < mem[96]
                                        require idx < ('cd', 132).length
                                        require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                        idx = idx + 1
                                        s = cd[((96 * idx) + cd[132] + 68)]
                                        t = mem[mem[(32 * idx) + 128]]
                                        continue 
                                    require ('cd', 132).length - 1 < mem[96]
                                    _10487 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                                    require ('cd', 132).length - 1 < ('cd', 132).length
                                    require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                                    _10526 = mem[64]
                                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                    mem[64] = mem[64] + 96
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    mem[_10526] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[_10526 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                                    require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                                    mem[_10526 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                                    if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10487, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11490 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11490] > _8937
                                    else:
                                        if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                            mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                 gas gas_remaining wei
                                                args _10487, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11526 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11526] > _8937
                                        else:
                                            if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                                     gas gas_remaining wei
                                                    args _10487, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11581 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11581] > _8937
                                            else:
                                                if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                                    mem[mem[64] + 36] = t
                                                    mem[mem[64] + 68] = address(s)
                                                    mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                    delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                         gas gas_remaining wei
                                                        args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                    if not delegate.return_code:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    mem[mem[64] + 4] = this.address
                                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args address(this.address)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _11746 = mem[64]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    require mem[_11746] > _8937
                                                else:
                                                    if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11491 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11491] > _8937
                                                    else:
                                                        mem[mem[64] + 36] = t
                                                        mem[mem[64] + 68] = address(s)
                                                        mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                        delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                             gas gas_remaining wei
                                                            args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                        if not delegate.return_code:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        mem[mem[64] + 4] = this.address
                                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                                gas gas_remaining wei
                                                               args address(this.address)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        _11758 = mem[64]
                                                        mem[64] = mem[64] + ceil32(return_data.size)
                                                        require return_data.size >= 32
                                                        require mem[_11758] > _8937
                        else:
                            mem[mem[64]] = 0xea0f0bfd00000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83
                            mem[mem[64] + 36] = cd[4]
                            mem[mem[64] + 68] = _8941
                            mem[mem[64] + 100] = address(('cd', 132)[1])
                            mem[mem[64] + 132] = address(('cd', 132)[0])
                            mem[mem[64] + 164] = address(('cd', 132)[3])
                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0xea0f0bfd with:
                                 gas gas_remaining wei
                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, cd[4], _8941, address(('cd', 132)[1]), address(('cd', 132)[0]), address(('cd', 132)[3])
                            if not delegate.return_code:
                                revert with ext_call.return_data[0 len return_data.size]
                            require 0 < mem[96]
                            require 0 < ('cd', 132).length
                            require ('cd', 132)[1] == address(('cd', 132)[1])
                            idx = 1
                            s = ('cd', 132)[1]
                            t = mem[mem[128]]
                            while idx < ('cd', 132).length - 1:
                                require idx < mem[96]
                                _10493 = mem[mem[(32 * idx) + 128]]
                                require idx < ('cd', 132).length
                                require calldata.size + (-96 * idx) + -cd[132] - 36 >= 96
                                _10529 = mem[64]
                                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                                mem[64] = mem[64] + 96
                                require cd[((96 * idx) + cd[132] + 36)] == address(cd[((96 * idx) + cd[132] + 36)])
                                mem[_10529] = cd[((96 * idx) + cd[132] + 36)]
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                mem[_10529 + 32] = cd[((96 * idx) + cd[132] + 68)]
                                require cd[((96 * idx) + cd[132] + 100)] == uint16(cd[((96 * idx) + cd[132] + 100)])
                                mem[_10529 + 64] = cd[((96 * idx) + cd[132] + 100)]
                                require idx + 1 < mem[96]
                                if not mem[mem[(32 * idx + 1) + 128] + 32]:
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10493
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = this.address
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10493
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = this.address
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10493
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = this.address
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), this.address
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    require idx + 1 < ('cd', 132).length
                                    require cd[((96 * idx) + cd[132] + 132)] == address(cd[((96 * idx) + cd[132] + 132)])
                                    if not uint16(cd[((96 * idx) + cd[132] + 100)]):
                                        mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = _10493
                                        mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                        mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                        mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                             gas gas_remaining wei
                                            args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        if 7 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                            mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = _10493
                                            mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                            mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                            mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                            require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                            delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                 gas gas_remaining wei
                                                args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            if 9 == uint16(cd[((96 * idx) + cd[132] + 100)]):
                                                mem[mem[64]] = 0x30faf45200000000000000000000000000000000000000000000000000000000
                                                mem[mem[64] + 4] = _10493
                                                mem[mem[64] + 36] = address(cd[((96 * idx) + cd[132] + 68)])
                                                mem[mem[64] + 68] = address(cd[((96 * idx) + cd[132] + 36)])
                                                mem[mem[64] + 100] = address(cd[((96 * idx) + cd[132] + 132)])
                                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x30faf452 with:
                                                     gas gas_remaining wei
                                                    args _10493, address(cd[((96 * idx) + cd[132] + 68)]), address(cd[((96 * idx) + cd[132] + 36)]), address(cd[((96 * idx) + cd[132] + 132)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                require idx < mem[96]
                                require idx < ('cd', 132).length
                                require cd[((96 * idx) + cd[132] + 68)] == address(cd[((96 * idx) + cd[132] + 68)])
                                idx = idx + 1
                                s = cd[((96 * idx) + cd[132] + 68)]
                                t = mem[mem[(32 * idx) + 128]]
                                continue 
                            require ('cd', 132).length - 1 < mem[96]
                            _10491 = mem[mem[(32 * ('cd', 132).length - 1) + 128]]
                            require ('cd', 132).length - 1 < ('cd', 132).length
                            require calldata.size + (-96 * ('cd', 132).length) + -cd[132] + 60 >= 96
                            _10528 = mem[64]
                            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                            mem[64] = mem[64] + 96
                            require cd[((96 * ('cd', 132).length) + cd[132] - 60)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                            mem[_10528] = cd[((96 * ('cd', 132).length) + cd[132] - 60)]
                            require cd[((96 * ('cd', 132).length) + cd[132] - 28)] == address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                            mem[_10528 + 32] = cd[((96 * ('cd', 132).length) + cd[132] - 28)]
                            require cd[((96 * ('cd', 132).length) + cd[132] + 4)] == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)])
                            mem[_10528 + 64] = cd[((96 * ('cd', 132).length) + cd[132] + 4)]
                            if not uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                     gas gas_remaining wei
                                    args _10491, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                if not delegate.return_code:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                        gas gas_remaining wei
                                       args address(this.address)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11493 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_11493] > _8937
                            else:
                                if 7 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                    mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                    mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                    delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                         gas gas_remaining wei
                                        args _10491, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                    if not delegate.return_code:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                    staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                            gas gas_remaining wei
                                           args address(this.address)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _11529 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_11529] > _8937
                                else:
                                    if 9 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                        mem[mem[64] + 36] = address(cd[((96 * ('cd', 132).length) + cd[132] - 28)])
                                        mem[mem[64] + 68] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        require ext_code.size(0xb16714c28d8e48379d12535842cfc91c85e34b0d)
                                        delegate 0xb16714c28d8e48379d12535842cfc91c85e34b0d.0x288977df with:
                                             gas gas_remaining wei
                                            args _10491, address(cd[((96 * ('cd', 132).length) + cd[132] - 28)]), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                        if not delegate.return_code:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                        staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                gas gas_remaining wei
                                               args address(this.address)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _11588 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_11588] > _8937
                                    else:
                                        if 4 == uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]):
                                            mem[mem[64] + 36] = t
                                            mem[mem[64] + 68] = address(s)
                                            mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                            delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                 gas gas_remaining wei
                                                args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                            if not delegate.return_code:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                            staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args address(this.address)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11747 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11747] > _8937
                                        else:
                                            if uint16(cd[((96 * ('cd', 132).length) + cd[132] + 4)]) != 12:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11494 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11494] > _8937
                                            else:
                                                mem[mem[64] + 36] = t
                                                mem[mem[64] + 68] = address(s)
                                                mem[mem[64] + 100] = address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                require ext_code.size(0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5)
                                                delegate 0x499d9464edb94ce7a644ad2b2f66f50f95d7d4c5.0xddde0bf6 with:
                                                     gas gas_remaining wei
                                                    args 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83, t, address(s), address(cd[((96 * ('cd', 132).length) + cd[132] - 60)])
                                                if not delegate.return_code:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83)
                                                staticcall 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args address(this.address)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11759 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11759] > _8937
}



}
