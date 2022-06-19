contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of struct priceFeed;

function priceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return priceFeed[arg1].field_0, priceFeed[arg1].field_0, priceFeed[arg1].field_168
}

function owner() payable {
    return owner
}

function isStable(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
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

function sub_bd3fe623(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1[address(arg1)] = uint8(bool(arg2))
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

function create(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    staticcall arg2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[128] = ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[160] = ext_call.return_data[31 len 1]
    priceFeed[address(arg2)].field_0 = arg1
    priceFeed[address(arg2)].field_160 = mem[159 len 1]
    priceFeed[address(arg2)].field_168 = mem[191 len 1]
}

function getPrice(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(arg1)]:
        require ext_code.size(arg2)
        staticcall arg2.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(priceFeed[address(arg1)].field_0)
        staticcall priceFeed[address(arg1)].field_0.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if arg2 > arg1:
            if not priceFeed[address(arg1)].field_160:
                if not uint8(ext_call.return_data[0]):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32], ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168, ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t * 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] * s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                return 10^18 * ext_call.return_data[32] / u * v * s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg1)].field_160 < 78)) or bool(bool(priceFeed[address(arg1)].field_160 < 32)):
                if not uint8(ext_call.return_data[0]):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 / 10^priceFeed[address(arg1)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t / 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
                if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg1)].field_160, 
                               ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg1)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg1)].field_160, 
                           ext_call.return_data[96]
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * s * t / 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * s * t / 10^priceFeed[address(arg1)].field_160, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not 10^priceFeed[address(arg1)].field_160:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * s * t / 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
            s = 10
            t = 1
            idx = priceFeed[address(arg1)].field_160
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 / s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 1 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v / s * t, ext_call.return_data[96]
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^uint8(ext_call.return_data[0]) / s * t, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * 10^uint8(ext_call.return_data[0]) / s * t, ext_call.return_data[96]
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not priceFeed[address(arg1)].field_168:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] and u * v > -1 / 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] * u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^priceFeed[address(arg1)].field_168:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and u * v > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * u * v / s * t, ext_call.return_data[96]
            w = 10
            x = 1
            idx = priceFeed[address(arg1)].field_168
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
        else:
            if not uint8(ext_call.return_data[0]):
                if not priceFeed[address(arg1)].field_160:
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32], ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168, ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_160 < 78)) or bool(bool(priceFeed[address(arg1)].field_160 < 32)):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^priceFeed[address(arg1)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t * 10^priceFeed[address(arg1)].field_160, ext_call.return_data[96]
                s = 10
                t = 1
                idx = priceFeed[address(arg1)].field_160
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] * s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                return 10^18 * ext_call.return_data[32] / u * v * s * t, ext_call.return_data[96]
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if not priceFeed[address(arg1)].field_160:
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_160 < 78)) or bool(bool(priceFeed[address(arg1)].field_160 < 32)):
                    if not priceFeed[address(arg1)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg1)].field_160 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^priceFeed[address(arg1)].field_160 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg1)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t * 10^priceFeed[address(arg1)].field_160 / 10^uint8(ext_call.return_data[0]), 
                           ext_call.return_data[96]
                s = 10
                t = 1
                idx = priceFeed[address(arg1)].field_160
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * s * t / 10^uint8(ext_call.return_data[0]), 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not priceFeed[address(arg1)].field_160:
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 / s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 1 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg1)].field_160 < 78)) or bool(bool(priceFeed[address(arg1)].field_160 < 32)):
                if not priceFeed[address(arg1)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg1)].field_160 / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * 10^priceFeed[address(arg1)].field_160 / s * t, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg1)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 10^priceFeed[address(arg1)].field_160 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * 10^priceFeed[address(arg1)].field_160 / s * t, ext_call.return_data[96]
            u = 10
            v = 1
            idx = priceFeed[address(arg1)].field_160
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not priceFeed[address(arg1)].field_168:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] and u * v > -1 / 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] * u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg1)].field_168 < 78)) or bool(bool(priceFeed[address(arg1)].field_168 < 32)):
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^priceFeed[address(arg1)].field_168:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 and u * v > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg1)].field_168 * u * v / s * t, ext_call.return_data[96]
            w = 10
            x = 1
            idx = priceFeed[address(arg1)].field_168
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
    else:
        require ext_code.size(arg1)
        staticcall arg1.decimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ext_code.size(priceFeed[address(arg2)].field_0)
        staticcall priceFeed[address(arg2)].field_0.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if arg1 > arg2:
            if not priceFeed[address(arg2)].field_160:
                if not uint8(ext_call.return_data[0]):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32], ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168, ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t * 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] * s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                return 10^18 * ext_call.return_data[32] / u * v * s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg2)].field_160 < 78)) or bool(bool(priceFeed[address(arg2)].field_160 < 32)):
                if not uint8(ext_call.return_data[0]):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 / 10^priceFeed[address(arg2)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t / 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
                if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg2)].field_160, 
                               ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_160:
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg2)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t * 10^uint8(ext_call.return_data[0]) / 10^priceFeed[address(arg2)].field_160, 
                           ext_call.return_data[96]
                s = 10
                t = 1
                idx = uint8(ext_call.return_data[0])
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * s * t / 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_160:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * s * t / 10^priceFeed[address(arg2)].field_160, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not 10^priceFeed[address(arg2)].field_160:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * s * t / 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
            s = 10
            t = 1
            idx = priceFeed[address(arg2)].field_160
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not uint8(ext_call.return_data[0]):
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 / s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 1 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v / s * t, ext_call.return_data[96]
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * 10^uint8(ext_call.return_data[0]) / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^uint8(ext_call.return_data[0]) / s * t, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 10^uint8(ext_call.return_data[0]) > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * 10^uint8(ext_call.return_data[0]) / s * t, ext_call.return_data[96]
            u = 10
            v = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not priceFeed[address(arg2)].field_168:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] and u * v > -1 / 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] * u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^priceFeed[address(arg2)].field_168:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and u * v > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * u * v / s * t, ext_call.return_data[96]
            w = 10
            x = 1
            idx = priceFeed[address(arg2)].field_168
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
        else:
            if not uint8(ext_call.return_data[0]):
                if not priceFeed[address(arg2)].field_160:
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32], ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168, ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_160 < 78)) or bool(bool(priceFeed[address(arg2)].field_160 < 32)):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^priceFeed[address(arg2)].field_160, 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / s * t * 10^priceFeed[address(arg2)].field_160, ext_call.return_data[96]
                s = 10
                t = 1
                idx = priceFeed[address(arg2)].field_160
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] * s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                return 10^18 * ext_call.return_data[32] / u * v * s * t, ext_call.return_data[96]
            if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                if not priceFeed[address(arg2)].field_160:
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 1 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_160 < 78)) or bool(bool(priceFeed[address(arg2)].field_160 < 32)):
                    if not priceFeed[address(arg2)].field_168:
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg2)].field_160 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                        if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 18
                        if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                            revert with 0, 17
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^priceFeed[address(arg2)].field_160 / 10^uint8(ext_call.return_data[0]), 
                               ext_call.return_data[96]
                    s = 10
                    t = 1
                    idx = priceFeed[address(arg2)].field_168
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / s * t and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t * 10^priceFeed[address(arg2)].field_160 / 10^uint8(ext_call.return_data[0]), 
                           ext_call.return_data[96]
                s = 10
                t = 1
                idx = priceFeed[address(arg2)].field_160
                while idx > 1:
                    if s > -1 / s:
                        revert with 0, 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = s * t
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 0, 17
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and s * t > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and s * t > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not 10^uint8(ext_call.return_data[0]):
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * s * t / 10^uint8(ext_call.return_data[0]), 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and s * t > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not 10^uint8(ext_call.return_data[0]):
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * s * t / 10^uint8(ext_call.return_data[0]), ext_call.return_data[96]
            s = 10
            t = 1
            idx = uint8(ext_call.return_data[0])
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if not priceFeed[address(arg2)].field_160:
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 1 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 1 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 / s * t, ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 1 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg2)].field_160 < 78)) or bool(bool(priceFeed[address(arg2)].field_160 < 32)):
                if not priceFeed[address(arg2)].field_168:
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if 10^18 * ext_call.return_data[32] and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32]:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] * 10^priceFeed[address(arg2)].field_160 / s * t, ext_call.return_data[96]
                if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 18
                    if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                        revert with 0, 17
                    if not s * t:
                        revert with 0, 18
                    return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * 10^priceFeed[address(arg2)].field_160 / s * t, 
                           ext_call.return_data[96]
                u = 10
                v = 1
                idx = priceFeed[address(arg2)].field_168
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / u * v and 10^priceFeed[address(arg2)].field_160 > -1 / 10^18 * ext_call.return_data[32] / u * v:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / u * v * 10^priceFeed[address(arg2)].field_160 / s * t, ext_call.return_data[96]
            u = 10
            v = 1
            idx = priceFeed[address(arg2)].field_160
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not priceFeed[address(arg2)].field_168:
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if 10^18 * ext_call.return_data[32] and u * v > -1 / 10^18 * ext_call.return_data[32]:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] * u * v / s * t, ext_call.return_data[96]
            if bool(bool(priceFeed[address(arg2)].field_168 < 78)) or bool(bool(priceFeed[address(arg2)].field_168 < 32)):
                if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                if not 10^priceFeed[address(arg2)].field_168:
                    revert with 0, 18
                if 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 and u * v > -1 / 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168:
                    revert with 0, 17
                if not s * t:
                    revert with 0, 18
                return 10^18 * ext_call.return_data[32] / 10^priceFeed[address(arg2)].field_168 * u * v / s * t, ext_call.return_data[96]
            w = 10
            x = 1
            idx = priceFeed[address(arg2)].field_168
            while idx > 1:
                if w > -1 / w:
                    revert with 0, 17
                if not bool(idx):
                    w = w * w
                    x = x
                    idx = uint255(idx) * 0.5
                    continue 
                w = w * w
                x = w * x
                idx = uint255(idx) * 0.5
                continue 
    if x > -1 / w:
        revert with 0, 17
    if ext_call.return_data[32] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not w * x:
        revert with 0, 18
    if 10^18 * ext_call.return_data[32] / w * x and u * v > -1 / 10^18 * ext_call.return_data[32] / w * x:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return 10^18 * ext_call.return_data[32] / w * x * u * v / s * t, ext_call.return_data[96]
}



}
