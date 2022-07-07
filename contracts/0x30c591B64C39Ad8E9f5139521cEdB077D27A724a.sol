contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
mapping of address sub_f0e0626f;

function owner() payable {
    return owner
}

function pendingOwner() payable {
    return pendingOwner
}

function sub_f0e0626f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f0e0626f[arg1]
}

function _fallback() payable {
    revert
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function cancelTransferOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require pendingOwner
    pendingOwner = 0
    emit NewPendingOwner(address arg1)
    emit 0x0 
}

function setPriceFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f0e0626f[address(arg1)] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require not pendingOwner
    pendingOwner = arg1
    emit NewPendingOwner(arg1);
}

function getPriceOf(address arg1, address arg2, uint8 arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg3:
        if not arg2:
            if not arg1:
                return 1
            if not sub_f0e0626f[address(arg1)]:
                revert with 0, '502', 0
            require ext_code.size(sub_f0e0626f[address(arg1)])
            staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (100 * 10^6 / ext_call.return_data[32])
        if not sub_f0e0626f[address(arg2)]:
            revert with 0, '502', 0
        require ext_code.size(sub_f0e0626f[address(arg2)])
        staticcall sub_f0e0626f[address(arg2)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] > -1:
            revert with 0, 17
        if not arg1:
            return (ext_call.return_data[32] / 100 * 10^6)
        if not sub_f0e0626f[address(arg1)]:
            revert with 0, '502', 0
        require ext_code.size(sub_f0e0626f[address(arg1)])
        staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (ext_call.return_data[32] / ext_call.return_data[32])
    if bool(bool(arg3 < 78)) or bool(bool(arg3 < 32)):
        if 10^arg3 > -1:
            revert with 0, 17
        if not arg2:
            if 10^arg3 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                revert with 0, 17
            if not arg1:
                return (100 * 10^6 * 10^arg3 / 100 * 10^6)
            if not sub_f0e0626f[address(arg1)]:
                revert with 0, '502', 0
            require ext_code.size(sub_f0e0626f[address(arg1)])
            staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (100 * 10^6 * 10^arg3 / ext_call.return_data[32])
        if not sub_f0e0626f[address(arg2)]:
            revert with 0, '502', 0
        require ext_code.size(sub_f0e0626f[address(arg2)])
        staticcall sub_f0e0626f[address(arg2)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if 10^arg3 and ext_call.return_data[32] > -1 / 10^arg3:
            revert with 0, 17
        if not arg1:
            return (10^arg3 * ext_call.return_data[32] / 100 * 10^6)
        if not sub_f0e0626f[address(arg1)]:
            revert with 0, '502', 0
        require ext_code.size(sub_f0e0626f[address(arg1)])
        staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (10^arg3 * ext_call.return_data[32] / ext_call.return_data[32])
    if var26005 > 1:
        s = var26001
        t = var26002
        u = var26005
        while s <= -1 / s:
            if not bool(u):
                if uint255(u) * 0.5 > 1:
                    s = s * s
                    t = t
                    u = uint255(u) * 0.5
                    continue 
                if t > -1 / s * s:
                    revert with 0, 17
                if not arg2:
                    if s * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                        revert with 0, 17
                    if not arg1:
                        return (100 * 10^6 * s * s * t / 100 * 10^6)
                    mem[128] = '502'
                    if not sub_f0e0626f[address(arg1)]:
                        mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[164] = 32
                        idx = 0
                        while idx < 3:
                            mem[idx + 228] = mem[idx + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 3, mem[228 len 3], 0
                    require ext_code.size(sub_f0e0626f[address(arg1)])
                    staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    return (100 * 10^6 * s * s * t / ext_call.return_data[32])
                mem[128] = '502'
                if not sub_f0e0626f[address(arg2)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 0
                    while idx < 3:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 3, mem[228 len 3], 0
                require ext_code.size(sub_f0e0626f[address(arg2)])
                staticcall sub_f0e0626f[address(arg2)].latestRoundData() with:
                        gas gas_remaining wei
                mem[160 len 160] = ext_call.return_data[0 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if s * s * t and ext_call.return_data[32] > -1 / s * s * t:
                    revert with 0, 17
                if not arg1:
                    return (s * s * t * ext_call.return_data[32] / 100 * 10^6)
                mem[ceil32(return_data.size) + 192] = '502'
                if not sub_f0e0626f[address(arg1)]:
                    mem[ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 228] = 32
                    idx = 0
                    while idx < 3:
                        mem[idx + ceil32(return_data.size) + 292] = mem[idx + ceil32(return_data.size) + 192]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 3, mem[ceil32(return_data.size) + 292 len 3], 0
                require ext_code.size(sub_f0e0626f[address(arg1)])
                staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (s * s * t * ext_call.return_data[32] / ext_call.return_data[32])
            if uint255(u) * 0.5 > 1:
                s = s * s
                t = s * t
                u = uint255(u) * 0.5
                continue 
            if s * t > -1 / s * s:
                revert with 0, 17
            if not arg2:
                if s * s * s * t > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
                    revert with 0, 17
                if not arg1:
                    return (100 * 10^6 * s * s * s * t / 100 * 10^6)
                mem[128] = '502'
                if not sub_f0e0626f[address(arg1)]:
                    mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[164] = 32
                    idx = 0
                    while idx < 3:
                        mem[idx + 228] = mem[idx + 128]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 3, mem[228 len 3], 0
                require ext_code.size(sub_f0e0626f[address(arg1)])
                staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if not ext_call.return_data[32]:
                    revert with 0, 18
                return (100 * 10^6 * s * s * s * t / ext_call.return_data[32])
            mem[128] = '502'
            if not sub_f0e0626f[address(arg2)]:
                mem[160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[164] = 32
                idx = 0
                while idx < 3:
                    mem[idx + 228] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 3, mem[228 len 3], 0
            require ext_code.size(sub_f0e0626f[address(arg2)])
            staticcall sub_f0e0626f[address(arg2)].latestRoundData() with:
                    gas gas_remaining wei
            mem[160 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if s * s * s * t and ext_call.return_data[32] > -1 / s * s * s * t:
                revert with 0, 17
            if not arg1:
                return (s * s * s * t * ext_call.return_data[32] / 100 * 10^6)
            mem[ceil32(return_data.size) + 192] = '502'
            if not sub_f0e0626f[address(arg1)]:
                mem[ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 228] = 32
                idx = 0
                while idx < 3:
                    mem[idx + ceil32(return_data.size) + 292] = mem[idx + ceil32(return_data.size) + 192]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 3, mem[ceil32(return_data.size) + 292 len 3], 0
            require ext_code.size(sub_f0e0626f[address(arg1)])
            staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            require ext_call.return_data[0] == ext_call.return_data[22 len 10]
            require ext_call.return_data[128] == ext_call.return_data[150 len 10]
            if not ext_call.return_data[32]:
                revert with 0, 18
            return (s * s * s * t * ext_call.return_data[32] / ext_call.return_data[32])
        revert with 0, 17
    if var26002 > -1 / var26001:
        revert with 0, 17
    if not arg2:
        if var26001 * var26002 > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not arg1:
            return (100 * 10^6 * var26001 * var26002 / 100 * 10^6)
        if not sub_f0e0626f[address(arg1)]:
            revert with 0, '502', 0
        require ext_code.size(sub_f0e0626f[address(arg1)])
        staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if not ext_call.return_data[32]:
            revert with 0, 18
        return (100 * 10^6 * var26001 * var26002 / ext_call.return_data[32])
    if not sub_f0e0626f[address(arg2)]:
        revert with 0, '502', 0
    require ext_code.size(sub_f0e0626f[address(arg2)])
    staticcall sub_f0e0626f[address(arg2)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if var26001 * var26002 and ext_call.return_data[32] > -1 / var26001 * var26002:
        revert with 0, 17
    if not arg1:
        return (var26001 * var26002 * ext_call.return_data[32] / 100 * 10^6)
    if not sub_f0e0626f[address(arg1)]:
        revert with 0, '502', 0
    require ext_code.size(sub_f0e0626f[address(arg1)])
    staticcall sub_f0e0626f[address(arg1)].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        revert with 0, 18
    return (var26001 * var26002 * ext_call.return_data[32] / ext_call.return_data[32])
}



}
