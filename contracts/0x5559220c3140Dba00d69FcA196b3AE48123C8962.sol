contract main {




// =====================  Runtime code  =====================


address adminAddress;
address sub_e6560251Address;
array of uint256 stor3;
array of uint256 stor8;
array of uint256 stor9;
uint256 stor14;
mapping of uint256 lastClaim;
mapping of uint256 sub_bfc3789b;

function lastClaim(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastClaim[arg1]
}

function sub_bfc3789b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return sub_bfc3789b[arg1]
}

function sub_e6560251(?) payable {
    return sub_e6560251Address
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function hash(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return sha3(Array(len=10, data='But God...'), address(arg1), arg2)
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(sub_e6560251Address)
    call sub_e6560251Address.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_bfc3789b[address(arg1)][arg2] > -arg3 - 1:
        revert with 'NH{q', 17
    sub_bfc3789b[address(arg1)][arg2] += arg3
    emit 0xa7a0b36d: arg3, sha3(address(arg1), arg2)
}

function sub_22747739(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 36).length > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 36).length
    mem[64] = (32 * ('cd', 36).length) + 128
    if not ('cd', 36).length:
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((32 * idx) + cd[36] + 36)]
            _32 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_32 + 32 len mem[_32]])
            mem[32] = 16
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = sub_bfc3789b[mem[0]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 4).length:
                revert with 'NH{q', 50
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            if idx >= ('cd', 36).length:
                revert with 'NH{q', 50
            mem[mem[64] + 32] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((32 * idx) + cd[36] + 36)]
            _35 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            mem[0] = sha3(mem[_35 + 32 len mem[_35]])
            mem[32] = 16
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx) + 128] = sub_bfc3789b[mem[0]]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_342b4e0b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor14:
        idx = 0
        while idx < 6:
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 >= stor9[idx]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx == 6:
                if stor14 and 2 > -1 / stor14:
                    revert with 'NH{q', 17
                if not idx:
                    if 2 * stor14 < 0:
                        revert with 'NH{q', 17
                    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                        revert with 'NH{q', 17
                    if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not 2 * stor14:
                        revert with 'NH{q', 18
                    return idx, 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if 2 * stor14 < stor8[idx]:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
                    revert with 'NH{q', 17
                if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not (2 * stor14) - stor8[idx]:
                    revert with 'NH{q', 18
                return idx, (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]
            if idx >= 6:
                revert with 'NH{q', 50
            if not idx:
                if stor9[idx] < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor9[idx]:
                    revert with 'NH{q', 18
                return idx, 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if stor9[idx] < stor8[idx]:
                revert with 'NH{q', 17
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
                revert with 'NH{q', 17
            if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor9[idx] - stor8[idx]:
                revert with 'NH{q', 18
            return idx, (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]
        if stor9.length < 0:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor9.length:
            revert with 'NH{q', 18
        return 0, 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length
    if stor14 and 2 > -1 / stor14:
        revert with 'NH{q', 17
    if 2 * stor14 < stor14:
        revert with 'NH{q', 17
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor14:
        revert with 'NH{q', 17
    if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor14 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not stor14:
        revert with 'NH{q', 18
    return 6, (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14
}

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if block.timestamp < lastClaim[address(arg1)][arg2]:
        revert with 'NH{q', 17
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 >= stor14:
        if stor14 and 2 > -1 / stor14:
            revert with 'NH{q', 17
        if 2 * stor14 < stor14:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor14:
            revert with 'NH{q', 17
        if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor14 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor14:
            revert with 'NH{q', 18
        if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) - 1:
            revert with 'NH{q', 17
        revert with 'NH{q', 50
    idx = 0
    while idx < 6:
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 >= stor9[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if idx == 6:
            if stor14 and 2 > -1 / stor14:
                revert with 'NH{q', 17
            if not idx:
                if 2 * stor14 < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not 2 * stor14:
                    revert with 'NH{q', 18
                if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) - 1:
                    revert with 'NH{q', 17
                if idx >= 6:
                    revert with 'NH{q', 50
                if stor3[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 'NH{q', 17
                if 10^18 * stor3[idx] and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 > -1 / 10^18 * stor3[idx]:
                    revert with 'NH{q', 17
                if (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100 and block.timestamp - lastClaim[address(arg1)][arg2] > -1 / (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100:
                    revert with 'NH{q', 17
                lastClaim[address(arg1)][arg2] = block.timestamp
                require ext_code.size(arg1)
                staticcall arg1.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(sub_e6560251Address)
                if not lastClaim[address(arg1)][arg2]:
                    call sub_e6560251Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(10^18, sha3(address(arg1), arg2));
                    return 10^18
                if (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                    call sub_e6560251Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 5 * 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit Claim(5 * 10^18, sha3(address(arg1), arg2));
                    return 5 * 10^18
                call sub_e6560251Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) / 8736 * 24 * 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) / 8736 * 24 * 3600), sha3(address(arg1), arg2));
                return ((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14 * stor3[idx]) / 100) / 8736 * 24 * 3600)
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if 2 * stor14 < stor8[idx]:
                revert with 'NH{q', 17
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
                revert with 'NH{q', 17
            if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not (2 * stor14) - stor8[idx]:
                revert with 'NH{q', 18
            if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) - 1:
                revert with 'NH{q', 17
            if idx >= 6:
                revert with 'NH{q', 50
            if stor3[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor3[idx] and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 > -1 / 10^18 * stor3[idx]:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100 and block.timestamp - lastClaim[address(arg1)][arg2] > -1 / (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100:
                revert with 'NH{q', 17
            lastClaim[address(arg1)][arg2] = block.timestamp
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_e6560251Address)
            if not lastClaim[address(arg1)][arg2]:
                call sub_e6560251Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, sha3(address(arg1), arg2));
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                call sub_e6560251Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, sha3(address(arg1), arg2));
                return 5 * 10^18
            call sub_e6560251Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600), sha3(address(arg1), arg2));
            return ((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600)
        if idx >= 6:
            revert with 'NH{q', 50
        if not idx:
            if stor9[idx] < 0:
                revert with 'NH{q', 17
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                revert with 'NH{q', 17
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor9[idx]:
                revert with 'NH{q', 18
            if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) - 1:
                revert with 'NH{q', 17
            if idx >= 6:
                revert with 'NH{q', 50
            if stor3[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 'NH{q', 17
            if 10^18 * stor3[idx] and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 > -1 / 10^18 * stor3[idx]:
                revert with 'NH{q', 17
            if (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100 and block.timestamp - lastClaim[address(arg1)][arg2] > -1 / (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100:
                revert with 'NH{q', 17
            lastClaim[address(arg1)][arg2] = block.timestamp
            require ext_code.size(arg1)
            staticcall arg1.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(sub_e6560251Address)
            if not lastClaim[address(arg1)][arg2]:
                call sub_e6560251Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(10^18, sha3(address(arg1), arg2));
                return 10^18
            if (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
                call sub_e6560251Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 5 * 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit Claim(5 * 10^18, sha3(address(arg1), arg2));
                return 5 * 10^18
            call sub_e6560251Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600), sha3(address(arg1), arg2));
            return ((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600)
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= 6:
            revert with 'NH{q', 50
        if stor9[idx] < stor8[idx]:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
            revert with 'NH{q', 17
        if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor9[idx] - stor8[idx]:
            revert with 'NH{q', 18
        if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) - 1:
            revert with 'NH{q', 17
        if idx >= 6:
            revert with 'NH{q', 50
        if stor3[idx] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 'NH{q', 17
        if 10^18 * stor3[idx] and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 > -1 / 10^18 * stor3[idx]:
            revert with 'NH{q', 17
        if (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100 and block.timestamp - lastClaim[address(arg1)][arg2] > -1 / (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100:
            revert with 'NH{q', 17
        lastClaim[address(arg1)][arg2] = block.timestamp
        require ext_code.size(arg1)
        staticcall arg1.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(sub_e6560251Address)
        if not lastClaim[address(arg1)][arg2]:
            call sub_e6560251Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(10^18, sha3(address(arg1), arg2));
            return 10^18
        if (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
            call sub_e6560251Address.0x40c10f19 with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 5 * 10^18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Claim(5 * 10^18, sha3(address(arg1), arg2));
            return 5 * 10^18
        call sub_e6560251Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), (block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600), sha3(address(arg1), arg2));
        return ((block.timestamp * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3[idx]) + (10^18 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx] * stor3[idx]) / 100) / 8736 * 24 * 3600)
    if stor9.length < 0:
        revert with 'NH{q', 17
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
        revert with 'NH{q', 17
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not stor9.length:
        revert with 'NH{q', 18
    if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length) - 1:
        revert with 'NH{q', 17
    if stor3.length > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 'NH{q', 17
    if 10^18 * stor3.length and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length) + 100 > -1 / 10^18 * stor3.length:
        revert with 'NH{q', 17
    if (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100 and block.timestamp - lastClaim[address(arg1)][arg2] > -1 / (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100:
        revert with 'NH{q', 17
    lastClaim[address(arg1)][arg2] = block.timestamp
    require ext_code.size(arg1)
    staticcall arg1.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(sub_e6560251Address)
    if not lastClaim[address(arg1)][arg2]:
        call sub_e6560251Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(10^18, sha3(address(arg1), arg2));
        return 10^18
    if (block.timestamp * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) / 8736 * 24 * 3600 > 5 * 10^18:
        call sub_e6560251Address.0x40c10f19 with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), 5 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Claim(5 * 10^18, sha3(address(arg1), arg2));
        return 5 * 10^18
    call sub_e6560251Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), (block.timestamp * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) / 8736 * 24 * 3600
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Claim(((block.timestamp * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) / 8736 * 24 * 3600), sha3(address(arg1), arg2));
    return ((block.timestamp * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) - (lastClaim[address(arg1)][arg2] * (100 * 10^18 * stor3.length) + (10^18 * 100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9.length * stor3.length) / 100) / 8736 * 24 * 3600)
}

