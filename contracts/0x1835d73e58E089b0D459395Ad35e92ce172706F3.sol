contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
array of struct stor4;
array of struct stor5;
uint8 decimals;
uint256 sub_8251871f;
uint256 sub_cbd8e6f4;
mapping of uint8 stor9;
array of address pairs;

function decimals() payable {
    return decimals
}

function sub_8251871f(?) payable {
    return sub_8251871f
}

function getOwner() payable {
    return owner
}

function owner() payable {
    return owner
}

function pairs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pairs.length
    return pairs[arg1]
}

function sub_cbd8e6f4(?) payable {
    return sub_cbd8e6f4
}

function sub_f4700492(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor9[arg1])
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

function registerPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor9[address(arg1)]:
        revert with 0, 'already added'
    stor9[address(arg1)] = 1
    pairs.length++
    pairs[pairs.length] = arg1
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

function totalSupply() payable {
    if not stor1:
        if sub_cbd8e6f4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_cbd8e6f4:
            revert with 0, 18
        return (0 / sub_cbd8e6f4)
    if stor1 and sub_8251871f > -1 / stor1:
        revert with 0, 17
    if not stor1:
        revert with 0, 18
    if stor1 * sub_8251871f / stor1 != sub_8251871f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_cbd8e6f4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not sub_cbd8e6f4:
        revert with 0, 18
    return (stor1 * sub_8251871f / sub_cbd8e6f4)
}

