contract main {




// =====================  Runtime code  =====================


const foo = 0xfbc3c04845162f067a0b6f8934383e63899c3524


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address owner; offset 8
uint256 endDate;
uint256 sub_076d5556;
mapping of struct sub_b872873b;
array of struct stakers;

function name() payable {
    return name[0 len name.length]
}

function sub_076d5556(?) payable {
    return sub_076d5556
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_b872873b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b872873b[arg1].field_0, sub_b872873b[arg1].field_256, sub_b872873b[arg1].field_512
}

function endDate() payable {
    return endDate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function stakers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < stakers.length
    return stakers[arg1].field_0
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_d2440545(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        mem[0] = 9
        if stakers[idx].field_0 != address(arg1):
            idx = idx + 1
            continue 
        return idx
    return -1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_04b272db(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < stakers.length:
        _12 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12] = 0
        mem[_12 + 32] = 0
        mem[_12 + 64] = 0
        require idx < stakers.length
        mem[0] = stakers[idx].field_0
        mem[32] = 8
        _15 = mem[64]
        mem[64] = mem[64] + 96
        mem[_15] = sub_b872873b[stor9[idx].field_0].field_0
        mem[_15 + 32] = sub_b872873b[stor9[idx].field_0].field_256
        mem[_15 + 64] = sub_b872873b[stor9[idx].field_0].field_512
        if sub_b872873b[stor9[idx].field_0].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        if s + sub_b872873b[stor9[idx].field_0].field_0 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_b872873b[stor9[idx].field_0].field_0
        continue 
    return s
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != this.address:
        revert with 0, 'This token is non-transferrable'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_163a29ce(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stakers.length:
        _13 = mem[64]
        mem[64] = mem[64] + 96
        mem[_13] = 0
        mem[_13 + 32] = 0
        mem[_13 + 64] = 0
        require idx < stakers.length
        mem[0] = stakers[idx].field_0
        mem[32] = 8
        _16 = mem[64]
        mem[64] = mem[64] + 96
        mem[_16] = sub_b872873b[stor9[idx].field_0].field_0
        mem[_16 + 32] = sub_b872873b[stor9[idx].field_0].field_256
        mem[_16 + 64] = sub_b872873b[stor9[idx].field_0].field_512
        if sub_b872873b[stor9[idx].field_0].field_512 > arg1:
            idx = idx + 1
            s = s
            continue 
        if sub_b872873b[stor9[idx].field_0].field_256 <= 0:
            idx = idx + 1
            s = s
            continue 
        if s + sub_b872873b[stor9[idx].field_0].field_256 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_b872873b[stor9[idx].field_0].field_256
        continue 
    return s
}

function getStakers() payable {
    mem[64] = (32 * stakers.length) + 128
    mem[96] = stakers.length
    if not stakers.length:
        mem[(32 * stakers.length) + 128] = 32
        mem[(32 * stakers.length) + 160] = stakers.length
        idx = 0
        s = 128
        t = (32 * stakers.length) + 192
        while idx < stakers.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stakers.length) + 128
           len (96 * stakers.length) + 64
    mem[128] = address(stakers.field_0)
    idx = 128
    s = 0
    while (32 * stakers.length) + 96 > idx:
        mem[idx + 32] = stakers[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stakers.length) + 128] = 32
    mem[(32 * stakers.length) + 160] = stakers.length
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < stakers.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stakers.length) + -mem[64] + 192
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if arg2 != this.address:
        revert with 0, 'This token is non-transferrable'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_5e64cd91(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_b872873b[address(arg1)].field_0 > 0:
        if not address(arg1):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
        if sub_b872873b[address(arg1)].field_256 > balanceOf[address(arg1)]:
            revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
        balanceOf[address(arg1)] -= sub_b872873b[address(arg1)].field_256
        if sub_b872873b[address(arg1)].field_256 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= sub_b872873b[address(arg1)].field_256
        emit Transfer(sub_b872873b[address(arg1)].field_256, address(arg1), 0);
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), sub_b872873b[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
        call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
             gas gas_remaining wei
            args address(this.address), address(arg1), sub_b872873b[address(arg1)].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        sub_b872873b[address(arg1)].field_256 = 0
        sub_b872873b[address(arg1)].field_512 = 0
        sub_b872873b[address(arg1)].field_0 = 0
        idx = 0
        while idx < stakers.length:
            require idx < stakers.length
            mem[0] = 9
            if stakers[idx].field_0 != address(arg1):
                idx = idx + 1
                continue 
            if idx != -1:
                require stakers.length - 1 < stakers.length
                require idx < stakers.length
                stakers[idx].field_0 = stakers[stakers.length].field_0
                require stakers.length
                stakers[stakers.length].field_0 = 0
                stakers.length--
}

function sub_3f3273b5(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    s = 0
    while idx < stakers.length:
        _26 = mem[64]
        mem[64] = mem[64] + 96
        mem[_26] = 0
        mem[_26 + 32] = 0
        mem[_26 + 64] = 0
        require idx < stakers.length
        mem[0] = stakers[idx].field_0
        mem[32] = 8
        _29 = mem[64]
        mem[64] = mem[64] + 96
        mem[_29] = sub_b872873b[stor9[idx].field_0].field_0
        mem[_29 + 32] = sub_b872873b[stor9[idx].field_0].field_256
        mem[_29 + 64] = sub_b872873b[stor9[idx].field_0].field_512
        if sub_b872873b[stor9[idx].field_0].field_0 <= 0:
            idx = idx + 1
            s = s
            continue 
        if s + sub_b872873b[stor9[idx].field_0].field_0 < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = s + sub_b872873b[stor9[idx].field_0].field_0
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    staticcall 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _34 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _36 = mem[_34]
    require mem[_34] == mem[_34]
    if s > mem[_34]:
        revert with 0, 'SafeMath: subtraction overflow'
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = _36 - s
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), _36 - s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _41 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_41] == bool(mem[_41])
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = owner
    mem[mem[64] + 68] = _36 - s
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), stor5, _36 - s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_45] == bool(mem[_45])
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp < sub_b872873b[address(msg.sender)].field_512:
        revert with 0, 'No funds available to release'
    if arg1 > sub_b872873b[address(msg.sender)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Do not have that amount to release'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not sub_b872873b[address(msg.sender)].field_0:
        if sub_b872873b[address(msg.sender)].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_b872873b[address(msg.sender)].field_256
        if arg1 > sub_b872873b[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b872873b[address(msg.sender)].field_256 -= arg1
        if 0 / sub_b872873b[address(msg.sender)].field_256 > sub_b872873b[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b872873b[address(msg.sender)].field_0 -= 0 / sub_b872873b[address(msg.sender)].field_256
    else:
        require sub_b872873b[address(msg.sender)].field_0
        if sub_b872873b[address(msg.sender)].field_0 * arg1 / sub_b872873b[address(msg.sender)].field_0 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_b872873b[address(msg.sender)].field_256 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_b872873b[address(msg.sender)].field_256
        if arg1 > sub_b872873b[address(msg.sender)].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b872873b[address(msg.sender)].field_256 -= arg1
        if sub_b872873b[address(msg.sender)].field_0 * arg1 / sub_b872873b[address(msg.sender)].field_256 > sub_b872873b[address(msg.sender)].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        sub_b872873b[address(msg.sender)].field_0 -= sub_b872873b[address(msg.sender)].field_0 * arg1 / sub_b872873b[address(msg.sender)].field_256
    if sub_b872873b[address(msg.sender)].field_0:
    if sub_b872873b[address(msg.sender)].field_256:
    sub_b872873b[address(msg.sender)].field_512 = 0
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        mem[0] = 9
        if stakers[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if idx == -1:
            revert with 0, 'Could not remove staker'
        require stakers.length - 1 < stakers.length
        require idx < stakers.length
        stakers[idx].field_0 = stakers[stakers.length].field_0
        require stakers.length
        stakers[stakers.length].field_0 = 0
        stakers.length--
    revert with 0, 'Could not remove staker'
}

function sub_9901a57f(?) payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        mem[0] = stakers[idx].field_0
        mem[32] = 8
        if sub_b872873b[stor9[idx].field_0].field_0 > 0:
            if not stakers[idx].field_0:
                revert with 0, 'ERC20: burn from the zero address'
            _37 = mem[64]
            mem[64] = mem[64] + 96
            mem[_37] = 34
            mem[_37 + 32 len 34] = 0xfe45524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            mem[32] = 0
            if sub_b872873b[stor9[idx].field_0].field_256 > balanceOf[stor9[idx].field_0]:
                _40 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                idx = 0
                while idx < 34:
                    mem[_40 + idx + 68] = mem[_37 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_40 + 102] = 0
                revert with memory
                  from mem[64]
                   len _40 + -mem[64] + 132
            mem[0] = stakers[idx].field_0
            mem[32] = 0
            balanceOf[stor9[idx].field_0] -= sub_b872873b[stor9[idx].field_0].field_256
            if sub_b872873b[stor9[idx].field_0].field_256 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= sub_b872873b[stor9[idx].field_0].field_256
            emit Transfer(sub_b872873b[stor9[idx].field_0].field_256, stakers[idx].field_0, 0);
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = sub_b872873b[stor9[idx].field_0].field_0
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(this.address), sub_b872873b[stor9[idx].field_0].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _53 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_53] == bool(mem[_53])
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stakers[idx].field_0
            mem[mem[64] + 68] = sub_b872873b[stor9[idx].field_0].field_0
            require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
            call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
                 gas gas_remaining wei
                args address(this.address), stakers[idx].field_0, sub_b872873b[stor9[idx].field_0].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_57] == bool(mem[_57])
            sub_b872873b[stor9[idx].field_0].field_256 = 0
            sub_b872873b[stor9[idx].field_0].field_512 = 0
            sub_b872873b[stor9[idx].field_0].field_0 = 0
            s = 0
            while s < stakers.length:
                require s < stakers.length
                mem[0] = 9
                if stakers[s].field_0 != stakers[idx].field_0:
                    s = s + 1
                    continue 
                if s != -1:
                    require stakers.length - 1 < stakers.length
                    require s < stakers.length
                    stakers[s].field_0 = stakers[stakers.length].field_0
                    require stakers.length
                    mem[0] = 9
                    stakers[stakers.length].field_0 = 0
                    stakers.length--
                idx = idx + 1
                continue 
        idx = idx + 1
        continue 
}

