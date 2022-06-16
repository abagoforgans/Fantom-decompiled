contract main {




// =====================  Runtime code  =====================


address owner;
address sub_dacaa9d1Address;
address goldAddress;

function owner() payable {
    return owner
}

function sub_dacaa9d1(?) payable {
    return sub_dacaa9d1Address
}

function gold() payable {
    return goldAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0520b708(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    goldAddress = address(arg1)
}

function sub_f471c7a7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dacaa9d1Address = address(arg1)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_c931e1f6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if Mask(256, -2, arg1.length):
        mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        if idx >= Mask(254, 0, arg1.length) * 0.25:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = mem[(4 * idx) + 128 len 4]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=4 * Mask(256, -2, arg1.length), data=mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)]), 
}

function sub_7b6d9c87(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + 97] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
        if not Mask(256, -2, arg1.length):
            if Mask(254, 0, arg1.length) * 0.25 > test266151307():
                revert with 0, 65
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
            mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
            if not Mask(256, -2, arg1.length):
                idx = 0
                while idx < Mask(254, 0, arg1.length) * 0.25:
                    _194 = mem[(4 * idx) + 100]
                    require ext_code.size(sub_dacaa9d1Address)
                    staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                            gas gas_remaining wei
                           args (mem[(4 * idx) + 100] << 224)
                    mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _227 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 128
                    _243 = mem[_227]
                    _244 = mem[_227 + 32]
                    mem[mem[64] + 4] = uint32(_194)
                    require ext_code.size(goldAddress)
                    staticcall goldAddress.balanceOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args (_194 << 224)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _306 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _322 = mem[_306]
                    if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _243
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _244
                    if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _322
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _210 = mem[64]
                mem[mem[64]] = 96
                _226 = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
                mem[mem[64] + 128 len 32 * _226] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _226]
                mem[mem[64] + 32] = (32 * _226) + 128
                _386 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_210 + (32 * _226) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
                mem[_210 + (32 * _226) + 160 len 32 * _386] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _386]
                mem[_210 + 64] = (32 * _226) + (32 * _386) + 160
                _434 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_210 + (32 * _226) + (32 * _386) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
                mem[_210 + (32 * _226) + (32 * _386) + 192 len 32 * _434] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _434]
                return memory
                  from mem[64]
                   len _210 + (32 * _226) + (32 * _386) + (32 * _434) + -mem[64] + 192
            mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _196 = mem[(4 * idx) + 100]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _229 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _248 = mem[_229]
                _249 = mem[_229 + 32]
                mem[mem[64] + 4] = uint32(_196)
                require ext_code.size(goldAddress)
                staticcall goldAddress.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_196 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _307 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _323 = mem[_307]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _248
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _249
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _323
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _212 = mem[64]
            mem[mem[64]] = 96
            _228 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _228] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _228]
            mem[_212 + 32] = (32 * _228) + 128
            _387 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_212 + (32 * _228) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_212 + (32 * _228) + 160 len 32 * _387] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _387]
            mem[_212 + 64] = (32 * _228) + (32 * _387) + 160
            _435 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_212 + (32 * _228) + (32 * _387) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_212 + (32 * _228) + (32 * _387) + 192 len 32 * _435] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _435]
            return memory
              from mem[64]
               len _212 + (32 * _228) + (32 * _387) + (32 * _435) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _198 = mem[(4 * idx) + 100]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _231 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _253 = mem[_231]
                _254 = mem[_231 + 32]
                mem[mem[64] + 4] = uint32(_198)
                require ext_code.size(goldAddress)
                staticcall goldAddress.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_198 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _308 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _324 = mem[_308]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _253
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _254
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _324
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _214 = mem[64]
            mem[mem[64]] = 96
            _230 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _230] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _230]
            mem[mem[64] + 32] = (32 * _230) + 128
            _388 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_214 + (32 * _230) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_214 + (32 * _230) + 160 len 32 * _388] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _388]
            mem[_214 + 64] = (32 * _230) + (32 * _388) + 160
            _436 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_214 + (32 * _230) + (32 * _388) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_214 + (32 * _230) + (32 * _388) + 192 len 32 * _436] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _436]
            return memory
              from mem[64]
               len _214 + (32 * _230) + (32 * _388) + (32 * _436) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _200 = mem[(4 * idx) + 100]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _258 = mem[_233]
            _259 = mem[_233 + 32]
            mem[mem[64] + 4] = uint32(_200)
            require ext_code.size(goldAddress)
            staticcall goldAddress.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_200 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _309 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _325 = mem[_309]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _258
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _259
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _325
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _216 = mem[64]
        mem[mem[64]] = 96
        _232 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _232] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _232]
        mem[_216 + 32] = (32 * _232) + 128
        _389 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_216 + (32 * _232) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_216 + (32 * _232) + 160 len 32 * _389] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _389]
        mem[_216 + 64] = (32 * _232) + (32 * _389) + 160
        _437 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_216 + (32 * _232) + (32 * _389) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_216 + (32 * _232) + (32 * _389) + 192 len 32 * _437] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _437]
        return memory
          from mem[64]
           len _216 + (32 * _232) + (32 * _389) + (32 * _437) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + 129 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129] = Mask(254, 0, arg1.length) * 0.25
    if not Mask(256, -2, arg1.length):
        if Mask(254, 0, arg1.length) * 0.25 > test266151307():
            revert with 0, 65
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
        mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
        if not Mask(256, -2, arg1.length):
            idx = 0
            while idx < Mask(254, 0, arg1.length) * 0.25:
                _202 = mem[(4 * idx) + 100]
                require ext_code.size(sub_dacaa9d1Address)
                staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                        gas gas_remaining wei
                       args (mem[(4 * idx) + 100] << 224)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _263 = mem[_235]
                _264 = mem[_235 + 32]
                mem[mem[64] + 4] = uint32(_202)
                require ext_code.size(goldAddress)
                staticcall goldAddress.balanceOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args (_202 << 224)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _310 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _326 = mem[_310]
                if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _263
                if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _264
                if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _326
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _218 = mem[64]
            mem[mem[64]] = 96
            _234 = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
            mem[mem[64] + 128 len 32 * _234] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _234]
            mem[mem[64] + 32] = (32 * _234) + 128
            _390 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_218 + (32 * _234) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
            mem[_218 + (32 * _234) + 160 len 32 * _390] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _390]
            mem[_218 + 64] = (32 * _234) + (32 * _390) + 160
            _438 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_218 + (32 * _234) + (32 * _390) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
            mem[_218 + (32 * _234) + (32 * _390) + 192 len 32 * _438] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _438]
            return memory
              from mem[64]
               len _218 + (32 * _234) + (32 * _390) + (32 * _438) + -mem[64] + 192
        mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _204 = mem[(4 * idx) + 100]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _237 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _268 = mem[_237]
            _269 = mem[_237 + 32]
            mem[mem[64] + 4] = uint32(_204)
            require ext_code.size(goldAddress)
            staticcall goldAddress.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_204 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _311 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _327 = mem[_311]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _268
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _269
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _327
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _220 = mem[64]
        mem[mem[64]] = 96
        _236 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _236] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _236]
        mem[_220 + 32] = (32 * _236) + 128
        _391 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_220 + (32 * _236) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_220 + (32 * _236) + 160 len 32 * _391] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _391]
        mem[_220 + 64] = (32 * _236) + (32 * _391) + 160
        _439 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_220 + (32 * _236) + (32 * _391) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_220 + (32 * _236) + (32 * _391) + 192 len 32 * _439] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _439]
        return memory
          from mem[64]
           len _220 + (32 * _236) + (32 * _391) + (32 * _439) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    if Mask(254, 0, arg1.length) * 0.25 > test266151307():
        revert with 0, 65
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161] = Mask(254, 0, arg1.length) * 0.25
    mem[64] = ceil32(ceil32(arg1.length)) + (26 * Mask(254, 2, arg1.length)) + 193
    if not Mask(256, -2, arg1.length):
        idx = 0
        while idx < Mask(254, 0, arg1.length) * 0.25:
            _206 = mem[(4 * idx) + 100]
            require ext_code.size(sub_dacaa9d1Address)
            staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                    gas gas_remaining wei
                   args (mem[(4 * idx) + 100] << 224)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _239 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _273 = mem[_239]
            _274 = mem[_239 + 32]
            mem[mem[64] + 4] = uint32(_206)
            require ext_code.size(goldAddress)
            staticcall goldAddress.balanceOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args (_206 << 224)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _312 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _328 = mem[_312]
            if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _273
            if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _274
            if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
                revert with 0, 50
            mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _328
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _222 = mem[64]
        mem[mem[64]] = 96
        _238 = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
        mem[mem[64] + 128 len 32 * _238] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _238]
        mem[_222 + 32] = (32 * _238) + 128
        _392 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_222 + (32 * _238) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
        mem[_222 + (32 * _238) + 160 len 32 * _392] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _392]
        mem[_222 + 64] = (32 * _238) + (32 * _392) + 160
        _440 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_222 + (32 * _238) + (32 * _392) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
        mem[_222 + (32 * _238) + (32 * _392) + 192 len 32 * _440] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _440]
        return memory
          from mem[64]
           len _222 + (32 * _238) + (32 * _392) + (32 * _440) + -mem[64] + 192
    mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 8 * Mask(251, 2, arg1.length)] = call.data[calldata.size len 8 * Mask(251, 2, arg1.length)]
    idx = 0
    while idx < Mask(254, 0, arg1.length) * 0.25:
        _208 = mem[(4 * idx) + 100]
        require ext_code.size(sub_dacaa9d1Address)
        staticcall sub_dacaa9d1Address.summoner(uint256 arg1) with:
                gas gas_remaining wei
               args (mem[(4 * idx) + 100] << 224)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _278 = mem[_241]
        _279 = mem[_241 + 32]
        mem[mem[64] + 4] = uint32(_208)
        require ext_code.size(goldAddress)
        staticcall goldAddress.balanceOf(uint256 arg1) with:
                gas gas_remaining wei
               args (_208 << 224)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _313 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _329 = mem[_313]
        if idx >= mem[ceil32(ceil32(arg1.length)) + 97]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + 129] = _278
        if idx >= mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161] = _279
        if idx >= mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193] = _329
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _224 = mem[64]
    mem[mem[64]] = 96
    _240 = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 96] = mem[ceil32(ceil32(arg1.length)) + 97]
    mem[mem[64] + 128 len 32 * _240] = mem[ceil32(ceil32(arg1.length)) + 129 len 32 * _240]
    mem[_224 + 32] = (32 * _240) + 128
    _393 = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_224 + (32 * _240) + 128] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 129]
    mem[_224 + (32 * _240) + 160 len 32 * _393] = mem[ceil32(ceil32(arg1.length)) + (8 * Mask(251, 2, arg1.length)) + 161 len 32 * _393]
    mem[_224 + 64] = (32 * _240) + (32 * _393) + 160
    _441 = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_224 + (32 * _240) + (32 * _393) + 160] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 161]
    mem[_224 + (32 * _240) + (32 * _393) + 192 len 32 * _441] = mem[ceil32(ceil32(arg1.length)) + (16 * Mask(250, 2, arg1.length)) + 193 len 32 * _441]
    return memory
      from mem[64]
       len _224 + (32 * _240) + (32 * _393) + (32 * _441) + -mem[64] + 192
}



}
