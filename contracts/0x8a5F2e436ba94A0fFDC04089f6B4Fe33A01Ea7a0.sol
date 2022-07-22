contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address stor2;
address stor3;
uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
uint256 sub_d80018f9;
mapping of uint8 stor8;
mapping of uint256 sub_c6f3573d;
array of uint256 stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function owner() payable {
    return owner
}

function sub_c6f3573d(?) payable {
    require calldata.size - 4 >= 32
    return sub_c6f3573d[arg1]
}

function sub_d80018f9(?) payable {
    return sub_d80018f9
}

function sub_feb007d7(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
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

function setRewardsRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5.length++
    stor36B6[stor5.length] = stor4
    stor6.length++
    stor6[stor6.length] = block.timestamp
    stor4 = arg1
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

function sub_9caac016(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the FantomonTrainer contract can do that'
    if stor8[arg1]:
        revert with 0, 'Trainer already healing'
    if not stor8[arg1]:
        if sub_d80018f9 > -2:
            revert with 'NH{q', 17
        sub_d80018f9++
        stor8[arg1] = 1
    sub_c6f3573d[arg1] = block.timestamp
}

function sub_d59172f3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.getRarity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.getClass(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.0x72136828 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 3:
        if ext_call.return_data[31 len 1] < 12:
            if ext_call.return_data[31 len 1] < 11:
                return 1
            return 2
        if ext_call.return_data[31 len 1] < 11:
            return 2
        return 4
    if ext_call.return_data[31 len 1] < 12:
        if ext_call.return_data[31 len 1] < 11:
            return 2
        return 4
    if ext_call.return_data[31 len 1] < 11:
        return 4
    return 8
}

function sub_704bafcd(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    staticcall stor2.getRarity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.getClass(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.0x72136828 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 3:
        if ext_call.return_data[31 len 1] < 12:
            if ext_call.return_data[31 len 1] < 11:
                if stor4 and 1 > -1 / stor4:
                    revert with 'NH{q', 17
                return stor4
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            return (2 * stor4)
        if ext_call.return_data[31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            return (2 * stor4)
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        return (4 * stor4)
    if ext_call.return_data[31 len 1] < 12:
        if ext_call.return_data[31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            return (2 * stor4)
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        return (4 * stor4)
    if ext_call.return_data[31 len 1] < 11:
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        return (4 * stor4)
    if stor4 and 8 > -1 / stor4:
        revert with 'NH{q', 17
    return (8 * stor4)
}

function sub_9ecba7c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 128]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _105 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _105
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _108 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_108] == mem[_108 + 31 len 1]
        if mem[_108 + 31 len 1] != 3:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _111 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args _111
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _114 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_114] == mem[_114 + 12 len 20]
        if mem[_114 + 12 len 20] != this.address:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _117 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args _117
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _120 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_120] == mem[_120 + 31 len 1]
        mem[mem[64] + 4] = _117
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args _117
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_120 + 31 len 1] != 3:
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124 + 31 len 1]
            mem[mem[64] + 4] = _117
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _117
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_124 + 31 len 1] < 12:
                _131 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_131] == mem[_131 + 31 len 1]
                if mem[_131 + 31 len 1] < 11:
                    if stor4 and 1 > -1 / stor4:
                        revert with 'NH{q', 17
                    if s > !stor4:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + stor4
                    continue 
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if s > !(2 * stor4):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (2 * stor4)
                continue 
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_138] == mem[_138 + 31 len 1]
            if mem[_138 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if s > !(2 * stor4):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if s > !(4 * stor4):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (4 * stor4)
            continue 
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_130] == mem[_130 + 31 len 1]
        mem[mem[64] + 4] = _117
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args _117
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_130 + 31 len 1] < 12:
            _139 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_139] == mem[_139 + 31 len 1]
            if mem[_139 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if s > !(2 * stor4):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + (2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if s > !(4 * stor4):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (4 * stor4)
            continue 
        _144 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_144] == mem[_144 + 31 len 1]
        if mem[_144 + 31 len 1] < 11:
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if s > !(4 * stor4):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + (4 * stor4)
            continue 
        if stor4 and 8 > -1 / stor4:
            revert with 'NH{q', 17
        if s > !(8 * stor4):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + (8 * stor4)
        continue 
    return s
}

function getRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1]:
        return 0
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 3:
        return 0
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6bc80c66 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        return 0
    mem[0] = arg1
    mem[32] = 9
    idx = 0
    s = sub_c6f3573d[mem[0]]
    t = 0
    while idx < stor6.length:
        mem[0] = 6
        if s >= stor6[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _115 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_115] == mem[_115 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_115 + 31 len 1] != 3:
            _123 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_123] == mem[_123 + 31 len 1]
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_123 + 31 len 1] < 12:
                _138 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_138] == mem[_138 + 31 len 1]
                if mem[_138 + 31 len 1] < 11:
                    if stor5[idx] and 1 > -1 / stor5[idx]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[idx] < s:
                        revert with 'NH{q', 17
                    if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                        revert with 'NH{q', 17
                    if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx]
                    t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                    continue 
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            _153 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_153] == mem[_153 + 31 len 1]
            if mem[_153 + 31 len 1] < 11:
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        _137 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_137] == mem[_137 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_137 + 31 len 1] < 12:
            _154 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_154] == mem[_154 + 31 len 1]
            if mem[_154 + 31 len 1] < 11:
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        _163 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_163] == mem[_163 + 31 len 1]
        if mem[_163 + 31 len 1] < 11:
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        if stor5[idx] and 8 > -1 / stor5[idx]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        if stor6[idx] < s:
            revert with 'NH{q', 17
        if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
            revert with 'NH{q', 17
        if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor6[idx]
        t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getRarity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == mem[_111 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getClass(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_111 + 31 len 1] != 3:
        _119 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_119] == mem[_119 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_119 + 31 len 1] < 12:
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_130] == mem[_130 + 31 len 1]
            if mem[_130 + 31 len 1] < 11:
                if stor4 and 1 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < s:
                    revert with 'NH{q', 17
                if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                    revert with 'NH{q', 17
                if t > !((block.timestamp * stor4) - (s * stor4)):
                    revert with 'NH{q', 17
                return (t + (block.timestamp * stor4) - (s * stor4))
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        _145 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_145] == mem[_145 + 31 len 1]
        if mem[_145 + 31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    _129 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_129] == mem[_129 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x72136828 with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_129 + 31 len 1] < 12:
        _146 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_146] == mem[_146 + 31 len 1]
        if mem[_146 + 31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    _159 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_159] == mem[_159 + 31 len 1]
    if mem[_159 + 31 len 1] < 11:
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    if stor4 and 8 > -1 / stor4:
        revert with 'NH{q', 17
    if block.timestamp < s:
        revert with 'NH{q', 17
    if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
        revert with 'NH{q', 17
    if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
        revert with 'NH{q', 17
    return (t + (block.timestamp * 8 * stor4) - (s * 8 * stor4))
}