function sub_193f1900(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    if arg3 <= sub_b872873b[address(arg2)].field_512:
        revert with 0, 'Until date must be greater than startDate.'
    if sub_b872873b[address(arg2)].field_512 > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_076d5556 > endDate:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 - sub_b872873b[address(arg2)].field_512 <= endDate - sub_076d5556:
        if not (arg3 - sub_b872873b[address(arg2)].field_512)^2:
            if sub_b872873b[address(arg2)].field_256:
                require sub_b872873b[address(arg2)].field_256
                if 0 / sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
            if sub_b872873b[address(arg2)].field_256 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 <= block.timestamp:
                revert with 0, 'Until date must be greater than startDate.'
            if block.timestamp > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_076d5556 > endDate:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 - block.timestamp <= endDate - sub_076d5556:
                if not (arg3 - block.timestamp)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (sub_b872873b[address(arg2)].field_256 + arg1)
                require (arg3 - block.timestamp)^2
                if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (sub_b872873b[address(arg2)].field_256 + arg1)
                require arg1
                if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
            if not (endDate - sub_076d5556)^2:
                if arg1:
                    require arg1
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require (endDate - sub_076d5556)^2
            if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require arg1
            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
        require (arg3 - sub_b872873b[address(arg2)].field_512)^2
        if 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / (arg3 - sub_b872873b[address(arg2)].field_512)^2 != 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_b872873b[address(arg2)].field_256:
            if sub_b872873b[address(arg2)].field_256 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 <= block.timestamp:
                revert with 0, 'Until date must be greater than startDate.'
            if block.timestamp > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_076d5556 > endDate:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 - block.timestamp <= endDate - sub_076d5556:
                if not (arg3 - block.timestamp)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (sub_b872873b[address(arg2)].field_256 + arg1)
                require (arg3 - block.timestamp)^2
                if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1:
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    return (sub_b872873b[address(arg2)].field_256 + arg1)
                require arg1
                if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
            if not (endDate - sub_076d5556)^2:
                if arg1:
                    require arg1
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require (endDate - sub_076d5556)^2
            if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require arg1
            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
        require sub_b872873b[address(arg2)].field_256
        if sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / sub_b872873b[address(arg2)].field_256 != 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 <= block.timestamp:
            revert with 0, 'Until date must be greater than startDate.'
        if block.timestamp > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_076d5556 > endDate:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - block.timestamp <= endDate - sub_076d5556:
            if not (arg3 - block.timestamp)^2:
                if arg1:
                    require arg1
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
            require (arg3 - block.timestamp)^2
            if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg1 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
            require arg1
            if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
        if not (endDate - sub_076d5556)^2:
            if arg1:
                require arg1
                if 0 / arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
        require (endDate - sub_076d5556)^2
        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
        require arg1
        if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (arg3 - sub_b872873b[address(arg2)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
    if not (endDate - sub_076d5556)^2:
        if sub_b872873b[address(arg2)].field_256:
            require sub_b872873b[address(arg2)].field_256
            if 0 / sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
        if sub_b872873b[address(arg2)].field_256 < sub_b872873b[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 <= block.timestamp:
            revert with 0, 'Until date must be greater than startDate.'
        if block.timestamp > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_076d5556 > endDate:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - block.timestamp <= endDate - sub_076d5556:
            if not (arg3 - block.timestamp)^2:
                if arg1:
                    require arg1
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require (arg3 - block.timestamp)^2
            if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require arg1
            if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
        if not (endDate - sub_076d5556)^2:
            if arg1:
                require arg1
                if 0 / arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1)
        require (endDate - sub_076d5556)^2
        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1)
        require arg1
        if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
    require (endDate - sub_076d5556)^2
    if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_b872873b[address(arg2)].field_256:
        if sub_b872873b[address(arg2)].field_256 < sub_b872873b[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 <= block.timestamp:
            revert with 0, 'Until date must be greater than startDate.'
        if block.timestamp > arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_076d5556 > endDate:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg3 - block.timestamp <= endDate - sub_076d5556:
            if not (arg3 - block.timestamp)^2:
                if arg1:
                    require arg1
                    if 0 / arg1:
                        revert with 0, 'SafeMath: multiplication overflow'
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require (arg3 - block.timestamp)^2
            if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1:
                if arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                return (sub_b872873b[address(arg2)].field_256 + arg1)
            require arg1
            if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
        if not (endDate - sub_076d5556)^2:
            if arg1:
                require arg1
                if 0 / arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1)
        require (endDate - sub_076d5556)^2
        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if sub_b872873b[address(arg2)].field_256 + arg1 < sub_b872873b[address(arg2)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + arg1)
        require arg1
        if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
    require sub_b872873b[address(arg2)].field_256
    if sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / sub_b872873b[address(arg2)].field_256 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(arg2)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 <= block.timestamp:
        revert with 0, 'Until date must be greater than startDate.'
    if block.timestamp > arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_076d5556 > endDate:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg3 - block.timestamp <= endDate - sub_076d5556:
        if not (arg3 - block.timestamp)^2:
            if arg1:
                require arg1
                if 0 / arg1:
                    revert with 0, 'SafeMath: multiplication overflow'
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
        require (arg3 - block.timestamp)^2
        if 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / (arg3 - block.timestamp)^2 != 1000000000000000000 * 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1:
            if arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg1 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
        require arg1
        if arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg3 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
    if not (endDate - sub_076d5556)^2:
        if arg1:
            require arg1
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
    require (endDate - sub_076d5556)^2
    if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg1 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1)
    require arg1
    if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_b872873b[address(arg2)].field_256 + (sub_b872873b[address(arg2)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18))
}