function sub_1efcd6db(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cbd8e6f4 > -201:
        revert with 0, 17
    if sub_cbd8e6f4 + 200 < sub_cbd8e6f4:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < pairs.length:
        mem[0] = 10
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(pairs[idx])
        call pairs[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_656e7ff8(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cbd8e6f4 > -301:
        revert with 0, 17
    if sub_cbd8e6f4 + 300 < sub_cbd8e6f4:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < pairs.length:
        mem[0] = 10
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(pairs[idx])
        call pairs[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_fd0ffa76(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cbd8e6f4 > -101:
        revert with 0, 17
    if sub_cbd8e6f4 + 100 < sub_cbd8e6f4:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < pairs.length:
        mem[0] = 10
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(pairs[idx])
        call pairs[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a695b89a(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if sub_cbd8e6f4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_cbd8e6f4:
            revert with 0, 18
        return (0 / sub_cbd8e6f4)
    if arg1 and sub_8251871f > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * sub_8251871f / arg1 != sub_8251871f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_cbd8e6f4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not sub_cbd8e6f4:
        revert with 0, 18
    return (arg1 * sub_8251871f / sub_cbd8e6f4)
}

function sub_e9357541(?) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        return (0 / sub_8251871f)
    if arg1 and sub_cbd8e6f4 > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * sub_cbd8e6f4 / arg1 != sub_cbd8e6f4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_8251871f <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not sub_8251871f:
        revert with 0, 18
    return (arg1 * sub_cbd8e6f4 / sub_8251871f)
}

function rebase(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_cbd8e6f4 > !arg1:
        revert with 0, 17
    if sub_cbd8e6f4 + arg1 < sub_cbd8e6f4:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    while idx < pairs.length:
        mem[0] = 10
        mem[96] = 0xfff6cae900000000000000000000000000000000000000000000000000000000
        require ext_code.size(pairs[idx])
        call pairs[idx].sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(arg1)]:
        if sub_cbd8e6f4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_cbd8e6f4:
            revert with 0, 18
        return (0 / sub_cbd8e6f4)
    if stor2[address(arg1)] and sub_8251871f > -1 / stor2[address(arg1)]:
        revert with 0, 17
    if not stor2[address(arg1)]:
        revert with 0, 18
    if stor2[address(arg1)] * sub_8251871f / stor2[address(arg1)] != sub_8251871f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_cbd8e6f4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not sub_cbd8e6f4:
        revert with 0, 18
    return (stor2[address(arg1)] * sub_8251871f / sub_cbd8e6f4)
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor3[address(arg1)][address(arg2)]:
        if sub_cbd8e6f4 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_cbd8e6f4:
            revert with 0, 18
        return (0 / sub_cbd8e6f4)
    if stor3[address(arg1)][address(arg2)] and sub_8251871f > -1 / stor3[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not stor3[address(arg1)][address(arg2)]:
        revert with 0, 18
    if stor3[address(arg1)][address(arg2)] * sub_8251871f / stor3[address(arg1)][address(arg2)] != sub_8251871f:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_cbd8e6f4 <= 0:
        revert with 0, 'SafeMath: division by zero'
    if not sub_cbd8e6f4:
        revert with 0, 18
    return (stor3[address(arg1)][address(arg2)] * sub_8251871f / sub_cbd8e6f4)
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    if not arg2:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = 0 / sub_8251871f
    else:
        if arg2 and sub_cbd8e6f4 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * sub_cbd8e6f4 / arg2 != sub_cbd8e6f4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = arg2 * sub_cbd8e6f4 / sub_8251871f
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > stor3[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if stor3[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    if not stor3[msg.sender][address(arg1)] - arg2:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = 0 / sub_8251871f
    else:
        if stor3[msg.sender][address(arg1)] - arg2 and sub_cbd8e6f4 > -1 / stor3[msg.sender][address(arg1)] - arg2:
            revert with 0, 17
        if not stor3[msg.sender][address(arg1)] - arg2:
            revert with 0, 18
        if (stor3[msg.sender][address(arg1)] * sub_cbd8e6f4) - (arg2 * sub_cbd8e6f4) / stor3[msg.sender][address(arg1)] - arg2 != sub_cbd8e6f4:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = (stor3[msg.sender][address(arg1)] * sub_cbd8e6f4) - (arg2 * sub_cbd8e6f4) / sub_8251871f
    emit Approval((stor3[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor3[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if stor3[msg.sender][address(arg1)] + arg2 < stor3[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    if not stor3[msg.sender][address(arg1)] + arg2:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = 0 / sub_8251871f
    else:
        if stor3[msg.sender][address(arg1)] + arg2 and sub_cbd8e6f4 > -1 / stor3[msg.sender][address(arg1)] + arg2:
            revert with 0, 17
        if not stor3[msg.sender][address(arg1)] + arg2:
            revert with 0, 18
        if (stor3[msg.sender][address(arg1)] * sub_cbd8e6f4) + (arg2 * sub_cbd8e6f4) / stor3[msg.sender][address(arg1)] + arg2 != sub_cbd8e6f4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(msg.sender)][address(arg1)] = (stor3[msg.sender][address(arg1)] * sub_cbd8e6f4) + (arg2 * sub_cbd8e6f4) / sub_8251871f
    emit Approval((stor3[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if not arg2:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        if 0 / sub_8251871f > stor2[address(msg.sender)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if stor2[address(msg.sender)] < 0 / sub_8251871f:
            revert with 0, 17
        stor2[address(msg.sender)] -= 0 / sub_8251871f
        if stor2[arg1] > !(0 / sub_8251871f):
            revert with 0, 17
        if stor2[arg1] + (0 / sub_8251871f) < stor2[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(arg1)] = stor2[arg1] + (0 / sub_8251871f)
    else:
        if arg2 and sub_cbd8e6f4 > -1 / arg2:
            revert with 0, 17
        if not arg2:
            revert with 0, 18
        if arg2 * sub_cbd8e6f4 / arg2 != sub_cbd8e6f4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        if arg2 * sub_cbd8e6f4 / sub_8251871f > stor2[address(msg.sender)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if stor2[address(msg.sender)] < arg2 * sub_cbd8e6f4 / sub_8251871f:
            revert with 0, 17
        stor2[address(msg.sender)] -= arg2 * sub_cbd8e6f4 / sub_8251871f
        if stor2[arg1] > !(arg2 * sub_cbd8e6f4 / sub_8251871f):
            revert with 0, 17
        if stor2[arg1] + (arg2 * sub_cbd8e6f4 / sub_8251871f) < stor2[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(arg1)] = stor2[arg1] + (arg2 * sub_cbd8e6f4 / sub_8251871f)
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if not arg3:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        if 0 / sub_8251871f > stor2[address(arg1)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if stor2[address(arg1)] < 0 / sub_8251871f:
            revert with 0, 17
        stor2[address(arg1)] -= 0 / sub_8251871f
        if stor2[arg2] > !(0 / sub_8251871f):
            revert with 0, 17
        if stor2[arg2] + (0 / sub_8251871f) < stor2[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(arg2)] = stor2[arg2] + (0 / sub_8251871f)
    else:
        if arg3 and sub_cbd8e6f4 > -1 / arg3:
            revert with 0, 17
        if not arg3:
            revert with 0, 18
        if arg3 * sub_cbd8e6f4 / arg3 != sub_cbd8e6f4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        if arg3 * sub_cbd8e6f4 / sub_8251871f > stor2[address(arg1)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        if stor2[address(arg1)] < arg3 * sub_cbd8e6f4 / sub_8251871f:
            revert with 0, 17
        stor2[address(arg1)] -= arg3 * sub_cbd8e6f4 / sub_8251871f
        if stor2[arg2] > !(arg3 * sub_cbd8e6f4 / sub_8251871f):
            revert with 0, 17
        if stor2[arg2] + (arg3 * sub_cbd8e6f4 / sub_8251871f) < stor2[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        stor2[address(arg2)] = stor2[arg2] + (arg3 * sub_cbd8e6f4 / sub_8251871f)
    emit Transfer(arg3, arg1, arg2);
    if arg3 > stor3[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if stor3[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    if not stor3[address(arg1)][msg.sender] - arg3:
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(arg1)][address(msg.sender)] = 0 / sub_8251871f
    else:
        if stor3[address(arg1)][msg.sender] - arg3 and sub_cbd8e6f4 > -1 / stor3[address(arg1)][msg.sender] - arg3:
            revert with 0, 17
        if not stor3[address(arg1)][msg.sender] - arg3:
            revert with 0, 18
        if (stor3[address(arg1)][msg.sender] * sub_cbd8e6f4) - (arg3 * sub_cbd8e6f4) / stor3[address(arg1)][msg.sender] - arg3 != sub_cbd8e6f4:
            revert with 0, 'SafeMath: multiplication overflow'
        if sub_8251871f <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not sub_8251871f:
            revert with 0, 18
        stor3[address(arg1)][address(msg.sender)] = (stor3[address(arg1)][msg.sender] * sub_cbd8e6f4) - (arg3 * sub_cbd8e6f4) / sub_8251871f
    emit Approval((stor3[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function symbol() payable {
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor5.length):
            if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor5.length):
                if 31 < uint255(stor5.length) * 0.5:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor5.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        else:
            if bool(stor5.length) == stor5.length.field_1 < 32:
                revert with 0, 34
            if stor5.length.field_1:
                if 31 < stor5.length.field_1:
                    mem[128] = uint256(stor5.field_0)
                    idx = 128
                    s = 0
                    while stor5.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor5[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)])
                mem[128] = 256 * stor5.length.field_8
        mem[ceil32(uint255(stor5.length) * 0.5) + 192 len ceil32(uint255(stor5.length) * 0.5)] = mem[128 len ceil32(uint255(stor5.length) * 0.5)]
        if ceil32(uint255(stor5.length) * 0.5) > uint255(stor5.length) * 0.5:
            mem[ceil32(uint255(stor5.length) * 0.5) + (uint255(stor5.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor5.length), data=mem[128 len ceil32(uint255(stor5.length) * 0.5)], mem[(2 * ceil32(uint255(stor5.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor5.length) * 0.5)]), 
    if bool(stor5.length) == stor5.length.field_1 < 32:
        revert with 0, 34
    if bool(stor5.length):
        if bool(stor5.length) == uint255(stor5.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor5.length):
            if 31 < uint255(stor5.length) * 0.5:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while (uint255(stor5.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    else:
        if bool(stor5.length) == stor5.length.field_1 < 32:
            revert with 0, 34
        if stor5.length.field_1:
            if 31 < stor5.length.field_1:
                mem[128] = uint256(stor5.field_0)
                idx = 128
                s = 0
                while stor5.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor5[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)])
            mem[128] = 256 * stor5.length.field_8
    mem[ceil32(stor5.length.field_1) + 192 len ceil32(stor5.length.field_1)] = mem[128 len ceil32(stor5.length.field_1)]
    if ceil32(stor5.length.field_1) > stor5.length.field_1:
        mem[ceil32(stor5.length.field_1) + stor5.length.field_1 + 192] = 0
    return Array(len=stor5.length % 128, data=mem[128 len ceil32(stor5.length.field_1)], mem[(2 * ceil32(stor5.length.field_1)) + 192 len 2 * ceil32(stor5.length.field_1)]), 
}



}
