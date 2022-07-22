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
    emit 0xcabd065b: arg1
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
        staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
                staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
    staticcall stor3.0x70a08231 with:
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
    staticcall stor3.0x70a08231 with:
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
    call stor3.0xa9059cbb with:
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
            staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
                    staticcall stor3.0x70a08231 with:
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
                staticcall stor3.0x70a08231 with:
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
                staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
                staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
        staticcall stor3.0x70a08231 with:
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
            staticcall stor3.0x70a08231 with:
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
            call stor3.0xa9059cbb with:
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
                staticcall stor3.0x70a08231 with:
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
                call stor3.0xa9059cbb with:
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
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
            staticcall stor3.0x70a08231 with:
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
            call stor3.0xa9059cbb with:
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
                staticcall stor3.0x70a08231 with:
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
                call stor3.0xa9059cbb with:
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
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                                staticcall stor3.0x70a08231 with:
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
                                call stor3.0xa9059cbb with:
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
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                        staticcall stor3.0x70a08231 with:
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
                        call stor3.0xa9059cbb with:
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
                            staticcall stor3.0x70a08231 with:
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
                            call stor3.0xa9059cbb with:
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
                                _606 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_606] == mem[_606 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_606 + 31 len 1] != 3:
                                    _622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_622] == mem[_622 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_622 + 31 len 1] < 12:
                                        _652 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_652] == mem[_652 + 31 len 1]
                                        if mem[_652 + 31 len 1] < 11:
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
                                    _682 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_682] == mem[_682 + 31 len 1]
                                    if mem[_682 + 31 len 1] < 11:
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
                                _649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_649] == mem[_649 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_649 + 31 len 1] < 12:
                                    _683 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_683] == mem[_683 + 31 len 1]
                                    if mem[_683 + 31 len 1] < 11:
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
                                _702 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_702] == mem[_702 + 31 len 1]
                                if mem[_702 + 31 len 1] < 11:
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
                            _598 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_598] == mem[_598 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_598 + 31 len 1] != 3:
                                _614 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_614] == mem[_614 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_614 + 31 len 1] < 12:
                                    _636 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_636] == mem[_636 + 31 len 1]
                                    if mem[_636 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _728 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_728] < t + (block.timestamp * stor4) - (s * stor4):
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
                                        _762 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_762] == mem[_762 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_762 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _846 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_846] == bool(mem[_846])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _759 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_759] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _820 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_820] == mem[_820 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_820 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _913 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_913] == bool(mem[_913])
                                else:
                                    _666 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_666] == mem[_666 + 31 len 1]
                                    if mem[_666 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
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
                                        _832 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_832] == mem[_832 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_832 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _822 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_822] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _892 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_892] == mem[_892 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_892 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _965 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_965] == bool(mem[_965])
                            else:
                                _634 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_634] == mem[_634 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_634 + 31 len 1] < 12:
                                    _667 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_667] == mem[_667 + 31 len 1]
                                    if mem[_667 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _764 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_764] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _833 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_833] == mem[_833 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_833 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _923 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_923] == bool(mem[_923])
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
                                        staticcall stor3.0x70a08231 with:
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
                                        _893 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_893] == mem[_893 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_893 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _967 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_967] == bool(mem[_967])
                                else:
                                    _694 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_694] == mem[_694 + 31 len 1]
                                    if mem[_694 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _834 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_834] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _906 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_906] == mem[_906 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_906 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _974 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_974] == bool(mem[_974])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _895 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_895] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
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
                                        _948 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_948] == mem[_948 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_948 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1003 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1003] == bool(mem[_1003])
            else:
                if stor2 != msg.sender:
                    revert with 0, 'You don't own that trainer'
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                        staticcall stor3.0x70a08231 with:
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
                        call stor3.0xa9059cbb with:
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
                            staticcall stor3.0x70a08231 with:
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
                            call stor3.0xa9059cbb with:
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
                                _607 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_607] == mem[_607 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_607 + 31 len 1] != 3:
                                    _623 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_623] == mem[_623 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_623 + 31 len 1] < 12:
                                        _653 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_653] == mem[_653 + 31 len 1]
                                        if mem[_653 + 31 len 1] < 11:
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
                                _703 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_703] == mem[_703 + 31 len 1]
                                if mem[_703 + 31 len 1] < 11:
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
                            _599 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_599] == mem[_599 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_599 + 31 len 1] != 3:
                                _615 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_615] == mem[_615 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_615 + 31 len 1] < 12:
                                    _639 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_639] == mem[_639 + 31 len 1]
                                    if mem[_639 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _729 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_729] < t + (block.timestamp * stor4) - (s * stor4):
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
                                        _765 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_765] == mem[_765 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_765 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _851 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_851] == bool(mem[_851])
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
                                        staticcall stor3.0x70a08231 with:
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
                                        _825 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_825] == mem[_825 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_825 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _918 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_918] == bool(mem[_918])
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
                                        staticcall stor3.0x70a08231 with:
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
                                        _837 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_837] == mem[_837 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_837 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _925 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_925] == bool(mem[_925])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _827 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_827] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _898 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_898] == mem[_898 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_898 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
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
                                _635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_635] == mem[_635 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_635 + 31 len 1] < 12:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _767 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_767] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _838 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_838] == mem[_838 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_838 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
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
                                        staticcall stor3.0x70a08231 with:
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
                                        _899 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_899] == mem[_899 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_899 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _972 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_972] == bool(mem[_972])
                                else:
                                    _695 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_695] == mem[_695 + 31 len 1]
                                    if mem[_695 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _839 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_839] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _911 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_911] == mem[_911 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_911 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _975 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_975] == bool(mem[_975])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_901] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
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
                                        _953 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_953] == mem[_953 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_953 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1005 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1005] == bool(mem[_1005])
    stor8[arg1] = 0
    if sub_d80018f9 < 1:
        revert with 'NH{q', 17
    sub_d80018f9--
    emit 0x25c1897a: arg1
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
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                        staticcall stor3.0x70a08231 with:
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
                        call stor3.0xa9059cbb with:
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
                            staticcall stor3.0x70a08231 with:
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
                            call stor3.0xa9059cbb with:
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
                                _656 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_656] == mem[_656 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_656 + 31 len 1] != 3:
                                    _672 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_672] == mem[_672 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_672 + 31 len 1] < 12:
                                        _702 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_702] == mem[_702 + 31 len 1]
                                        if mem[_702 + 31 len 1] < 11:
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
                                    _732 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_732] == mem[_732 + 31 len 1]
                                    if mem[_732 + 31 len 1] < 11:
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
                                _699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_699] == mem[_699 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_699 + 31 len 1] < 12:
                                    _733 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_733] == mem[_733 + 31 len 1]
                                    if mem[_733 + 31 len 1] < 11:
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
                                _752 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_752] == mem[_752 + 31 len 1]
                                if mem[_752 + 31 len 1] < 11:
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
                            _648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_648] == mem[_648 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_648 + 31 len 1] != 3:
                                _664 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_664] == mem[_664 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_664 + 31 len 1] < 12:
                                    _686 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_686] == mem[_686 + 31 len 1]
                                    if mem[_686 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _778 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_778] < t + (block.timestamp * stor4) - (s * stor4):
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
                                        _812 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_812] == mem[_812 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_812 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _896 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_896] == bool(mem[_896])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _809 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_809] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _870 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_870] == mem[_870 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_870 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _964 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_964] == bool(mem[_964])
                                else:
                                    _716 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_716] == mem[_716 + 31 len 1]
                                    if mem[_716 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _813 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_813] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _882 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_882] == mem[_882 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_882 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _974 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_974] == bool(mem[_974])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _872 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_872] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _942 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_942] == mem[_942 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_942 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1018 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1018] == bool(mem[_1018])
                            else:
                                _684 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_684] == mem[_684 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_684 + 31 len 1] < 12:
                                    _717 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_717] == mem[_717 + 31 len 1]
                                    if mem[_717 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _814 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_814] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _883 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_883] == mem[_883 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_883 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _975 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_975] == bool(mem[_975])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _874 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_874] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _943 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_943] == mem[_943 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_943 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1021 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1021] == bool(mem[_1021])
                                else:
                                    _744 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_744] == mem[_744 + 31 len 1]
                                    if mem[_744 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _884 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_884] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _956 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_956] == mem[_956 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_956 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1030 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1030] == bool(mem[_1030])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _945 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_945] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
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
                                        _1002 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1002] == mem[_1002 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_1002 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1062 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1062] == bool(mem[_1062])
            else:
                if stor2 != msg.sender:
                    revert with 0, 'You don't own that trainer'
                if not stor8[arg1]:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
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
                    call stor3.0xa9059cbb with:
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
                        staticcall stor3.0x70a08231 with:
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
                        call stor3.0xa9059cbb with:
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
                            staticcall stor3.0x70a08231 with:
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
                            call stor3.0xa9059cbb with:
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
                                _657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_657] == mem[_657 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.getClass(uint256 arg1) with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_657 + 31 len 1] != 3:
                                    _673 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_673] == mem[_673 + 31 len 1]
                                    mem[mem[64] + 4] = arg1
                                    require ext_code.size(stor2)
                                    staticcall stor2.0x72136828 with:
                                            gas gas_remaining wei
                                           args arg1
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if mem[_673 + 31 len 1] < 12:
                                        _703 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_703] == mem[_703 + 31 len 1]
                                        if mem[_703 + 31 len 1] < 11:
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
                                    _734 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_734] == mem[_734 + 31 len 1]
                                    if mem[_734 + 31 len 1] < 11:
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
                                _701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_701] == mem[_701 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_701 + 31 len 1] < 12:
                                    _735 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_735] == mem[_735 + 31 len 1]
                                    if mem[_735 + 31 len 1] < 11:
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
                                _753 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_753] == mem[_753 + 31 len 1]
                                if mem[_753 + 31 len 1] < 11:
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
                            _649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_649] == mem[_649 + 31 len 1]
                            mem[mem[64] + 4] = arg1
                            require ext_code.size(stor2)
                            staticcall stor2.getClass(uint256 arg1) with:
                                    gas gas_remaining wei
                                   args arg1
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if mem[_649 + 31 len 1] != 3:
                                _665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_665] == mem[_665 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_665 + 31 len 1] < 12:
                                    _689 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_689] == mem[_689 + 31 len 1]
                                    if mem[_689 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _779 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_779] < t + (block.timestamp * stor4) - (s * stor4):
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
                                        _815 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_815] == mem[_815 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_815 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * stor4) - (s * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * stor4) - (s * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _901 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_901] == bool(mem[_901])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _811 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_811] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _875 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_875] == mem[_875 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_875 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _970 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_970] == bool(mem[_970])
                                else:
                                    _718 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_718] == mem[_718 + 31 len 1]
                                    if mem[_718 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _816 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_816] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _887 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_887] == mem[_887 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_887 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _977 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_977] == bool(mem[_977])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _877 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_877] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _948 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_948] == mem[_948 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_948 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1025 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1025] == bool(mem[_1025])
                            else:
                                _685 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_685] == mem[_685 + 31 len 1]
                                mem[mem[64] + 4] = arg1
                                require ext_code.size(stor2)
                                staticcall stor2.0x72136828 with:
                                        gas gas_remaining wei
                                       args arg1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if mem[_685 + 31 len 1] < 12:
                                    _719 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_719] == mem[_719 + 31 len 1]
                                    if mem[_719 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _817 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_817] < t + (block.timestamp * 2 * stor4) - (s * 2 * stor4):
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
                                        _888 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_888] == mem[_888 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_888 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 2 * stor4) - (s * 2 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _978 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_978] == bool(mem[_978])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _879 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_879] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _949 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_949] == mem[_949 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_949 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1028 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1028] == bool(mem[_1028])
                                else:
                                    _745 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_745] == mem[_745 + 31 len 1]
                                    if mem[_745 + 31 len 1] < 11:
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _889 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_889] < t + (block.timestamp * 4 * stor4) - (s * 4 * stor4):
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
                                        _961 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_961] == mem[_961 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_961 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 4 * stor4) - (s * 4 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1031 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1031] == bool(mem[_1031])
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
                                        staticcall stor3.0x70a08231 with:
                                                gas gas_remaining wei
                                               args this.address
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _951 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if mem[_951] < t + (block.timestamp * 8 * stor4) - (s * 8 * stor4):
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
                                        _1007 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1007] == mem[_1007 + 12 len 20]
                                        mem[mem[64] + 4] = mem[_1007 + 12 len 20]
                                        mem[mem[64] + 36] = t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        require ext_code.size(stor3)
                                        call stor3.0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], t + (block.timestamp * 8 * stor4) - (s * 8 * stor4)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1065 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1065] == bool(mem[_1065])
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
    emit 0x25c1897a: arg1
    stor0 = 1
}



}