function sub_d4643a65(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _183 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 128]]:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _188 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_188] == mem[_188 + 31 len 1]
        if mem[_188 + 31 len 1] != 3:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = _183
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _192 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_192] == mem[_192 + 12 len 20]
        if mem[_192 + 12 len 20] != this.address:
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _183
        mem[32] = 9
        t = 0
        u = sub_c6f3573d[mem[0]]
        v = 0
        while t < stor6.length:
            mem[0] = 6
            if u >= stor6[t]:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u
                v = v
                continue 
            if t >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            mem[mem[64] + 4] = _183
            require ext_code.size(stor2)
            staticcall stor2.getRarity(uint256 arg1) with:
                    gas gas_remaining wei
                   args _183
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _277 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_277] == mem[_277 + 31 len 1]
            mem[mem[64] + 4] = _183
            require ext_code.size(stor2)
            staticcall stor2.getClass(uint256 arg1) with:
                    gas gas_remaining wei
                   args _183
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_277 + 31 len 1] != 3:
                _285 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_285] == mem[_285 + 31 len 1]
                mem[mem[64] + 4] = _183
                require ext_code.size(stor2)
                staticcall stor2.0x72136828 with:
                        gas gas_remaining wei
                       args _183
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_285 + 31 len 1] < 12:
                    _300 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_300] == mem[_300 + 31 len 1]
                    if mem[_300 + 31 len 1] < 11:
                        if stor5[t] and 1 > -1 / stor5[t]:
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        if stor6[t] < u:
                            revert with 'NH{q', 17
                        if stor6[t] - u and stor5[t] > -1 / stor6[t] - u:
                            revert with 'NH{q', 17
                        if v > !((stor6[t] * stor5[t]) - (u * stor5[t])):
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor6[t]
                        v = v + (stor6[t] * stor5[t]) - (u * stor5[t])
                        continue 
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                _315 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_315] == mem[_315 + 31 len 1]
                if mem[_315 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _299 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_299] == mem[_299 + 31 len 1]
            mem[mem[64] + 4] = _183
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _183
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_299 + 31 len 1] < 12:
                _316 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_316] == mem[_316 + 31 len 1]
                if mem[_316 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _325 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_325] == mem[_325 + 31 len 1]
            if mem[_325 + 31 len 1] < 11:
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            if stor5[t] and 8 > -1 / stor5[t]:
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            if stor6[t] < u:
                revert with 'NH{q', 17
            if stor6[t] - u and 8 * stor5[t] > -1 / stor6[t] - u:
                revert with 'NH{q', 17
            if v > !((stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])):
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = stor6[t]
            v = v + (stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])
            continue 
        mem[mem[64] + 4] = _183
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _273 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_273] == mem[_273 + 31 len 1]
        mem[mem[64] + 4] = _183
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_273 + 31 len 1] != 3:
            _281 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_281] == mem[_281 + 31 len 1]
            mem[mem[64] + 4] = _183
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _183
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_281 + 31 len 1] < 12:
                _292 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_292] == mem[_292 + 31 len 1]
                if mem[_292 + 31 len 1] < 11:
                    if stor4 and 1 > -1 / stor4:
                        revert with 'NH{q', 17
                    if block.timestamp < u:
                        revert with 'NH{q', 17
                    if block.timestamp - u and stor4 > -1 / block.timestamp - u:
                        revert with 'NH{q', 17
                    if v > !((block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    if s > !(v + (block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + v + (block.timestamp * stor4) - (u * stor4)
                    continue 
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            _307 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_307] == mem[_307 + 31 len 1]
            if mem[_307 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _291 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_291] == mem[_291 + 31 len 1]
        mem[mem[64] + 4] = _183
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args _183
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_291 + 31 len 1] < 12:
            _308 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_308] == mem[_308 + 31 len 1]
            if mem[_308 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _321 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_321] == mem[_321 + 31 len 1]
        if mem[_321 + 31 len 1] < 11:
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        if stor4 and 8 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < u:
            revert with 'NH{q', 17
        if block.timestamp - u and 8 * stor4 > -1 / block.timestamp - u:
            revert with 'NH{q', 17
        if v > !((block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        if s > !(v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
        continue 
    return s
}

function getClaimableRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor8[arg1]:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] != 3:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x6bc80c66 with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return 0
    mem[0] = arg1
    mem[32] = 9
    idx = 0
    s = sub_c6f3573d[mem[0]]
    t = 0
    while idx < stor6.length:
        mem[0] = 6
        if s >= stor6[idx]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            t = t
            continue 
        if idx >= stor5.length:
            revert with 'NH{q', 50
        mem[0] = 5
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _181 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_181] == mem[_181 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_181 + 31 len 1] != 3:
            _189 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_189] == mem[_189 + 31 len 1]
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args arg1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_189 + 31 len 1] < 12:
                _204 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_204] == mem[_204 + 31 len 1]
                if mem[_204 + 31 len 1] < 11:
                    if stor5[idx] and 1 > -1 / stor5[idx]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[idx] < s:
                        revert with 'NH{q', 17
                    if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                        revert with 'NH{q', 17
                    if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = stor6[idx]
                    t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                    continue 
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            _219 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_219] == mem[_219 + 31 len 1]
            if mem[_219 + 31 len 1] < 11:
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        _203 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_203] == mem[_203 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_203 + 31 len 1] < 12:
            _220 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_220] == mem[_220 + 31 len 1]
            if mem[_220 + 31 len 1] < 11:
                if stor5[idx] and 2 > -1 / stor5[idx]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[idx] < s:
                    revert with 'NH{q', 17
                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                    revert with 'NH{q', 17
                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = stor6[idx]
                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                continue 
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        _229 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_229] == mem[_229 + 31 len 1]
        if mem[_229 + 31 len 1] < 11:
            if stor5[idx] and 4 > -1 / stor5[idx]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            if stor6[idx] < s:
                revert with 'NH{q', 17
            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                revert with 'NH{q', 17
            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = stor6[idx]
            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
            continue 
        if stor5[idx] and 8 > -1 / stor5[idx]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        if stor6[idx] < s:
            revert with 'NH{q', 17
        if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
            revert with 'NH{q', 17
        if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = 6
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = stor6[idx]
        t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
        continue 
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getRarity(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _177 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_177] == mem[_177 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getClass(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_177 + 31 len 1] != 3:
        _185 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_185] == mem[_185 + 31 len 1]
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args arg1
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_185 + 31 len 1] < 12:
            _196 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_196] == mem[_196 + 31 len 1]
            if mem[_196 + 31 len 1] < 11:
                if stor4 and 1 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < s:
                    revert with 'NH{q', 17
                if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                    revert with 'NH{q', 17
                if t > !((block.timestamp * stor4) - (s * stor4)):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _242 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_242] < t + (block.timestamp * stor4) - (s * stor4):
                    return 0
                return (t + (block.timestamp * stor4) - (s * stor4))
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _255 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_255] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                return 0
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        _211 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_211] == mem[_211 + 31 len 1]
        if mem[_211 + 31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _258 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_258] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                return 0
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _278 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_278] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
            return 0
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    _195 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_195] == mem[_195 + 31 len 1]
    mem[mem[64] + 4] = arg1
    require ext_code.size(stor2)
    staticcall stor2.0x72136828 with:
            gas gas_remaining wei
           args arg1
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[_195 + 31 len 1] < 12:
        _212 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_212] == mem[_212 + 31 len 1]
        if mem[_212 + 31 len 1] < 11:
            if stor4 and 2 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < s:
                revert with 'NH{q', 17
            if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                revert with 'NH{q', 17
            if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _259 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_259] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                return 0
            return (t + (block.timestamp * 2 * stor4) - (s * 2 * stor4))
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _281 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_281] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
            return 0
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    _225 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_225] == mem[_225 + 31 len 1]
    if mem[_225 + 31 len 1] < 11:
        if stor4 and 4 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < s:
            revert with 'NH{q', 17
        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
            revert with 'NH{q', 17
        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_286] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
            return 0
        return (t + (block.timestamp * 4 * stor4) - (s * 4 * stor4))
    if stor4 and 8 > -1 / stor4:
        revert with 'NH{q', 17
    if block.timestamp < s:
        revert with 'NH{q', 17
    if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
        revert with 'NH{q', 17
    if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
        revert with 'NH{q', 17
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _303 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_303] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
        return 0
    return (t + (block.timestamp * 8 * stor4) - (s * 8 * stor4))
}

function sub_b2f18af3(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _282 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _282
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _287 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_287] == mem[_287 + 12 len 20]
        if mem[_287 + 12 len 20] != msg.sender:
            revert with 0, 'You don't own that trainer'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _297 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 128]]:
            if s > -1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _297
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _302 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_302] == mem[_302 + 31 len 1]
        if mem[_302 + 31 len 1] != 3:
            if s > -1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = _297
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args _297
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _309 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_309] == mem[_309 + 12 len 20]
        if mem[_309 + 12 len 20] != this.address:
            if s > -1:
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _297
        mem[32] = 9
        t = 0
        u = sub_c6f3573d[mem[0]]
        v = 0
        while t < stor6.length:
            mem[0] = 6
            if u >= stor6[t]:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u
                v = v
                continue 
            if t >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            mem[mem[64] + 4] = _297
            require ext_code.size(stor2)
            staticcall stor2.getRarity(uint256 arg1) with:
                    gas gas_remaining wei
                   args _297
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _424 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_424] == mem[_424 + 31 len 1]
            mem[mem[64] + 4] = _297
            require ext_code.size(stor2)
            staticcall stor2.getClass(uint256 arg1) with:
                    gas gas_remaining wei
                   args _297
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_424 + 31 len 1] != 3:
                _432 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_432] == mem[_432 + 31 len 1]
                mem[mem[64] + 4] = _297
                require ext_code.size(stor2)
                staticcall stor2.0x72136828 with:
                        gas gas_remaining wei
                       args _297
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_432 + 31 len 1] < 12:
                    _447 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_447] == mem[_447 + 31 len 1]
                    if mem[_447 + 31 len 1] < 11:
                        if stor5[t] and 1 > -1 / stor5[t]:
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        if stor6[t] < u:
                            revert with 'NH{q', 17
                        if stor6[t] - u and stor5[t] > -1 / stor6[t] - u:
                            revert with 'NH{q', 17
                        if v > !((stor6[t] * stor5[t]) - (u * stor5[t])):
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor6[t]
                        v = v + (stor6[t] * stor5[t]) - (u * stor5[t])
                        continue 
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                _462 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_462] == mem[_462 + 31 len 1]
                if mem[_462 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _446 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_446] == mem[_446 + 31 len 1]
            mem[mem[64] + 4] = _297
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _297
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_446 + 31 len 1] < 12:
                _463 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_463] == mem[_463 + 31 len 1]
                if mem[_463 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _472 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_472] == mem[_472 + 31 len 1]
            if mem[_472 + 31 len 1] < 11:
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            if stor5[t] and 8 > -1 / stor5[t]:
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            if stor6[t] < u:
                revert with 'NH{q', 17
            if stor6[t] - u and 8 * stor5[t] > -1 / stor6[t] - u:
                revert with 'NH{q', 17
            if v > !((stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])):
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = stor6[t]
            v = v + (stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])
            continue 
        mem[mem[64] + 4] = _297
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args _297
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _420 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_420] == mem[_420 + 31 len 1]
        mem[mem[64] + 4] = _297
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args _297
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_420 + 31 len 1] != 3:
            _428 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_428] == mem[_428 + 31 len 1]
            mem[mem[64] + 4] = _297
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _297
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_428 + 31 len 1] < 12:
                _439 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_439] == mem[_439 + 31 len 1]
                if mem[_439 + 31 len 1] < 11:
                    if stor4 and 1 > -1 / stor4:
                        revert with 'NH{q', 17
                    if block.timestamp < u:
                        revert with 'NH{q', 17
                    if block.timestamp - u and stor4 > -1 / block.timestamp - u:
                        revert with 'NH{q', 17
                    if v > !((block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    if s > !(v + (block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 9
                    sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + v + (block.timestamp * stor4) - (u * stor4)
                    continue 
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            _454 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] == mem[_454 + 31 len 1]
            if mem[_454 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _438 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_438] == mem[_438 + 31 len 1]
        mem[mem[64] + 4] = _297
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args _297
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_438 + 31 len 1] < 12:
            _455 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_455] == mem[_455 + 31 len 1]
            if mem[_455 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 9
                sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _468 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_468] == mem[_468 + 31 len 1]
        if mem[_468 + 31 len 1] < 11:
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx >= mem[96]:
                revert with 'NH{q', 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 9
            sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        if stor4 and 8 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < u:
            revert with 'NH{q', 17
        if block.timestamp - u and 8 * stor4 > -1 / block.timestamp - u:
            revert with 'NH{q', 17
        if v > !((block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        if s > !(v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 9
        sub_c6f3573d[mem[(32 * idx) + 128]] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor3)
    staticcall stor3.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _284 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_284] < s:
        revert with 0, 'Rewards have stopped'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s
    require ext_code.size(stor3)
    call stor3.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _293 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_293] == bool(mem[_293])
}