function sub_8a63f42f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    mem[128] = address(arg1)
    mem[160] = arg2
    mem[96] = 64
    mem[64] = 192
    mem[0] = sha3(address(arg1), arg2)
    mem[32] = 16
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor14:
        idx = 0
        while idx < 6:
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 >= stor9[idx]:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if idx == 6:
                if stor14 and 2 > -1 / stor14:
                    revert with 'NH{q', 17
                if not idx:
                    if 2 * stor14 < 0:
                        revert with 'NH{q', 17
                    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                        revert with 'NH{q', 17
                    if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                        revert with 'NH{q', 17
                    if not 2 * stor14:
                        revert with 'NH{q', 18
                    if not idx:
                        return idx, 1, 3
                    mem[224] = 96
                    mem[320] = 10
                    mem[352] = 'But God...'
                    mem[256] = address(arg1)
                    mem[288] = arg2
                    mem[192] = 160
                    mem[416] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                    mem[448] = 64
                    mem[480] = 8
                    mem[512] = 'nRegions'
                    mem[384] = 128
                    if idx > test266151307():
                        revert with 'NH{q', 65
                    mem[544] = idx
                    mem[64] = (32 * idx) + 576
                    if not idx:
                        s = 0
                        t = 0
                        while s < idx:
                            mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                            mem[mem[64] + 64] = s
                            _338 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_338 + 32 len mem[_338]]) % 8) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[544]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 576] = (sha3(mem[_338 + 32 len mem[_338]]) % 8) + 1
                            if s >= mem[544]:
                                revert with 'NH{q', 50
                            if t > -mem[(32 * s) + 576] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + mem[(32 * s) + 576]
                            continue 
                        if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) - 1:
                            revert with 'NH{q', 17
                        if t and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100 > -1 / t:
                            revert with 'NH{q', 17
                        _365 = mem[64]
                        mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = 9
                        mem[mem[64] + 128] = 'nFeatures'
                        _401 = mem[64]
                        mem[mem[64]] = 128
                        mem[64] = mem[64] + 160
                        _403 = sha3(mem[_401 + 32 len mem[_401]])
                        if idx > test266151307():
                            revert with 'NH{q', 65
                        mem[_365 + 160] = idx
                        mem[64] = _365 + (32 * idx) + 192
                        if not idx:
                            s = 0
                            u = 0
                            while s < idx:
                                mem[mem[64] + 32] = _403
                                mem[mem[64] + 64] = s
                                _594 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if 1 > -(sha3(mem[_594 + 32 len mem[_594]]) % 6) - 1:
                                    revert with 'NH{q', 17
                                if s >= mem[_365 + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _365 + 192] = (sha3(mem[_594 + 32 len mem[_594]]) % 6) + 1
                                if s >= mem[_365 + 160]:
                                    revert with 'NH{q', 50
                                if u > -mem[(32 * s) + _365 + 192] - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                u = u + mem[(32 * s) + _365 + 192]
                                continue 
                        else:
                            mem[_365 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                            s = 0
                            u = 0
                            while s < idx:
                                mem[mem[64] + 32] = _403
                                mem[mem[64] + 64] = s
                                _597 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if 1 > -(sha3(mem[_597 + 32 len mem[_597]]) % 6) - 1:
                                    revert with 'NH{q', 17
                                if s >= mem[_365 + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _365 + 192] = (sha3(mem[_597 + 32 len mem[_597]]) % 6) + 1
                                if s >= mem[_365 + 160]:
                                    revert with 'NH{q', 50
                                if u > -mem[(32 * s) + _365 + 192] - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                u = u + mem[(32 * s) + _365 + 192]
                                continue 
                    else:
                        mem[576 len 32 * idx] = call.data[calldata.size len 32 * idx]
                        s = 0
                        t = 0
                        while s < idx:
                            mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                            mem[mem[64] + 64] = s
                            _341 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_341 + 32 len mem[_341]]) % 8) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[544]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + 576] = (sha3(mem[_341 + 32 len mem[_341]]) % 8) + 1
                            if s >= mem[544]:
                                revert with 'NH{q', 50
                            if t > -mem[(32 * s) + 576] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            t = t + mem[(32 * s) + 576]
                            continue 
                        if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) - 1:
                            revert with 'NH{q', 17
                        if t and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100 > -1 / t:
                            revert with 'NH{q', 17
                        _366 = mem[64]
                        mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                        mem[mem[64] + 64] = 64
                        mem[mem[64] + 96] = 9
                        mem[mem[64] + 128] = 'nFeatures'
                        _404 = mem[64]
                        mem[mem[64]] = 128
                        mem[64] = mem[64] + 160
                        _406 = sha3(mem[_404 + 32 len mem[_404]])
                        if idx > test266151307():
                            revert with 'NH{q', 65
                        mem[_366 + 160] = idx
                        mem[64] = _366 + (32 * idx) + 192
                        if not idx:
                            s = 0
                            u = 0
                            while s < idx:
                                mem[mem[64] + 32] = _406
                                mem[mem[64] + 64] = s
                                _600 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if 1 > -(sha3(mem[_600 + 32 len mem[_600]]) % 6) - 1:
                                    revert with 'NH{q', 17
                                if s >= mem[_366 + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _366 + 192] = (sha3(mem[_600 + 32 len mem[_600]]) % 6) + 1
                                if s >= mem[_366 + 160]:
                                    revert with 'NH{q', 50
                                if u > -mem[(32 * s) + _366 + 192] - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                u = u + mem[(32 * s) + _366 + 192]
                                continue 
                        else:
                            mem[_366 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                            s = 0
                            u = 0
                            while s < idx:
                                mem[mem[64] + 32] = _406
                                mem[mem[64] + 64] = s
                                _603 = mem[64]
                                mem[mem[64]] = 64
                                mem[64] = mem[64] + 96
                                if 1 > -(sha3(mem[_603 + 32 len mem[_603]]) % 6) - 1:
                                    revert with 'NH{q', 17
                                if s >= mem[_366 + 160]:
                                    revert with 'NH{q', 50
                                mem[(32 * s) + _366 + 192] = (sha3(mem[_603 + 32 len mem[_603]]) % 6) + 1
                                if s >= mem[_366 + 160]:
                                    revert with 'NH{q', 50
                                if u > -mem[(32 * s) + _366 + 192] - 1:
                                    revert with 'NH{q', 17
                                if s == -1:
                                    revert with 'NH{q', 17
                                s = s + 1
                                u = u + mem[(32 * s) + _366 + 192]
                                continue 
                    if u > -3:
                        revert with 'NH{q', 17
                    if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) - 1:
                        revert with 'NH{q', 17
                    if u + 2 and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100 > -1 / u + 2:
                        revert with 'NH{q', 17
                    return idx, 
                           t * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100,
                           (2 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100) + (u * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / 2 * stor14) + 100 / 100)
                if idx < 1:
                    revert with 'NH{q', 17
                if idx - 1 >= 6:
                    revert with 'NH{q', 50
                if 2 * stor14 < stor8[idx]:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
                    revert with 'NH{q', 17
                if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not (2 * stor14) - stor8[idx]:
                    revert with 'NH{q', 18
                if not idx:
                    return idx, 1, 3
                mem[224] = 96
                mem[320] = 10
                mem[352] = 'But God...'
                mem[256] = address(arg1)
                mem[288] = arg2
                mem[192] = 160
                mem[416] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                mem[448] = 64
                mem[480] = 8
                mem[512] = 'nRegions'
                mem[384] = 128
                if idx > test266151307():
                    revert with 'NH{q', 65
                mem[544] = idx
                mem[64] = (32 * idx) + 576
                if not idx:
                    s = 0
                    t = 0
                    while s < idx:
                        mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                        mem[mem[64] + 64] = s
                        _344 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_344 + 32 len mem[_344]]) % 8) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 576] = (sha3(mem[_344 + 32 len mem[_344]]) % 8) + 1
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        if t > -mem[(32 * s) + 576] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + 576]
                        continue 
                    if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) - 1:
                        revert with 'NH{q', 17
                    if t and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100 > -1 / t:
                        revert with 'NH{q', 17
                    _367 = mem[64]
                    mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = 9
                    mem[mem[64] + 128] = 'nFeatures'
                    _407 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    _409 = sha3(mem[_407 + 32 len mem[_407]])
                    if idx > test266151307():
                        revert with 'NH{q', 65
                    mem[_367 + 160] = idx
                    mem[64] = _367 + (32 * idx) + 192
                    if not idx:
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _409
                            mem[mem[64] + 64] = s
                            _606 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_606 + 32 len mem[_606]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_367 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _367 + 192] = (sha3(mem[_606 + 32 len mem[_606]]) % 6) + 1
                            if s >= mem[_367 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _367 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _367 + 192]
                            continue 
                    else:
                        mem[_367 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _409
                            mem[mem[64] + 64] = s
                            _609 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_609 + 32 len mem[_609]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_367 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _367 + 192] = (sha3(mem[_609 + 32 len mem[_609]]) % 6) + 1
                            if s >= mem[_367 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _367 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _367 + 192]
                            continue 
                else:
                    mem[576 len 32 * idx] = call.data[calldata.size len 32 * idx]
                    s = 0
                    t = 0
                    while s < idx:
                        mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                        mem[mem[64] + 64] = s
                        _347 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_347 + 32 len mem[_347]]) % 8) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 576] = (sha3(mem[_347 + 32 len mem[_347]]) % 8) + 1
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        if t > -mem[(32 * s) + 576] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + 576]
                        continue 
                    if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) - 1:
                        revert with 'NH{q', 17
                    if t and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100 > -1 / t:
                        revert with 'NH{q', 17
                    _368 = mem[64]
                    mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = 9
                    mem[mem[64] + 128] = 'nFeatures'
                    _410 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    _412 = sha3(mem[_410 + 32 len mem[_410]])
                    if idx > test266151307():
                        revert with 'NH{q', 65
                    mem[_368 + 160] = idx
                    mem[64] = _368 + (32 * idx) + 192
                    if not idx:
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _412
                            mem[mem[64] + 64] = s
                            _612 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_612 + 32 len mem[_612]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_368 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _368 + 192] = (sha3(mem[_612 + 32 len mem[_612]]) % 6) + 1
                            if s >= mem[_368 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _368 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _368 + 192]
                            continue 
                    else:
                        mem[_368 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _412
                            mem[mem[64] + 64] = s
                            _615 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_615 + 32 len mem[_615]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_368 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _368 + 192] = (sha3(mem[_615 + 32 len mem[_615]]) % 6) + 1
                            if s >= mem[_368 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _368 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _368 + 192]
                            continue 
                if u > -3:
                    revert with 'NH{q', 17
                if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) - 1:
                    revert with 'NH{q', 17
                if u + 2 and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100 > -1 / u + 2:
                    revert with 'NH{q', 17
                return idx, 
                       t * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100,
                       (2 * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100) + (u * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / (2 * stor14) - stor8[idx]) + 100 / 100)
            if idx >= 6:
                revert with 'NH{q', 50
            if not idx:
                if stor9[idx] < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
                    revert with 'NH{q', 17
                if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                    revert with 'NH{q', 17
                if not stor9[idx]:
                    revert with 'NH{q', 18
                if not idx:
                    return idx, 1, 3
                mem[224] = 96
                mem[320] = 10
                mem[352] = 'But God...'
                mem[256] = address(arg1)
                mem[288] = arg2
                mem[192] = 160
                mem[416] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                mem[448] = 64
                mem[480] = 8
                mem[512] = 'nRegions'
                mem[384] = 128
                if idx > test266151307():
                    revert with 'NH{q', 65
                mem[544] = idx
                mem[64] = (32 * idx) + 576
                if not idx:
                    s = 0
                    t = 0
                    while s < idx:
                        mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                        mem[mem[64] + 64] = s
                        _350 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_350 + 32 len mem[_350]]) % 8) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 576] = (sha3(mem[_350 + 32 len mem[_350]]) % 8) + 1
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        if t > -mem[(32 * s) + 576] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + 576]
                        continue 
                    if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) - 1:
                        revert with 'NH{q', 17
                    if t and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100 > -1 / t:
                        revert with 'NH{q', 17
                    _369 = mem[64]
                    mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = 9
                    mem[mem[64] + 128] = 'nFeatures'
                    _413 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    _415 = sha3(mem[_413 + 32 len mem[_413]])
                    if idx > test266151307():
                        revert with 'NH{q', 65
                    mem[_369 + 160] = idx
                    mem[64] = _369 + (32 * idx) + 192
                    if not idx:
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _415
                            mem[mem[64] + 64] = s
                            _618 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_618 + 32 len mem[_618]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_369 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _369 + 192] = (sha3(mem[_618 + 32 len mem[_618]]) % 6) + 1
                            if s >= mem[_369 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _369 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _369 + 192]
                            continue 
                    else:
                        mem[_369 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _415
                            mem[mem[64] + 64] = s
                            _621 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_621 + 32 len mem[_621]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_369 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _369 + 192] = (sha3(mem[_621 + 32 len mem[_621]]) % 6) + 1
                            if s >= mem[_369 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _369 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _369 + 192]
                            continue 
                else:
                    mem[576 len 32 * idx] = call.data[calldata.size len 32 * idx]
                    s = 0
                    t = 0
                    while s < idx:
                        mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                        mem[mem[64] + 64] = s
                        _353 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_353 + 32 len mem[_353]]) % 8) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + 576] = (sha3(mem[_353 + 32 len mem[_353]]) % 8) + 1
                        if s >= mem[544]:
                            revert with 'NH{q', 50
                        if t > -mem[(32 * s) + 576] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        t = t + mem[(32 * s) + 576]
                        continue 
                    if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) - 1:
                        revert with 'NH{q', 17
                    if t and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100 > -1 / t:
                        revert with 'NH{q', 17
                    _370 = mem[64]
                    mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                    mem[mem[64] + 64] = 64
                    mem[mem[64] + 96] = 9
                    mem[mem[64] + 128] = 'nFeatures'
                    _416 = mem[64]
                    mem[mem[64]] = 128
                    mem[64] = mem[64] + 160
                    _418 = sha3(mem[_416 + 32 len mem[_416]])
                    if idx > test266151307():
                        revert with 'NH{q', 65
                    mem[_370 + 160] = idx
                    mem[64] = _370 + (32 * idx) + 192
                    if not idx:
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _418
                            mem[mem[64] + 64] = s
                            _624 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_624 + 32 len mem[_624]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_370 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _370 + 192] = (sha3(mem[_624 + 32 len mem[_624]]) % 6) + 1
                            if s >= mem[_370 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _370 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _370 + 192]
                            continue 
                    else:
                        mem[_370 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                        s = 0
                        u = 0
                        while s < idx:
                            mem[mem[64] + 32] = _418
                            mem[mem[64] + 64] = s
                            _627 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            if 1 > -(sha3(mem[_627 + 32 len mem[_627]]) % 6) - 1:
                                revert with 'NH{q', 17
                            if s >= mem[_370 + 160]:
                                revert with 'NH{q', 50
                            mem[(32 * s) + _370 + 192] = (sha3(mem[_627 + 32 len mem[_627]]) % 6) + 1
                            if s >= mem[_370 + 160]:
                                revert with 'NH{q', 50
                            if u > -mem[(32 * s) + _370 + 192] - 1:
                                revert with 'NH{q', 17
                            if s == -1:
                                revert with 'NH{q', 17
                            s = s + 1
                            u = u + mem[(32 * s) + _370 + 192]
                            continue 
                if u > -3:
                    revert with 'NH{q', 17
                if 100 > -(100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) - 1:
                    revert with 'NH{q', 17
                if u + 2 and (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100 > -1 / u + 2:
                    revert with 'NH{q', 17
                return idx, 
                       t * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100,
                       (2 * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100) + (u * (100 * sub_bfc3789b[address(arg1)][arg2] / 10^18 / stor9[idx]) + 100 / 100)
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= 6:
                revert with 'NH{q', 50
            if stor9[idx] < stor8[idx]:
                revert with 'NH{q', 17
            if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor8[idx]:
                revert with 'NH{q', 17
            if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor8[idx] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 'NH{q', 17
            if not stor9[idx] - stor8[idx]:
                revert with 'NH{q', 18
            if not idx:
                return idx, 1, 3
            mem[224] = 96
            mem[320] = 10
            mem[352] = 'But God...'
            mem[256] = address(arg1)
            mem[288] = arg2
            mem[192] = 160
            mem[416] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
            mem[448] = 64
            mem[480] = 8
            mem[512] = 'nRegions'
            mem[384] = 128
            if idx > test266151307():
                revert with 'NH{q', 65
            mem[544] = idx
            mem[64] = (32 * idx) + 576
            if not idx:
                s = 0
                t = 0
                while s < idx:
                    mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                    mem[mem[64] + 64] = s
                    _356 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if 1 > -(sha3(mem[_356 + 32 len mem[_356]]) % 8) - 1:
                        revert with 'NH{q', 17
                    if s >= mem[544]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 576] = (sha3(mem[_356 + 32 len mem[_356]]) % 8) + 1
                    if s >= mem[544]:
                        revert with 'NH{q', 50
                    if t > -mem[(32 * s) + 576] - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + mem[(32 * s) + 576]
                    continue 
                if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) - 1:
                    revert with 'NH{q', 17
                if t and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100 > -1 / t:
                    revert with 'NH{q', 17
                _371 = mem[64]
                mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                mem[mem[64] + 64] = 64
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'nFeatures'
                _419 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _421 = sha3(mem[_419 + 32 len mem[_419]])
                if idx > test266151307():
                    revert with 'NH{q', 65
                mem[_371 + 160] = idx
                mem[64] = _371 + (32 * idx) + 192
                if not idx:
                    s = 0
                    u = 0
                    while s < idx:
                        mem[mem[64] + 32] = _421
                        mem[mem[64] + 64] = s
                        _630 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_630 + 32 len mem[_630]]) % 6) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[_371 + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _371 + 192] = (sha3(mem[_630 + 32 len mem[_630]]) % 6) + 1
                        if s >= mem[_371 + 160]:
                            revert with 'NH{q', 50
                        if u > -mem[(32 * s) + _371 + 192] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        u = u + mem[(32 * s) + _371 + 192]
                        continue 
                else:
                    mem[_371 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                    s = 0
                    u = 0
                    while s < idx:
                        mem[mem[64] + 32] = _421
                        mem[mem[64] + 64] = s
                        _633 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_633 + 32 len mem[_633]]) % 6) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[_371 + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _371 + 192] = (sha3(mem[_633 + 32 len mem[_633]]) % 6) + 1
                        if s >= mem[_371 + 160]:
                            revert with 'NH{q', 50
                        if u > -mem[(32 * s) + _371 + 192] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        u = u + mem[(32 * s) + _371 + 192]
                        continue 
            else:
                mem[576 len 32 * idx] = call.data[calldata.size len 32 * idx]
                s = 0
                t = 0
                while s < idx:
                    mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
                    mem[mem[64] + 64] = s
                    _359 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    if 1 > -(sha3(mem[_359 + 32 len mem[_359]]) % 8) - 1:
                        revert with 'NH{q', 17
                    if s >= mem[544]:
                        revert with 'NH{q', 50
                    mem[(32 * s) + 576] = (sha3(mem[_359 + 32 len mem[_359]]) % 8) + 1
                    if s >= mem[544]:
                        revert with 'NH{q', 50
                    if t > -mem[(32 * s) + 576] - 1:
                        revert with 'NH{q', 17
                    if s == -1:
                        revert with 'NH{q', 17
                    s = s + 1
                    t = t + mem[(32 * s) + 576]
                    continue 
                if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) - 1:
                    revert with 'NH{q', 17
                if t and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100 > -1 / t:
                    revert with 'NH{q', 17
                _372 = mem[64]
                mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
                mem[mem[64] + 64] = 64
                mem[mem[64] + 96] = 9
                mem[mem[64] + 128] = 'nFeatures'
                _422 = mem[64]
                mem[mem[64]] = 128
                mem[64] = mem[64] + 160
                _424 = sha3(mem[_422 + 32 len mem[_422]])
                if idx > test266151307():
                    revert with 'NH{q', 65
                mem[_372 + 160] = idx
                mem[64] = _372 + (32 * idx) + 192
                if not idx:
                    s = 0
                    u = 0
                    while s < idx:
                        mem[mem[64] + 32] = _424
                        mem[mem[64] + 64] = s
                        _636 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_636 + 32 len mem[_636]]) % 6) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[_372 + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _372 + 192] = (sha3(mem[_636 + 32 len mem[_636]]) % 6) + 1
                        if s >= mem[_372 + 160]:
                            revert with 'NH{q', 50
                        if u > -mem[(32 * s) + _372 + 192] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        u = u + mem[(32 * s) + _372 + 192]
                        continue 
                else:
                    mem[_372 + 192 len 32 * idx] = call.data[calldata.size len 32 * idx]
                    s = 0
                    u = 0
                    while s < idx:
                        mem[mem[64] + 32] = _424
                        mem[mem[64] + 64] = s
                        _639 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        if 1 > -(sha3(mem[_639 + 32 len mem[_639]]) % 6) - 1:
                            revert with 'NH{q', 17
                        if s >= mem[_372 + 160]:
                            revert with 'NH{q', 50
                        mem[(32 * s) + _372 + 192] = (sha3(mem[_639 + 32 len mem[_639]]) % 6) + 1
                        if s >= mem[_372 + 160]:
                            revert with 'NH{q', 50
                        if u > -mem[(32 * s) + _372 + 192] - 1:
                            revert with 'NH{q', 17
                        if s == -1:
                            revert with 'NH{q', 17
                        s = s + 1
                        u = u + mem[(32 * s) + _372 + 192]
                        continue 
            if u > -3:
                revert with 'NH{q', 17
            if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) - 1:
                revert with 'NH{q', 17
            if u + 2 and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100 > -1 / u + 2:
                revert with 'NH{q', 17
            return idx, 
                   t * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100,
                   (2 * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100) + (u * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor8[idx]) / stor9[idx] - stor8[idx]) + 100 / 100)
        if stor9.length < 0:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 < 0:
            revert with 'NH{q', 17
        if sub_bfc3789b[address(arg1)][arg2] / 10^18 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 'NH{q', 17
        if not stor9.length:
            revert with 'NH{q', 18
        return 0, 1, 3
    if stor14 and 2 > -1 / stor14:
        revert with 'NH{q', 17
    if 2 * stor14 < stor14:
        revert with 'NH{q', 17
    if sub_bfc3789b[address(arg1)][arg2] / 10^18 < stor14:
        revert with 'NH{q', 17
    if (sub_bfc3789b[address(arg1)][arg2] / 10^18) - stor14 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 'NH{q', 17
    if not stor14:
        revert with 'NH{q', 18
    mem[224] = 96
    mem[320] = 10
    mem[352] = 'But God...'
    mem[256] = address(arg1)
    mem[288] = arg2
    mem[192] = 160
    mem[416] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
    mem[448] = 64
    mem[480] = 8
    mem[512] = 'nRegions'
    mem[384] = 128
    mem[544] = 6
    mem[64] = 768
    mem[576 len 192] = call.data[calldata.size len 192]
    idx = 0
    s = 0
    while idx < 6:
        mem[mem[64] + 32] = sha3(sha3(Array(len=10, data='But God...'), address(arg1), arg2), Array(len=8, data='nRegions'))
        mem[mem[64] + 64] = idx
        _25 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if 1 > -(sha3(mem[_25 + 32 len mem[_25]]) % 8) - 1:
            revert with 'NH{q', 17
        if idx >= mem[544]:
            revert with 'NH{q', 50
        mem[(32 * idx) + 576] = (sha3(mem[_25 + 32 len mem[_25]]) % 8) + 1
        if idx >= mem[544]:
            revert with 'NH{q', 50
        if s > -mem[(32 * idx) + 576] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + mem[(32 * idx) + 576]
        continue 
    if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) - 1:
        revert with 'NH{q', 17
    if 0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * s and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) + 100 / 100 > -1 / 0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * s:
        revert with 'NH{q', 17
    _28 = mem[64]
    mem[mem[64] + 32] = sha3(Array(len=10, data='But God...'), address(arg1), arg2)
    mem[mem[64] + 64] = 64
    mem[mem[64] + 96] = 9
    mem[mem[64] + 128] = 'nFeatures'
    _32 = mem[64]
    mem[mem[64]] = 128
    mem[64] = mem[64] + 160
    _34 = sha3(mem[_32 + 32 len mem[_32]])
    mem[_28 + 160] = 6
    mem[64] = _28 + 384
    mem[_28 + 192 len 192] = call.data[calldata.size len 192]
    idx = 0
    t = 0
    while idx < 6:
        mem[mem[64] + 32] = _34
        mem[mem[64] + 64] = idx
        _362 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if 1 > -(sha3(mem[_362 + 32 len mem[_362]]) % 6) - 1:
            revert with 'NH{q', 17
        if idx >= mem[_28 + 160]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _28 + 192] = (sha3(mem[_362 + 32 len mem[_362]]) % 6) + 1
        if idx >= mem[_28 + 160]:
            revert with 'NH{q', 50
        if t > -mem[(32 * idx) + _28 + 192] - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        t = t + mem[(32 * idx) + _28 + 192]
        continue 
    if 0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * t > -3:
        revert with 'NH{q', 17
    if 100 > -((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) - 1:
        revert with 'NH{q', 17
    if (0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * t) + 2 and ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) + 100 / 100 > -1 / (0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * t) + 2:
        revert with 'NH{q', 17
    return 6, 
           0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * s * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) + 100 / 100,
           (2 * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) + 100 / 100) + (0x6f32f1ef8b18a2bc3cea59789c79d44100000000000000000000 * t * ((100 * sub_bfc3789b[address(arg1)][arg2] / 10^18) - (100 * stor14) / stor14) + 100 / 100)
}



}
