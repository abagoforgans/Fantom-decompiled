contract main {




// =====================  Runtime code  =====================


address owner;
address stor2;
address stor4;

function owner() payable {
    return owner
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

function sub_e1c58a27(?) payable {
    require ext_code.size(stor4)
    staticcall stor4.getReferenceData(string arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not bool(ceil32(return_data.size) + 192 <= test266151307()):
        revert with 0, 65
    return ext_call.return_data[0]
}

function consult() payable {
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(stor2)
    staticcall stor2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (10^18 * ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (10^18 * ext_call.return_data[32] / s * t)
}

function sub_b05a97c3(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(stor2)
    staticcall stor2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (10^18 * ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return (10^18 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
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
    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return (10^18 * ext_call.return_data[32] / s * t)
}

function sub_f236fe59(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(stor2)
    staticcall stor2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
            revert with 0, 65
        if 10^18 * ext_call.return_data[32] < ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[32])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            require ext_code.size(stor4)
            staticcall stor4.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
                revert with 0, 65
            if 10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) < ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]))
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            require ext_code.size(stor4)
            staticcall stor4.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
                revert with 0, 65
            if 10^18 * ext_call.return_data[32] / s * t < ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[32] / s * t)
    return ext_call.return_data[0]
}

function sub_fc6d9602(?) payable {
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    require ext_code.size(stor2)
    staticcall stor2.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        require ext_code.size(stor4)
        staticcall stor4.getReferenceData(string arg1, string arg2) with:
                gas gas_remaining wei
               args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
            revert with 0, 65
        if 10^18 * ext_call.return_data[32] > ext_call.return_data[0]:
            return (10^18 * ext_call.return_data[32])
    else:
        if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not 10^ext_call.return_data[31 len 1]:
                revert with 0, 18
            require ext_code.size(stor4)
            staticcall stor4.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
                revert with 0, 65
            if 10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]) > ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[32] / 10^uint8(ext_call.return_data[0]))
        else:
            s = 10
            t = 1
            idx = ext_call.return_data[31 len 1]
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
            if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                revert with 0, 17
            if not s * t:
                revert with 0, 18
            require ext_code.size(stor4)
            staticcall stor4.getReferenceData(string arg1, string arg2) with:
                    gas gas_remaining wei
                   args 64, 128, 3, 0x46544d0000000000000000000000000000000000000000000000000000000000, 3, 0x5553440000000000000000000000000000000000000000000000000000000000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if not bool((4 * ceil32(return_data.size)) + 192 <= test266151307()):
                revert with 0, 65
            if 10^18 * ext_call.return_data[32] / s * t > ext_call.return_data[0]:
                return (10^18 * ext_call.return_data[32] / s * t)
    return ext_call.return_data[0]
}



}