function sub_7dbde71f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _271 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 128]]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _280 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _271
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _276 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_276] == mem[_276 + 31 len 1]
        if mem[_276 + 31 len 1] != 3:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _287 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = _271
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args _271
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _286 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_286] == mem[_286 + 12 len 20]
        if mem[_286 + 12 len 20] != this.address:
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _293 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = _271
        mem[32] = 9
        t = 0
        u = sub_c6f3573d[mem[0]]
        v = 0
        while t < stor6.length:
            mem[0] = 6
            if u >= stor6[t]:
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = u
                v = v
                continue 
            if t >= stor5.length:
                revert with 'NH{q', 50
            mem[0] = 5
            mem[mem[64] + 4] = _271
            require ext_code.size(stor2)
            staticcall stor2.getRarity(uint256 arg1) with:
                    gas gas_remaining wei
                   args _271
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _409 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_409] == mem[_409 + 31 len 1]
            mem[mem[64] + 4] = _271
            require ext_code.size(stor2)
            staticcall stor2.getClass(uint256 arg1) with:
                    gas gas_remaining wei
                   args _271
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_409 + 31 len 1] != 3:
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_417] == mem[_417 + 31 len 1]
                mem[mem[64] + 4] = _271
                require ext_code.size(stor2)
                staticcall stor2.0x72136828 with:
                        gas gas_remaining wei
                       args _271
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if mem[_417 + 31 len 1] < 12:
                    _432 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_432] == mem[_432 + 31 len 1]
                    if mem[_432 + 31 len 1] < 11:
                        if stor5[t] and 1 > -1 / stor5[t]:
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        if stor6[t] < u:
                            revert with 'NH{q', 17
                        if stor6[t] - u and stor5[t] > -1 / stor6[t] - u:
                            revert with 'NH{q', 17
                        if v > !((stor6[t] * stor5[t]) - (u * stor5[t])):
                            revert with 'NH{q', 17
                        if t >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        if t == -1:
                            revert with 'NH{q', 17
                        t = t + 1
                        u = stor6[t]
                        v = v + (stor6[t] * stor5[t]) - (u * stor5[t])
                        continue 
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                _447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_447] == mem[_447 + 31 len 1]
                if mem[_447 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _431 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_431] == mem[_431 + 31 len 1]
            mem[mem[64] + 4] = _271
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _271
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_431 + 31 len 1] < 12:
                _448 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_448] == mem[_448 + 31 len 1]
                if mem[_448 + 31 len 1] < 11:
                    if stor5[t] and 2 > -1 / stor5[t]:
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    if stor6[t] < u:
                        revert with 'NH{q', 17
                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                        revert with 'NH{q', 17
                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                        revert with 'NH{q', 17
                    if t >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = 6
                    if t == -1:
                        revert with 'NH{q', 17
                    t = t + 1
                    u = stor6[t]
                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                    continue 
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            _457 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_457] == mem[_457 + 31 len 1]
            if mem[_457 + 31 len 1] < 11:
                if stor5[t] and 4 > -1 / stor5[t]:
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                if stor6[t] < u:
                    revert with 'NH{q', 17
                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                    revert with 'NH{q', 17
                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                    revert with 'NH{q', 17
                if t >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = 6
                if t == -1:
                    revert with 'NH{q', 17
                t = t + 1
                u = stor6[t]
                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                continue 
            if stor5[t] and 8 > -1 / stor5[t]:
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            if stor6[t] < u:
                revert with 'NH{q', 17
            if stor6[t] - u and 8 * stor5[t] > -1 / stor6[t] - u:
                revert with 'NH{q', 17
            if v > !((stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])):
                revert with 'NH{q', 17
            if t >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = 6
            if t == -1:
                revert with 'NH{q', 17
            t = t + 1
            u = stor6[t]
            v = v + (stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])
            continue 
        mem[mem[64] + 4] = _271
        require ext_code.size(stor2)
        staticcall stor2.getRarity(uint256 arg1) with:
                gas gas_remaining wei
               args _271
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _405 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_405] == mem[_405 + 31 len 1]
        mem[mem[64] + 4] = _271
        require ext_code.size(stor2)
        staticcall stor2.getClass(uint256 arg1) with:
                gas gas_remaining wei
               args _271
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_405 + 31 len 1] != 3:
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_413] == mem[_413 + 31 len 1]
            mem[mem[64] + 4] = _271
            require ext_code.size(stor2)
            staticcall stor2.0x72136828 with:
                    gas gas_remaining wei
                   args _271
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if mem[_413 + 31 len 1] < 12:
                _424 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_424] == mem[_424 + 31 len 1]
                if mem[_424 + 31 len 1] < 11:
                    if stor4 and 1 > -1 / stor4:
                        revert with 'NH{q', 17
                    if block.timestamp < u:
                        revert with 'NH{q', 17
                    if block.timestamp - u and stor4 > -1 / block.timestamp - u:
                        revert with 'NH{q', 17
                    if v > !((block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _470 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_470] < v + (block.timestamp * stor4) - (u * stor4):
                        if s > -1:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s
                        continue 
                    if s > !(v + (block.timestamp * stor4) - (u * stor4)):
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s + v + (block.timestamp * stor4) - (u * stor4)
                    continue 
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _481 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_481] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                    if s > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            _439 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_439] == mem[_439 + 31 len 1]
            if mem[_439 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _482 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_482] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                    if s > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _496 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_496] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                if s > -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _423 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_423] == mem[_423 + 31 len 1]
        mem[mem[64] + 4] = _271
        require ext_code.size(stor2)
        staticcall stor2.0x72136828 with:
                gas gas_remaining wei
               args _271
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if mem[_423 + 31 len 1] < 12:
            _440 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_440] == mem[_440 + 31 len 1]
            if mem[_440 + 31 len 1] < 11:
                if stor4 and 2 > -1 / stor4:
                    revert with 'NH{q', 17
                if block.timestamp < u:
                    revert with 'NH{q', 17
                if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                    revert with 'NH{q', 17
                if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _483 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_483] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                    if s > -1:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s
                    continue 
                if s > !(v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s + v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                continue 
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _497 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_497] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                if s > -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        _453 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_453] == mem[_453 + 31 len 1]
        if mem[_453 + 31 len 1] < 11:
            if stor4 and 4 > -1 / stor4:
                revert with 'NH{q', 17
            if block.timestamp < u:
                revert with 'NH{q', 17
            if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                revert with 'NH{q', 17
            if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _498 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_498] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                if s > -1:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s
                continue 
            if s > !(v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s + v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
            continue 
        if stor4 and 8 > -1 / stor4:
            revert with 'NH{q', 17
        if block.timestamp < u:
            revert with 'NH{q', 17
        if block.timestamp - u and 8 * stor4 > -1 / block.timestamp - u:
            revert with 'NH{q', 17
        if v > !((block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor3)
        staticcall stor3.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _505 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_505] < v + (block.timestamp * 8 * stor4) - (u * 8 * stor4):
            if s > -1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if s > !(v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)):
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
        continue 
    return s
}

function claimRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == msg.sender:
        if not stor8[arg1]:
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Rewards have stopped'
            sub_c6f3573d[arg1] = block.timestamp
            require ext_code.size(stor2)
            staticcall stor2.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            call stor3.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] != 3:
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Rewards have stopped'
                sub_c6f3573d[arg1] = block.timestamp
                require ext_code.size(stor2)
                staticcall stor2.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                call stor3.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(stor2)
                staticcall stor2.0x6bc80c66 with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    idx = 0
                    s = sub_c6f3573d[mem[0]]
                    t = 0
                    while idx < stor6.length:
                        mem[0] = 6
                        if s >= stor6[idx]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getRarity(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _521 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_521] == mem[_521 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getClass(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_521 + 31 len 1] != 3:
                            _537 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_537] == mem[_537 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_537 + 31 len 1] < 12:
                                _567 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_567] == mem[_567 + 31 len 1]
                                if mem[_567 + 31 len 1] < 11:
                                    if stor5[idx] and 1 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                    continue 
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            _597 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_597] == mem[_597 + 31 len 1]
                            if mem[_597 + 31 len 1] < 11:
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        _564 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_564] == mem[_564 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_564 + 31 len 1] < 12:
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_598] == mem[_598 + 31 len 1]
                            if mem[_598 + 31 len 1] < 11:
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        _617 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_617] == mem[_617 + 31 len 1]
                        if mem[_617 + 31 len 1] < 11:
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        if stor5[idx] and 8 > -1 / stor5[idx]:
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        if stor6[idx] < s:
                            revert with 'NH{q', 17
                        if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                            revert with 'NH{q', 17
                        if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx]
                        t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                        continue 
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getRarity(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _513 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_513] == mem[_513 + 31 len 1]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getClass(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_513 + 31 len 1] != 3:
                        _529 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_529] == mem[_529 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_529 + 31 len 1] < 12:
                            _551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_551] == mem[_551 + 31 len 1]
                            if mem[_551 + 31 len 1] < 11:
                                if stor4 and 1 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * stor4) - (s * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _643 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_643] < t + (block.timestamp * stor4) - (s * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _677 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_677] == mem[_677 + 12 len 20]
                                mem[mem[64] + 4] = mem[_677 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _761 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_761] == bool(mem[_761])
                            else:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _674 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_674] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _735 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_735] == mem[_735 + 12 len 20]
                                mem[mem[64] + 4] = mem[_735 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _827 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_827] == bool(mem[_827])
                        else:
                            _581 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_581] == mem[_581 + 31 len 1]
                            if mem[_581 + 31 len 1] < 11:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _678 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_678] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _747 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_747] == mem[_747 + 12 len 20]
                                mem[mem[64] + 4] = mem[_747 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _835 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_835] == bool(mem[_835])
                            else:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _737 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_737] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _807 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_807] == mem[_807 + 12 len 20]
                                mem[mem[64] + 4] = mem[_807 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _871 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_871] == bool(mem[_871])
                    else:
                        _549 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_549] == mem[_549 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_549 + 31 len 1] < 12:
                            _582 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_582] == mem[_582 + 31 len 1]
                            if mem[_582 + 31 len 1] < 11:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_679] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _748 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_748] == mem[_748 + 12 len 20]
                                mem[mem[64] + 4] = mem[_748 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _836 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_836] == bool(mem[_836])
                            else:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _739 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_739] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _808 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_808] == mem[_808 + 12 len 20]
                                mem[mem[64] + 4] = mem[_808 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _872 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_872] == bool(mem[_872])
                        else:
                            _609 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_609] == mem[_609 + 31 len 1]
                            if mem[_609 + 31 len 1] < 11:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _749 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_749] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _821 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_821] == mem[_821 + 12 len 20]
                                mem[mem[64] + 4] = mem[_821 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _877 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_877] == bool(mem[_877])
                            else:
                                if stor4 and 8 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _810 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_810] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _861 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_861] == mem[_861 + 12 len 20]
                                mem[mem[64] + 4] = mem[_861 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _889 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_889] == bool(mem[_889])
    else:
        if stor2 != msg.sender:
            revert with 0, 'You don't own that trainer'
        if not stor8[arg1]:
            require ext_code.size(stor3)
            staticcall stor3.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'Rewards have stopped'
            sub_c6f3573d[arg1] = block.timestamp
            require ext_code.size(stor2)
            staticcall stor2.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_code.size(stor3)
            call stor3.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            mem[ceil32(return_data.size) + 100] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getStatus(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            if ext_call.return_data[31 len 1] != 3:
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'Rewards have stopped'
                sub_c6f3573d[arg1] = block.timestamp
                require ext_code.size(stor2)
                staticcall stor2.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(stor3)
                call stor3.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                mem[(2 * ceil32(return_data.size)) + 100] = arg1
                require ext_code.size(stor2)
                staticcall stor2.0x6bc80c66 with:
                        gas gas_remaining wei
                       args arg1
                mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != this.address:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[0] = arg1
                    mem[32] = 9
                    idx = 0
                    s = sub_c6f3573d[mem[0]]
                    t = 0
                    while idx < stor6.length:
                        mem[0] = 6
                        if s >= stor6[idx]:
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        if idx >= stor5.length:
                            revert with 'NH{q', 50
                        mem[0] = 5
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getRarity(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_522] == mem[_522 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.getClass(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_522 + 31 len 1] != 3:
                            _538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_538] == mem[_538 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_538 + 31 len 1] < 12:
                                _568 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_568] == mem[_568 + 31 len 1]
                                if mem[_568 + 31 len 1] < 11:
                                    if stor5[idx] and 1 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                    continue 
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            _599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_599] == mem[_599 + 31 len 1]
                            if mem[_599 + 31 len 1] < 11:
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        _566 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_566] == mem[_566 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_566 + 31 len 1] < 12:
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_600] == mem[_600 + 31 len 1]
                            if mem[_600 + 31 len 1] < 11:
                                if stor5[idx] and 2 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                continue 
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        _618 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_618] == mem[_618 + 31 len 1]
                        if mem[_618 + 31 len 1] < 11:
                            if stor5[idx] and 4 > -1 / stor5[idx]:
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[idx] < s:
                                revert with 'NH{q', 17
                            if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                revert with 'NH{q', 17
                            if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                revert with 'NH{q', 17
                            if idx >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = stor6[idx]
                            t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                            continue 
                        if stor5[idx] and 8 > -1 / stor5[idx]:
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        if stor6[idx] < s:
                            revert with 'NH{q', 17
                        if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                            revert with 'NH{q', 17
                        if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = 6
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = stor6[idx]
                        t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                        continue 
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getRarity(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _514 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_514] == mem[_514 + 31 len 1]
                    mem[mem[64] + 4] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getClass(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if mem[_514 + 31 len 1] != 3:
                        _530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_530] == mem[_530 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_530 + 31 len 1] < 12:
                            _554 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_554] == mem[_554 + 31 len 1]
                            if mem[_554 + 31 len 1] < 11:
                                if stor4 and 1 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * stor4) - (s * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _644 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_644] < t + (block.timestamp * stor4) - (s * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _680 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_680] == mem[_680 + 12 len 20]
                                mem[mem[64] + 4] = mem[_680 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_766] == bool(mem[_766])
                            else:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _676 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_676] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _740 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_740] == mem[_740 + 12 len 20]
                                mem[mem[64] + 4] = mem[_740 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_831] == bool(mem[_831])
                        else:
                            _583 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_583] == mem[_583 + 31 len 1]
                            if mem[_583 + 31 len 1] < 11:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_681] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_752] == mem[_752 + 12 len 20]
                                mem[mem[64] + 4] = mem[_752 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _838 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_838] == bool(mem[_838])
                            else:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_742] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _813 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_813] == mem[_813 + 12 len 20]
                                mem[mem[64] + 4] = mem[_813 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _874 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_874] == bool(mem[_874])
                    else:
                        _550 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_550] == mem[_550 + 31 len 1]
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x72136828 with:
                                gas gas_remaining wei
                               args arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_550 + 31 len 1] < 12:
                            _584 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_584] == mem[_584 + 31 len 1]
                            if mem[_584 + 31 len 1] < 11:
                                if stor4 and 2 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _682 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_682] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _753 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_753] == mem[_753 + 12 len 20]
                                mem[mem[64] + 4] = mem[_753 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _839 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_839] == bool(mem[_839])
                            else:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _744 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_744] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _814 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_814] == mem[_814 + 12 len 20]
                                mem[mem[64] + 4] = mem[_814 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _875 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_875] == bool(mem[_875])
                        else:
                            _610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_610] == mem[_610 + 31 len 1]
                            if mem[_610 + 31 len 1] < 11:
                                if stor4 and 4 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _754 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_754] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _826 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_826] == mem[_826 + 12 len 20]
                                mem[mem[64] + 4] = mem[_826 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _878 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_878] == bool(mem[_878])
                            else:
                                if stor4 and 8 > -1 / stor4:
                                    revert with 'NH{q', 17
                                if block.timestamp < s:
                                    revert with 'NH{q', 17
                                if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                    revert with 'NH{q', 17
                                if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                    revert with 'NH{q', 17
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(stor3)
                                staticcall stor3.balanceOf(address arg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _816 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_816] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                    revert with 0, 'Rewards have stopped'
                                mem[0] = arg1
                                mem[32] = 9
                                sub_c6f3573d[arg1] = block.timestamp
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.ownerOf(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _866 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_866] == mem[_866 + 12 len 20]
                                mem[mem[64] + 4] = mem[_866 + 12 len 20]
                                mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                require ext_code.size(stor3)
                                call stor3.transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _890 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_890] == bool(mem[_890])
}