function lock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0xfbc3c04845162f067a0b6f8934383e63899c3524)
    call 0xfbc3c04845162f067a0b6f8934383e63899c3524.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg2 <= block.timestamp:
        revert with 0, 'Lock until date must be in the future.'
    if arg2 < sub_b872873b[address(msg.sender)].field_512:
        revert with 0, 'Lock until date must be at least stakerPosition.releaseDate'
    if arg2 > endDate:
        revert with 0, 'Lock date cannot exceed endDate of staking contract'
    if arg2 <= sub_b872873b[address(msg.sender)].field_512:
        revert with 0, 'Until date must be greater than startDate.'
    if sub_b872873b[address(msg.sender)].field_512 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_076d5556 > endDate:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 - sub_b872873b[address(msg.sender)].field_512 <= endDate - sub_076d5556:
        if not (arg2 - sub_b872873b[address(msg.sender)].field_512)^2:
            if sub_b872873b[address(msg.sender)].field_256:
                require sub_b872873b[address(msg.sender)].field_256
                if 0 / sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
            if sub_b872873b[address(msg.sender)].field_256 < sub_b872873b[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 <= block.timestamp:
                revert with 0, 'Until date must be greater than startDate.'
            if block.timestamp > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_076d5556 > endDate:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 - block.timestamp <= endDate - sub_076d5556:
                if not (arg2 - block.timestamp)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b872873b[address(msg.sender)].field_256 += arg1
                else:
                    require (arg2 - block.timestamp)^2
                    if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require arg1
                        if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
            else:
                if not (endDate - sub_076d5556)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b872873b[address(msg.sender)].field_256 += arg1
                else:
                    require (endDate - sub_076d5556)^2
                    if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require arg1
                        if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
        else:
            require (arg2 - sub_b872873b[address(msg.sender)].field_512)^2
            if 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_b872873b[address(msg.sender)].field_256:
                if sub_b872873b[address(msg.sender)].field_256 < sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 <= block.timestamp:
                    revert with 0, 'Until date must be greater than startDate.'
                if block.timestamp > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_076d5556 > endDate:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - block.timestamp <= endDate - sub_076d5556:
                    if not (arg2 - block.timestamp)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require (arg2 - block.timestamp)^2
                        if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 += arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
                else:
                    if not (endDate - sub_076d5556)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require (endDate - sub_076d5556)^2
                        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 += arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
            else:
                require sub_b872873b[address(msg.sender)].field_256
                if sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / sub_b872873b[address(msg.sender)].field_256 != 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 <= block.timestamp:
                    revert with 0, 'Until date must be greater than startDate.'
                if block.timestamp > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_076d5556 > endDate:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - block.timestamp <= endDate - sub_076d5556:
                    if not (arg2 - block.timestamp)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                    else:
                        require (arg2 - block.timestamp)^2
                        if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
                else:
                    if not (endDate - sub_076d5556)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                    else:
                        require (endDate - sub_076d5556)^2
                        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (arg2 - sub_b872873b[address(msg.sender)].field_512)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
    else:
        if not (endDate - sub_076d5556)^2:
            if sub_b872873b[address(msg.sender)].field_256:
                require sub_b872873b[address(msg.sender)].field_256
                if 0 / sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: multiplication overflow'
            if sub_b872873b[address(msg.sender)].field_256 < sub_b872873b[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 <= block.timestamp:
                revert with 0, 'Until date must be greater than startDate.'
            if block.timestamp > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_076d5556 > endDate:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 - block.timestamp <= endDate - sub_076d5556:
                if not (arg2 - block.timestamp)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b872873b[address(msg.sender)].field_256 += arg1
                else:
                    require (arg2 - block.timestamp)^2
                    if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require arg1
                        if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
            else:
                if not (endDate - sub_076d5556)^2:
                    if arg1:
                        require arg1
                        if 0 / arg1:
                            revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_b872873b[address(msg.sender)].field_256 += arg1
                else:
                    require (endDate - sub_076d5556)^2
                    if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1:
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require arg1
                        if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
        else:
            require (endDate - sub_076d5556)^2
            if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_b872873b[address(msg.sender)].field_256:
                if sub_b872873b[address(msg.sender)].field_256 < sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 <= block.timestamp:
                    revert with 0, 'Until date must be greater than startDate.'
                if block.timestamp > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_076d5556 > endDate:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - block.timestamp <= endDate - sub_076d5556:
                    if not (arg2 - block.timestamp)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require (arg2 - block.timestamp)^2
                        if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 += arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
                else:
                    if not (endDate - sub_076d5556)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 += arg1
                    else:
                        require (endDate - sub_076d5556)^2
                        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 += arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
            else:
                require sub_b872873b[address(msg.sender)].field_256
                if sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / sub_b872873b[address(msg.sender)].field_256 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                    revert with 0, 'SafeMath: multiplication overflow'
                if sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < sub_b872873b[address(msg.sender)].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 <= block.timestamp:
                    revert with 0, 'Until date must be greater than startDate.'
                if block.timestamp > arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_076d5556 > endDate:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 - block.timestamp <= endDate - sub_076d5556:
                    if not (arg2 - block.timestamp)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                    else:
                        require (arg2 - block.timestamp)^2
                        if 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / (arg2 - block.timestamp)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (arg2 - block.timestamp)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
                else:
                    if not (endDate - sub_076d5556)^2:
                        if arg1:
                            require arg1
                            if 0 / arg1:
                                revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                    else:
                        require (endDate - sub_076d5556)^2
                        if 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / (endDate - sub_076d5556)^2 != 1000000000000000000 * 10^18:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1:
                            if arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1
                        else:
                            require arg1
                            if arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / arg1 != 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_b872873b[address(msg.sender)].field_256 = sub_b872873b[address(msg.sender)].field_256 + (sub_b872873b[address(msg.sender)].field_256 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18) + arg1 + (arg1 * 1000000000000000000 * 10^18 * (endDate - sub_076d5556)^2 / 4 * 10^15 / 1000000000000000000 * 10^18)
    sub_b872873b[address(msg.sender)].field_512 = arg2
    if sub_b872873b[address(msg.sender)].field_0 + arg1 < sub_b872873b[address(msg.sender)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    sub_b872873b[address(msg.sender)].field_0 += arg1
    require ext_code.size(this.address)
    staticcall this.address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > sub_b872873b[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: subtraction overflow'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + sub_b872873b[address(msg.sender)].field_256 - ext_call.return_data[0] < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply = totalSupply + sub_b872873b[address(msg.sender)].field_256 - ext_call.return_data[0]
    if balanceOf[address(msg.sender)] + sub_b872873b[address(msg.sender)].field_256 - ext_call.return_data[0] < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + sub_b872873b[address(msg.sender)].field_256 - ext_call.return_data[0]
    emit Transfer((sub_b872873b[address(msg.sender)].field_256 - ext_call.return_data[0]), 0, msg.sender);
    idx = 0
    while idx < stakers.length:
        require idx < stakers.length
        mem[0] = 9
        if stakers[idx].field_0 != msg.sender:
            idx = idx + 1
            continue 
        if idx == -1:
            stakers.length++
            stakers[stakers.length].field_0 = msg.sender
    stakers.length++
    stakers[stakers.length].field_0 = msg.sender
}



}