function sub_84cb37ea(?) payable {
    require calldata.size - 4 >= 32
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the FantomonTrainer contract can do that'
    if not stor8[arg1]:
        revert with 0, 'Trainer isn't healing here'
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] == 3:
        mem[ceil32(return_data.size) + 100] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args arg1
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == this.address:
            mem[(2 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(stor2)
            staticcall stor2.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == msg.sender:
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[31 len 1] != 3:
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'Rewards have stopped'
                        sub_c6f3573d[arg1] = block.timestamp
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x6bc80c66 with:
                                gas gas_remaining wei
                               args arg1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != this.address:
                            require ext_code.size(stor3)
                            staticcall stor3.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'Rewards have stopped'
                            sub_c6f3573d[arg1] = block.timestamp
                            require ext_code.size(stor2)
                            staticcall stor2.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            call stor3.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = 0
                            s = sub_c6f3573d[mem[0]]
                            t = 0
                            while idx < stor6.length:
                                mem[0] = 6
                                if s >= stor6[idx]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 5
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getRarity(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _558 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_558] == mem[_558 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_558 + 31 len 1] != 3:
                                    _574 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_574] == mem[_574 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_574 + 31 len 1] < 12:
                                        _604 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_604] == mem[_604 + 31 len 1]
                                        if mem[_604 + 31 len 1] < 11:
                                            if stor5[idx] and 1 > -1 / stor5[idx]:
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            if stor6[idx] < s:
                                                revert with 'NH{q', 17
                                            if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                                revert with 'NH{q', 17
                                            if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 6
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = stor6[idx]
                                            t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                            continue 
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    _634 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_634] == mem[_634 + 31 len 1]
                                    if mem[_634 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_601] == mem[_601 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_601 + 31 len 1] < 12:
                                    _635 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_635] == mem[_635 + 31 len 1]
                                    if mem[_635 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _654 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_654] == mem[_654 + 31 len 1]
                                if mem[_654 + 31 len 1] < 11:
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                if stor5[idx] and 8 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                                continue 
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _550 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_550] == mem[_550 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_550 + 31 len 1] != 3:
                                _566 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_566] == mem[_566 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_566 + 31 len 1] < 12:
                                    _588 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_588] == mem[_588 + 31 len 1]
                                    if mem[_588 + 31 len 1] < 11:
                                        if stor4 and 1 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * stor4) - (s * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _680 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_680] < t + (block.timestamp * stor4) - (s * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _714 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_714] == mem[_714 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_714 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _798 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_798] == bool(mem[_798])
                                    else:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _711 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_711] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _772 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_772] == mem[_772 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_772 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _865 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_865] == bool(mem[_865])
                                else:
                                    _618 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_618] == mem[_618 + 31 len 1]
                                    if mem[_618 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _715 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_715] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _784 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_784] == mem[_784 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_784 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _874 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_874] == bool(mem[_874])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _774 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_774] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _844 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_844] == mem[_844 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_844 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_913] == bool(mem[_913])
                            else:
                                _586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_586] == mem[_586 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_586 + 31 len 1] < 12:
                                    _619 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_619] == mem[_619 + 31 len 1]
                                    if mem[_619 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _716 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_716] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _785 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_785] == mem[_785 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_785 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _875 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_875] == bool(mem[_875])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _776 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_776] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _845 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_845] == mem[_845 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_845 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _915 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_915] == bool(mem[_915])
                                else:
                                    _646 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_646] == mem[_646 + 31 len 1]
                                    if mem[_646 + 31 len 1] < 11:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _786 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_786] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _858 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_858] == mem[_858 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_858 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _922 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_922] == bool(mem[_922])
                                    else:
                                        if stor4 and 8 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _847 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_847] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _900 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_900] == mem[_900 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_900 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _939 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_939] == bool(mem[_939])
            else:
                if stor2 != msg.sender:
                    revert with 0, 'You don't own that trainer'
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(4 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[31 len 1] != 3:
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'Rewards have stopped'
                        sub_c6f3573d[arg1] = block.timestamp
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(6 * ceil32(return_data.size)) + 100] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x6bc80c66 with:
                                gas gas_remaining wei
                               args arg1
                        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (7 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != this.address:
                            require ext_code.size(stor3)
                            staticcall stor3.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'Rewards have stopped'
                            sub_c6f3573d[arg1] = block.timestamp
                            require ext_code.size(stor2)
                            staticcall stor2.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            call stor3.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = 0
                            s = sub_c6f3573d[mem[0]]
                            t = 0
                            while idx < stor6.length:
                                mem[0] = 6
                                if s >= stor6[idx]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 5
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getRarity(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _559 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_559] == mem[_559 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_559 + 31 len 1] != 3:
                                    _575 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_575] == mem[_575 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_575 + 31 len 1] < 12:
                                        _605 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_605] == mem[_605 + 31 len 1]
                                        if mem[_605 + 31 len 1] < 11:
                                            if stor5[idx] and 1 > -1 / stor5[idx]:
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            if stor6[idx] < s:
                                                revert with 'NH{q', 17
                                            if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                                revert with 'NH{q', 17
                                            if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 6
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = stor6[idx]
                                            t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                            continue 
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    _636 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_636] == mem[_636 + 31 len 1]
                                    if mem[_636 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _603 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_603] == mem[_603 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_603 + 31 len 1] < 12:
                                    _637 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_637] == mem[_637 + 31 len 1]
                                    if mem[_637 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_655] == mem[_655 + 31 len 1]
                                if mem[_655 + 31 len 1] < 11:
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                if stor5[idx] and 8 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                                continue 
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _551 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_551] == mem[_551 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_551 + 31 len 1] != 3:
                                _567 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_567] == mem[_567 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_567 + 31 len 1] < 12:
                                    _591 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_591] == mem[_591 + 31 len 1]
                                    if mem[_591 + 31 len 1] < 11:
                                        if stor4 and 1 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * stor4) - (s * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _681 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_681] < t + (block.timestamp * stor4) - (s * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _717 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_717] == mem[_717 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_717 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _803 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_803] == bool(mem[_803])
                                    else:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _713 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_713] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _777 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_777] == mem[_777 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_777 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _870 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_870] == bool(mem[_870])
                                else:
                                    _620 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_620] == mem[_620 + 31 len 1]
                                    if mem[_620 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _718 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_718] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _789 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_789] == mem[_789 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_789 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _877 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_877] == bool(mem[_877])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _779 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_779] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _850 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_850] == mem[_850 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_850 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _918 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_918] == bool(mem[_918])
                            else:
                                _587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_587] == mem[_587 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_587 + 31 len 1] < 12:
                                    _621 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_621] == mem[_621 + 31 len 1]
                                    if mem[_621 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _719 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_719] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _790 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_790] == mem[_790 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_790 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _878 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_878] == bool(mem[_878])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _781 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_781] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _851 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_851] == mem[_851 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_851 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _920 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_920] == bool(mem[_920])
                                else:
                                    _647 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_647] == mem[_647 + 31 len 1]
                                    if mem[_647 + 31 len 1] < 11:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _791 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_791] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _863 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_863] == mem[_863 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_863 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _923 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_923] == bool(mem[_923])
                                    else:
                                        if stor4 and 8 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _853 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_853] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _905 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_905] == mem[_905 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_905 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _941 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_941] == bool(mem[_941])
    stor8[arg1] = 0
    if sub_d80018f9 < 1:
        revert with 'NH{q', 17
    sub_d80018f9--
}

function leave(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own that trainer'
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor8[arg1]:
        revert with 0, 'Trainer isn't healing here'
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(stor2)
    staticcall stor2.getStatus(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] == 3:
        mem[(2 * ceil32(return_data.size)) + 100] = arg1
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args arg1
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] == this.address:
            mem[(4 * ceil32(return_data.size)) + 100] = arg1
            require ext_code.size(stor2)
            staticcall stor2.ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] == msg.sender:
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[31 len 1] != 3:
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'Rewards have stopped'
                        sub_c6f3573d[arg1] = block.timestamp
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x6bc80c66 with:
                                gas gas_remaining wei
                               args arg1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != this.address:
                            require ext_code.size(stor3)
                            staticcall stor3.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'Rewards have stopped'
                            sub_c6f3573d[arg1] = block.timestamp
                            require ext_code.size(stor2)
                            staticcall stor2.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            call stor3.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = 0
                            s = sub_c6f3573d[mem[0]]
                            t = 0
                            while idx < stor6.length:
                                mem[0] = 6
                                if s >= stor6[idx]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 5
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getRarity(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _608 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_608] == mem[_608 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_608 + 31 len 1] != 3:
                                    _624 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_624] == mem[_624 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_624 + 31 len 1] < 12:
                                        _654 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_654] == mem[_654 + 31 len 1]
                                        if mem[_654 + 31 len 1] < 11:
                                            if stor5[idx] and 1 > -1 / stor5[idx]:
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            if stor6[idx] < s:
                                                revert with 'NH{q', 17
                                            if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                                revert with 'NH{q', 17
                                            if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 6
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = stor6[idx]
                                            t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                            continue 
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    _684 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_684] == mem[_684 + 31 len 1]
                                    if mem[_684 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_651] == mem[_651 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_651 + 31 len 1] < 12:
                                    _685 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_685] == mem[_685 + 31 len 1]
                                    if mem[_685 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _704 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_704] == mem[_704 + 31 len 1]
                                if mem[_704 + 31 len 1] < 11:
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                if stor5[idx] and 8 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                                continue 
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _600 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_600] == mem[_600 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_600 + 31 len 1] != 3:
                                _616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_616] == mem[_616 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_616 + 31 len 1] < 12:
                                    _638 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_638] == mem[_638 + 31 len 1]
                                    if mem[_638 + 31 len 1] < 11:
                                        if stor4 and 1 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * stor4) - (s * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _730 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_730] < t + (block.timestamp * stor4) - (s * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _764 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_764] == mem[_764 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_764 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _848 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_848] == bool(mem[_848])
                                    else:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _761 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_761] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _822 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_822] == mem[_822 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_822 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _916 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_916] == bool(mem[_916])
                                else:
                                    _668 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_668] == mem[_668 + 31 len 1]
                                    if mem[_668 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _765 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_765] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _834 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_834] == mem[_834 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_834 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _926 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_926] == bool(mem[_926])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _824 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_824] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _894 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_894] == mem[_894 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_894 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _970 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_970] == bool(mem[_970])
                            else:
                                _636 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_636] == mem[_636 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_636 + 31 len 1] < 12:
                                    _669 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_669] == mem[_669 + 31 len 1]
                                    if mem[_669 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _766 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_766] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _835 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_835] == mem[_835 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_835 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _927 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_927] == bool(mem[_927])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _826 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_826] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _895 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_895] == mem[_895 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_895 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _973 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_973] == bool(mem[_973])
                                else:
                                    _696 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_696] == mem[_696 + 31 len 1]
                                    if mem[_696 + 31 len 1] < 11:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _836 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_836] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _908 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_908] == mem[_908 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_908 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _982 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_982] == bool(mem[_982])
                                    else:
                                        if stor4 and 8 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _897 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_897] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _954 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_954] == mem[_954 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_954 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1010 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1010] == bool(mem[_1010])
            else:
                if stor2 != msg.sender:
                    revert with 0, 'You don't own that trainer'
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'Rewards have stopped'
                    sub_c6f3573d[arg1] = block.timestamp
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    mem[(6 * ceil32(return_data.size)) + 100] = arg1
                    require ext_code.size(stor2)
                    staticcall stor2.getStatus(uint256 arg1) with:
                            gas gas_remaining wei
                           args arg1
                    mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                    if ext_call.return_data[31 len 1] != 3:
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'Rewards have stopped'
                        sub_c6f3573d[arg1] = block.timestamp
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(ext_call.return_data[0]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        mem[(7 * ceil32(return_data.size)) + 100] = arg1
                        require ext_code.size(stor2)
                        staticcall stor2.0x6bc80c66 with:
                                gas gas_remaining wei
                               args arg1
                        mem[(7 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (8 * ceil32(return_data.size)) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != this.address:
                            require ext_code.size(stor3)
                            staticcall stor3.balanceOf(address arg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'Rewards have stopped'
                            sub_c6f3573d[arg1] = block.timestamp
                            require ext_code.size(stor2)
                            staticcall stor2.ownerOf(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            require ext_code.size(stor3)
                            call stor3.transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(ext_call.return_data[0]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[0] = arg1
                            mem[32] = 9
                            idx = 0
                            s = sub_c6f3573d[mem[0]]
                            t = 0
                            while idx < stor6.length:
                                mem[0] = 6
                                if s >= stor6[idx]:
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                if idx >= stor5.length:
                                    revert with 'NH{q', 50
                                mem[0] = 5
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getRarity(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _609 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_609] == mem[_609 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_609 + 31 len 1] != 3:
                                    _625 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_625] == mem[_625 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_625 + 31 len 1] < 12:
                                        _655 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_655] == mem[_655 + 31 len 1]
                                        if mem[_655 + 31 len 1] < 11:
                                            if stor5[idx] and 1 > -1 / stor5[idx]:
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            if stor6[idx] < s:
                                                revert with 'NH{q', 17
                                            if stor6[idx] - s and stor5[idx] > -1 / stor6[idx] - s:
                                                revert with 'NH{q', 17
                                            if t > !((stor6[idx] * stor5[idx]) - (s * stor5[idx])):
                                                revert with 'NH{q', 17
                                            if idx >= stor6.length:
                                                revert with 'NH{q', 50
                                            mem[0] = 6
                                            if idx == -1:
                                                revert with 'NH{q', 17
                                            idx = idx + 1
                                            s = stor6[idx]
                                            t = t + (stor6[idx] * stor5[idx]) - (s * stor5[idx])
                                            continue 
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    _686 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_686] == mem[_686 + 31 len 1]
                                    if mem[_686 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_653] == mem[_653 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_653 + 31 len 1] < 12:
                                    _687 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_687] == mem[_687 + 31 len 1]
                                    if mem[_687 + 31 len 1] < 11:
                                        if stor5[idx] and 2 > -1 / stor5[idx]:
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[idx] < s:
                                            revert with 'NH{q', 17
                                        if stor6[idx] - s and 2 * stor5[idx] > -1 / stor6[idx] - s:
                                            revert with 'NH{q', 17
                                        if t > !((stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])):
                                            revert with 'NH{q', 17
                                        if idx >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = stor6[idx]
                                        t = t + (stor6[idx] * 2 * stor5[idx]) - (s * 2 * stor5[idx])
                                        continue 
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                _705 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_705] == mem[_705 + 31 len 1]
                                if mem[_705 + 31 len 1] < 11:
                                    if stor5[idx] and 4 > -1 / stor5[idx]:
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[idx] < s:
                                        revert with 'NH{q', 17
                                    if stor6[idx] - s and 4 * stor5[idx] > -1 / stor6[idx] - s:
                                        revert with 'NH{q', 17
                                    if t > !((stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])):
                                        revert with 'NH{q', 17
                                    if idx >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if idx == -1:
                                        revert with 'NH{q', 17
                                    idx = idx + 1
                                    s = stor6[idx]
                                    t = t + (stor6[idx] * 4 * stor5[idx]) - (s * 4 * stor5[idx])
                                    continue 
                                if stor5[idx] and 8 > -1 / stor5[idx]:
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[idx] < s:
                                    revert with 'NH{q', 17
                                if stor6[idx] - s and 8 * stor5[idx] > -1 / stor6[idx] - s:
                                    revert with 'NH{q', 17
                                if t > !((stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])):
                                    revert with 'NH{q', 17
                                if idx >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = stor6[idx]
                                t = t + (stor6[idx] * 8 * stor5[idx]) - (s * 8 * stor5[idx])
                                continue 
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _601 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_601] == mem[_601 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_601 + 31 len 1] != 3:
                                _617 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_617] == mem[_617 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_617 + 31 len 1] < 12:
                                    _641 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_641] == mem[_641 + 31 len 1]
                                    if mem[_641 + 31 len 1] < 11:
                                        if stor4 and 1 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * stor4) - (s * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _731 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_731] < t + (block.timestamp * stor4) - (s * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _767 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_767] == mem[_767 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_767 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _853 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_853] == bool(mem[_853])
                                    else:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _763 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_763] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _827 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_827] == mem[_827 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_827 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _922 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_922] == bool(mem[_922])
                                else:
                                    _670 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_670] == mem[_670 + 31 len 1]
                                    if mem[_670 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _768 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_768] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _839 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_839] == mem[_839 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_839 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _929 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_929] == bool(mem[_929])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _829 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_829] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _900 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_900] == mem[_900 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_900 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _977 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_977] == bool(mem[_977])
                            else:
                                _637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_637] == mem[_637 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_637 + 31 len 1] < 12:
                                    _671 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_671] == mem[_671 + 31 len 1]
                                    if mem[_671 + 31 len 1] < 11:
                                        if stor4 and 2 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 2 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 2 * stor4) - (s * 2 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _769 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_769] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _840 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_840] == mem[_840 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_840 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _930 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_930] == bool(mem[_930])
                                    else:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _831 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_831] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_901] == mem[_901 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_901 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _980 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_980] == bool(mem[_980])
                                else:
                                    _697 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_697] == mem[_697 + 31 len 1]
                                    if mem[_697 + 31 len 1] < 11:
                                        if stor4 and 4 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 4 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 4 * stor4) - (s * 4 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _841 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_841] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_913] == mem[_913 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_913 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _983 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_983] == bool(mem[_983])
                                    else:
                                        if stor4 and 8 > -1 / stor4:
                                            revert with 'NH{q', 17
                                        if block.timestamp < s:
                                            revert with 'NH{q', 17
                                        if block.timestamp - s and 8 * stor4 > -1 / block.timestamp - s:
                                            revert with 'NH{q', 17
                                        if t > !((block.timestamp * 8 * stor4) - (s * 8 * stor4)):
                                            revert with 'NH{q', 17
                                        mem[mem[64] + 4] = this.address
                                        require ext_code.size(stor3)
                                        staticcall stor3.balanceOf(address arg1) with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _903 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_903] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
                                            revert with 0, 'Rewards have stopped'
                                        mem[0] = arg1
                                        mem[32] = 9
                                        sub_c6f3573d[arg1] = block.timestamp
                                        mem[mem[64] + 4] = arg1
                                        require ext_code.size(stor2)
                                        staticcall stor2.ownerOf(uint256 arg1) with:
                                                gas gas_remaining wei
                                               args arg1
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _959 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_959] == mem[_959 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_959 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.transfer(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1013 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1013] == bool(mem[_1013])
            require ext_code.size(stor2)
            call stor2.0x6d3ff596 with:
                 gas gas_remaining wei
                args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor8[arg1] = 0
    if sub_d80018f9 < 1:
        revert with 'NH{q', 17
    sub_d80018f9--
    stor0 = 1
}

function sub_dd2bc6c5(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1376 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _1376
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1379 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1379] == mem[_1379 + 12 len 20]
        if mem[_1379 + 12 len 20] != msg.sender:
            revert with 0, 'You don't own that trainer'
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        if not stor8[mem[(32 * idx) + 128]]:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1387 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.getStatus(uint256 arg1) with:
                gas gas_remaining wei
               args _1387
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1390 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1390] == mem[_1390 + 31 len 1]
        if mem[_1390 + 31 len 1] != 3:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1393 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.0x6bc80c66 with:
                gas gas_remaining wei
               args _1393
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1396 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1396] == mem[_1396 + 12 len 20]
        if mem[_1396 + 12 len 20] != this.address:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s
            continue 
        if idx >= mem[96]:
            revert with 'NH{q', 50
        _1399 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        require ext_code.size(stor2)
        staticcall stor2.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args _1399
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1402 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_1402] == mem[_1402 + 12 len 20]
        if mem[_1402 + 12 len 20] == msg.sender:
            mem[0] = _1399
            mem[32] = 8
            if not stor8[_1399]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1419 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1419] < 0:
                    revert with 0, 'Rewards have stopped'
                mem[0] = _1399
                mem[32] = 9
                sub_c6f3573d[_1399] = block.timestamp
                mem[mem[64] + 4] = _1399
                require ext_code.size(stor2)
                staticcall stor2.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1440 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1440] == mem[_1440 + 12 len 20]
                mem[mem[64] + 4] = mem[_1440 + 12 len 20]
                mem[mem[64] + 36] = 0
                require ext_code.size(stor3)
                call stor3.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1470] == bool(mem[_1470])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1498 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1498
                require ext_code.size(stor2)
                call stor2.0x6d3ff596 with:
                     gas gas_remaining wei
                    args _1498
            else:
                mem[mem[64] + 4] = _1399
                require ext_code.size(stor2)
                staticcall stor2.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1412 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1412] == mem[_1412 + 31 len 1]
                if mem[_1412 + 31 len 1] != 3:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1445] < 0:
                        revert with 0, 'Rewards have stopped'
                    mem[0] = _1399
                    mem[32] = 9
                    sub_c6f3573d[_1399] = block.timestamp
                    mem[mem[64] + 4] = _1399
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1399
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1465 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1465] == mem[_1465 + 12 len 20]
                    mem[mem[64] + 4] = mem[_1465 + 12 len 20]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1511 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1511] == bool(mem[_1511])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1548 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1548
                    require ext_code.size(stor2)
                    call stor2.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _1548
                else:
                    mem[mem[64] + 4] = _1399
                    require ext_code.size(stor2)
                    staticcall stor2.0x6bc80c66 with:
                            gas gas_remaining wei
                           args _1399
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1435 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1435] == mem[_1435 + 12 len 20]
                    if mem[_1435 + 12 len 20] != this.address:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1480 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1480] < 0:
                            revert with 0, 'Rewards have stopped'
                        mem[0] = _1399
                        mem[32] = 9
                        sub_c6f3573d[_1399] = block.timestamp
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1522 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1522] == mem[_1522 + 12 len 20]
                        mem[mem[64] + 4] = mem[_1522 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1568 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1568] == bool(mem[_1568])
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1605 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1605
                        require ext_code.size(stor2)
                        call stor2.0x6d3ff596 with:
                             gas gas_remaining wei
                            args _1605
                    else:
                        mem[0] = _1399
                        mem[32] = 9
                        t = 0
                        u = sub_c6f3573d[mem[0]]
                        v = 0
                        while t < stor6.length:
                            mem[0] = 6
                            if u >= stor6[t]:
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = u
                                v = v
                                continue 
                            if t >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = 5
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2074 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2074] == mem[_2074 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2074 + 31 len 1] != 3:
                                _2090 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2090] == mem[_2090 + 31 len 1]
                                mem[mem[64] + 4] = _1399
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args _1399
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2090 + 31 len 1] < 12:
                                    _2120 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2120] == mem[_2120 + 31 len 1]
                                    if mem[_2120 + 31 len 1] < 11:
                                        if stor5[t] and 1 > -1 / stor5[t]:
                                            revert with 'NH{q', 17
                                        if t >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[t] < u:
                                            revert with 'NH{q', 17
                                        if stor6[t] - u and stor5[t] > -1 / stor6[t] - u:
                                            revert with 'NH{q', 17
                                        if v > !((stor6[t] * stor5[t]) - (u * stor5[t])):
                                            revert with 'NH{q', 17
                                        if t >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        u = stor6[t]
                                        v = v + (stor6[t] * stor5[t]) - (u * stor5[t])
                                        continue 
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                _2150 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2150] == mem[_2150 + 31 len 1]
                                if mem[_2150 + 31 len 1] < 11:
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            _2117 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2117] == mem[_2117 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2117 + 31 len 1] < 12:
                                _2151 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2151] == mem[_2151 + 31 len 1]
                                if mem[_2151 + 31 len 1] < 11:
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            _2170 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2170] == mem[_2170 + 31 len 1]
                            if mem[_2170 + 31 len 1] < 11:
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            if stor5[t] and 8 > -1 / stor5[t]:
                                revert with 'NH{q', 17
                            if t >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[t] < u:
                                revert with 'NH{q', 17
                            if stor6[t] - u and 8 * stor5[t] > -1 / stor6[t] - u:
                                revert with 'NH{q', 17
                            if v > !((stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])):
                                revert with 'NH{q', 17
                            if t >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = stor6[t]
                            v = v + (stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])
                            continue 
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.getRarity(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2066 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2066] == mem[_2066 + 31 len 1]
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.getClass(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_2066 + 31 len 1] != 3:
                            _2082 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2082] == mem[_2082 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2082 + 31 len 1] < 12:
                                _2104 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2104] == mem[_2104 + 31 len 1]
                                if mem[_2104 + 31 len 1] < 11:
                                    if stor4 and 1 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * stor4) - (u * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2196 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2196] < v + (block.timestamp * stor4) - (u * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2230 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2230] == mem[_2230 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2230 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * stor4) - (u * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * stor4) - (u * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2314 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2314] == bool(mem[_2314])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2390 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2390
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2390
                                else:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2227 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2227] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2288 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2288] == mem[_2288 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2288 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2381 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2381] == bool(mem[_2381])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2440 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2440
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2440
                            else:
                                _2134 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2134] == mem[_2134 + 31 len 1]
                                if mem[_2134 + 31 len 1] < 11:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2231 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2231] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2300 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2300] == mem[_2300 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2300 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2392 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2392] == bool(mem[_2392])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2455 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2455
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2455
                                else:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2290 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2290] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2360 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2360] == mem[_2360 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2360 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2443 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2443] == bool(mem[_2443])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2502 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2502
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2502
                        else:
                            _2102 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2102] == mem[_2102 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2102 + 31 len 1] < 12:
                                _2135 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2135] == mem[_2135 + 31 len 1]
                                if mem[_2135 + 31 len 1] < 11:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2232 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2232] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2301 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2301] == mem[_2301 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2301 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2393 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2393] == bool(mem[_2393])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2457 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2457
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2457
                                else:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2292 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2292] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2361 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2361] == mem[_2361 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2361 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2445 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2445] == bool(mem[_2445])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2504 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2504
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2504
                            else:
                                _2162 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2162] == mem[_2162 + 31 len 1]
                                if mem[_2162 + 31 len 1] < 11:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2302 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2302] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2374 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2374] == mem[_2374 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2374 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2459 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2459] == bool(mem[_2459])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2516 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2516
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2516
                                else:
                                    if stor4 and 8 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 8 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 8 * stor4) - (u * 8 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2363 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2363] < v + (block.timestamp * 8 * stor4) - (u * 8 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2423 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2423] == mem[_2423 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2423 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2507 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2507] == bool(mem[_2507])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2546 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2546
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2546
        else:
            if stor2 != msg.sender:
                revert with 0, 'You don't own that trainer'
            mem[0] = _1399
            mem[32] = 8
            if not stor8[_1399]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor3)
                staticcall stor3.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1421 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_1421] < 0:
                    revert with 0, 'Rewards have stopped'
                mem[0] = _1399
                mem[32] = 9
                sub_c6f3573d[_1399] = block.timestamp
                mem[mem[64] + 4] = _1399
                require ext_code.size(stor2)
                staticcall stor2.ownerOf(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1447 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1447] == mem[_1447 + 12 len 20]
                mem[mem[64] + 4] = mem[_1447 + 12 len 20]
                mem[mem[64] + 36] = 0
                require ext_code.size(stor3)
                call stor3.transfer(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4], 0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1476 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1476] == bool(mem[_1476])
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _1514 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = _1514
                require ext_code.size(stor2)
                call stor2.0x6d3ff596 with:
                     gas gas_remaining wei
                    args _1514
            else:
                mem[mem[64] + 4] = _1399
                require ext_code.size(stor2)
                staticcall stor2.getStatus(uint256 arg1) with:
                        gas gas_remaining wei
                       args _1399
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1415 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_1415] == mem[_1415 + 31 len 1]
                if mem[_1415 + 31 len 1] != 3:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(stor3)
                    staticcall stor3.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1449 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_1449] < 0:
                        revert with 0, 'Rewards have stopped'
                    mem[0] = _1399
                    mem[32] = 9
                    sub_c6f3573d[_1399] = block.timestamp
                    mem[mem[64] + 4] = _1399
                    require ext_code.size(stor2)
                    staticcall stor2.ownerOf(uint256 arg1) with:
                            gas gas_remaining wei
                           args _1399
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1473 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1473] == mem[_1473 + 12 len 20]
                    mem[mem[64] + 4] = mem[_1473 + 12 len 20]
                    mem[mem[64] + 36] = 0
                    require ext_code.size(stor3)
                    call stor3.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4], 0
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1525 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1525] == bool(mem[_1525])
                    if idx >= mem[96]:
                        revert with 'NH{q', 50
                    _1558 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = _1558
                    require ext_code.size(stor2)
                    call stor2.0x6d3ff596 with:
                         gas gas_remaining wei
                        args _1558
                else:
                    mem[mem[64] + 4] = _1399
                    require ext_code.size(stor2)
                    staticcall stor2.0x6bc80c66 with:
                            gas gas_remaining wei
                           args _1399
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_1444] == mem[_1444 + 12 len 20]
                    if mem[_1444 + 12 len 20] != this.address:
                        mem[mem[64] + 4] = this.address
                        require ext_code.size(stor3)
                        staticcall stor3.balanceOf(address arg1) with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1486 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_1486] < 0:
                            revert with 0, 'Rewards have stopped'
                        mem[0] = _1399
                        mem[32] = 9
                        sub_c6f3573d[_1399] = block.timestamp
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.ownerOf(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1530 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1530] == mem[_1530 + 12 len 20]
                        mem[mem[64] + 4] = mem[_1530 + 12 len 20]
                        mem[mem[64] + 36] = 0
                        require ext_code.size(stor3)
                        call stor3.transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4], 0
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1578 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1578] == bool(mem[_1578])
                        if idx >= mem[96]:
                            revert with 'NH{q', 50
                        _1617 = mem[(32 * idx) + 128]
                        mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = _1617
                        require ext_code.size(stor2)
                        call stor2.0x6d3ff596 with:
                             gas gas_remaining wei
                            args _1617
                    else:
                        mem[0] = _1399
                        mem[32] = 9
                        t = 0
                        u = sub_c6f3573d[mem[0]]
                        v = 0
                        while t < stor6.length:
                            mem[0] = 6
                            if u >= stor6[t]:
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = u
                                v = v
                                continue 
                            if t >= stor5.length:
                                revert with 'NH{q', 50
                            mem[0] = 5
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.getRarity(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _2075 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2075] == mem[_2075 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2075 + 31 len 1] != 3:
                                _2091 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2091] == mem[_2091 + 31 len 1]
                                mem[mem[64] + 4] = _1399
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args _1399
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_2091 + 31 len 1] < 12:
                                    _2121 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2121] == mem[_2121 + 31 len 1]
                                    if mem[_2121 + 31 len 1] < 11:
                                        if stor5[t] and 1 > -1 / stor5[t]:
                                            revert with 'NH{q', 17
                                        if t >= stor6.length:
                                            revert with 'NH{q', 50
                                        if stor6[t] < u:
                                            revert with 'NH{q', 17
                                        if stor6[t] - u and stor5[t] > -1 / stor6[t] - u:
                                            revert with 'NH{q', 17
                                        if v > !((stor6[t] * stor5[t]) - (u * stor5[t])):
                                            revert with 'NH{q', 17
                                        if t >= stor6.length:
                                            revert with 'NH{q', 50
                                        mem[0] = 6
                                        if t == -1:
                                            revert with 'NH{q', 17
                                        t = t + 1
                                        u = stor6[t]
                                        v = v + (stor6[t] * stor5[t]) - (u * stor5[t])
                                        continue 
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                _2152 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2152] == mem[_2152 + 31 len 1]
                                if mem[_2152 + 31 len 1] < 11:
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            _2119 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2119] == mem[_2119 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2119 + 31 len 1] < 12:
                                _2153 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2153] == mem[_2153 + 31 len 1]
                                if mem[_2153 + 31 len 1] < 11:
                                    if stor5[t] and 2 > -1 / stor5[t]:
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    if stor6[t] < u:
                                        revert with 'NH{q', 17
                                    if stor6[t] - u and 2 * stor5[t] > -1 / stor6[t] - u:
                                        revert with 'NH{q', 17
                                    if v > !((stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])):
                                        revert with 'NH{q', 17
                                    if t >= stor6.length:
                                        revert with 'NH{q', 50
                                    mem[0] = 6
                                    if t == -1:
                                        revert with 'NH{q', 17
                                    t = t + 1
                                    u = stor6[t]
                                    v = v + (stor6[t] * 2 * stor5[t]) - (u * 2 * stor5[t])
                                    continue 
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            _2171 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2171] == mem[_2171 + 31 len 1]
                            if mem[_2171 + 31 len 1] < 11:
                                if stor5[t] and 4 > -1 / stor5[t]:
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                if stor6[t] < u:
                                    revert with 'NH{q', 17
                                if stor6[t] - u and 4 * stor5[t] > -1 / stor6[t] - u:
                                    revert with 'NH{q', 17
                                if v > !((stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])):
                                    revert with 'NH{q', 17
                                if t >= stor6.length:
                                    revert with 'NH{q', 50
                                mem[0] = 6
                                if t == -1:
                                    revert with 'NH{q', 17
                                t = t + 1
                                u = stor6[t]
                                v = v + (stor6[t] * 4 * stor5[t]) - (u * 4 * stor5[t])
                                continue 
                            if stor5[t] and 8 > -1 / stor5[t]:
                                revert with 'NH{q', 17
                            if t >= stor6.length:
                                revert with 'NH{q', 50
                            if stor6[t] < u:
                                revert with 'NH{q', 17
                            if stor6[t] - u and 8 * stor5[t] > -1 / stor6[t] - u:
                                revert with 'NH{q', 17
                            if v > !((stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])):
                                revert with 'NH{q', 17
                            if t >= stor6.length:
                                revert with 'NH{q', 50
                            mem[0] = 6
                            if t == -1:
                                revert with 'NH{q', 17
                            t = t + 1
                            u = stor6[t]
                            v = v + (stor6[t] * 8 * stor5[t]) - (u * 8 * stor5[t])
                            continue 
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.getRarity(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _2067 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_2067] == mem[_2067 + 31 len 1]
                        mem[mem[64] + 4] = _1399
                        require ext_code.size(stor2)
                        staticcall stor2.getClass(uint256 arg1) with:
                                gas gas_remaining wei
                               args _1399
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if mem[_2067 + 31 len 1] != 3:
                            _2083 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2083] == mem[_2083 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2083 + 31 len 1] < 12:
                                _2107 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2107] == mem[_2107 + 31 len 1]
                                if mem[_2107 + 31 len 1] < 11:
                                    if stor4 and 1 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * stor4) - (u * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2197 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2197] < v + (block.timestamp * stor4) - (u * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2233 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2233] == mem[_2233 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2233 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * stor4) - (u * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * stor4) - (u * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2319 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2319] == bool(mem[_2319])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2395 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2395
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2395
                                else:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2229 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2229] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2293 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2293] == mem[_2293 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2293 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2386 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2386] == bool(mem[_2386])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2447 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2447
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2447
                            else:
                                _2136 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2136] == mem[_2136 + 31 len 1]
                                if mem[_2136 + 31 len 1] < 11:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2234 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2234] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2305 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2305] == mem[_2305 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2305 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2397 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2397] == bool(mem[_2397])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2461 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2461
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2461
                                else:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2295 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2295] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2366 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2366] == mem[_2366 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2366 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2450 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2450] == bool(mem[_2450])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2508 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2508
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2508
                        else:
                            _2103 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_2103] == mem[_2103 + 31 len 1]
                            mem[mem[64] + 4] = _1399
                            require ext_code.size(stor2)
                            staticcall stor2.0x72136828 with:
                                    gas gas_remaining wei
                                   args _1399
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_2103 + 31 len 1] < 12:
                                _2137 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2137] == mem[_2137 + 31 len 1]
                                if mem[_2137 + 31 len 1] < 11:
                                    if stor4 and 2 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 2 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 2 * stor4) - (u * 2 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2235 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2235] < v + (block.timestamp * 2 * stor4) - (u * 2 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2306 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2306] == mem[_2306 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2306 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 2 * stor4) - (u * 2 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2398 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2398] == bool(mem[_2398])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2463 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2463
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2463
                                else:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2297 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2297] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2367 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2367] == mem[_2367 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2367 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2452 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2452] == bool(mem[_2452])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2510 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2510
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2510
                            else:
                                _2163 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_2163] == mem[_2163 + 31 len 1]
                                if mem[_2163 + 31 len 1] < 11:
                                    if stor4 and 4 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 4 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 4 * stor4) - (u * 4 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2307 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2307] < v + (block.timestamp * 4 * stor4) - (u * 4 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2379 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2379] == mem[_2379 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2379 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 4 * stor4) - (u * 4 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2465 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2465] == bool(mem[_2465])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2520 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2520
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2520
                                else:
                                    if stor4 and 8 > -1 / stor4:
                                        revert with 'NH{q', 17
                                    if block.timestamp < u:
                                        revert with 'NH{q', 17
                                    if block.timestamp - u and 8 * stor4 > -1 / block.timestamp - u:
                                        revert with 'NH{q', 17
                                    if v > !((block.timestamp * 8 * stor4) - (u * 8 * stor4)):
                                        revert with 'NH{q', 17
                                    mem[mem[64] + 4] = this.address
                                    require ext_code.size(stor3)
                                    staticcall stor3.balanceOf(address arg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2369 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_2369] < v + (block.timestamp * 8 * stor4) - (u * 8 * stor4):
                                        revert with 0, 'Rewards have stopped'
                                    mem[0] = _1399
                                    mem[32] = 9
                                    sub_c6f3573d[_1399] = block.timestamp
                                    mem[mem[64] + 4] = _1399
                                    require ext_code.size(stor2)
                                    staticcall stor2.ownerOf(uint256 arg1) with:
                                            gas gas_remaining wei
                                           args _1399
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2429 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2429] == mem[_2429 + 12 len 20]
                                    mem[mem[64] + 4] = mem[_2429 + 12 len 20]
                                    mem[mem[64] + 36] = v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
                                    require ext_code.size(stor3)
                                    call stor3.transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4], v + (block.timestamp * 8 * stor4) - (u * 8 * stor4)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2513 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_2513] == bool(mem[_2513])
                                    if idx >= mem[96]:
                                        revert with 'NH{q', 50
                                    _2548 = mem[(32 * idx) + 128]
                                    mem[mem[64]] = 0x6d3ff59600000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = _2548
                                    require ext_code.size(stor2)
                                    call stor2.0x6d3ff596 with:
                                         gas gas_remaining wei
                                        args _2548
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx >= mem[96]:
            revert with 'NH{q', 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 8
        stor8[mem[(32 * idx) + 128]] = 0
        if s > -2:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        s = s + 1
        continue 
    if sub_d80018f9 < s:
        revert with 'NH{q', 17
    sub_d80018f9 -= s
    stor0 = 1
}



}
