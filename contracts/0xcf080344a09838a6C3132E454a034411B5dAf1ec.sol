contract main {




// =====================  Runtime code  =====================


const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor54;
uint256 totalSupply;
array of struct stor57;
array of struct stor58;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
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

function sub_cbbc4065(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor54[address(arg1)]:
        revert with 0, 'address is already set'
    stor54[address(arg1)] = 1
}

function sub_f897a250(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(stor54[address(arg1)]) != 1:
        revert with 0, 'address not set'
    stor54[address(arg1)] = 0
}

function recoverETH() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function mint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
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

function sub_6a7bf8ee(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if bool(stor54[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'can't mint, address increment is not set'
    if not address(arg2):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg1 - 1:
        revert with 'NH{q', 17
    totalSupply += arg1
    if balanceOf[address(arg2)] > -arg1 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, 0, address(arg2));
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function burnFrom(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg2)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg2)] -= arg1
    if totalSupply < arg1:
        revert with 'NH{q', 17
    totalSupply -= arg1
    emit Transfer(arg1, arg2, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function recoverErc20(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_f1327338(?) payable {
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffffff1710e16951c7687fffff:
        revert with 'NH{q', 17
    totalSupply += 1100000 * 10^18
    if balanceOf[address(msg.sender)] > 0xffffffffffffffffffffffffffffffffffffffffffff1710e16951c7687fffff:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += 1100000 * 10^18
    emit Transfer(1100000 * 10^18, 0, msg.sender);
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                Mask(248, 0, stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
    if bool(stor57.length):
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor57.length) = 0
        stor57.length.field_1 = 11
        stor57.length.field_8 = 'GEIST SHIBA' / 256
        idx = 0
        while stor57.length.field_1 + 31 / 32 > idx:
            stor57[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor57.length) = 0
        stor57.length.field_1 = 11
        stor57.length.field_8 = 'GEIST SHIBA' / 256
        idx = 0
        while stor57.length.field_1 + 31 / 32 > idx:
            stor57[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor58.length):
        if bool(stor58.length) == stor58.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor58.length) = 0
        stor58.length.field_1 = 6
        stor58.length.field_8 = 'GSHIBA' / 256
        idx = 0
        while stor58.length.field_1 + 31 / 32 > idx:
            stor58[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor58.length) == stor58.length.field_1 < 32:
            revert with 'NH{q', 34
        bool(stor58.length) = 0
        stor58.length.field_1 = 6
        stor58.length.field_8 = 'GSHIBA' / 256
        idx = 0
        while stor58.length.field_1 + 31 / 32 > idx:
            stor58[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
        Mask(248, 0, stor0.field_8) = 0
        Mask(248, 0, stor0.field_8) = 0
}

function name() payable {
    if bool(stor57.length):
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor57.length):
            if bool(stor57.length) == stor57.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor57.length.field_1:
                if 31 < stor57.length.field_1:
                    mem[128] = uint256(stor57.field_0)
                    idx = 128
                    s = 0
                    while stor57.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor57[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor57.length.field_1), data=mem[128 len ceil32(stor57.length.field_1)])
                mem[128] = 256 * stor57.length.field_8
        else:
            if bool(stor57.length) == stor57.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor57.length.field_1:
                if 31 < stor57.length.field_1:
                    mem[128] = uint256(stor57.field_0)
                    idx = 128
                    s = 0
                    while stor57.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor57[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor57.length.field_1), data=mem[128 len ceil32(stor57.length.field_1)])
                mem[128] = 256 * stor57.length.field_8
        mem[ceil32(stor57.length.field_1) + 192 len ceil32(stor57.length.field_1)] = mem[128 len ceil32(stor57.length.field_1)]
        if ceil32(stor57.length.field_1) > stor57.length.field_1:
            mem[ceil32(stor57.length.field_1) + stor57.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor57.length.field_1), data=mem[128 len ceil32(stor57.length.field_1)], mem[(2 * ceil32(stor57.length.field_1)) + 192 len 2 * ceil32(stor57.length.field_1)]), 
    if bool(stor57.length) == stor57.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor57.length):
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor57.length.field_1:
            if 31 < stor57.length.field_1:
                mem[128] = uint256(stor57.field_0)
                idx = 128
                s = 0
                while stor57.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor57[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor57.length % 128, data=mem[128 len ceil32(stor57.length.field_1)])
            mem[128] = 256 * stor57.length.field_8
    else:
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor57.length.field_1:
            if 31 < stor57.length.field_1:
                mem[128] = uint256(stor57.field_0)
                idx = 128
                s = 0
                while stor57.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor57[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor57.length % 128, data=mem[128 len ceil32(stor57.length.field_1)])
            mem[128] = 256 * stor57.length.field_8
    mem[ceil32(stor57.length.field_1) + 192 len ceil32(stor57.length.field_1)] = mem[128 len ceil32(stor57.length.field_1)]
    if ceil32(stor57.length.field_1) > stor57.length.field_1:
        mem[ceil32(stor57.length.field_1) + stor57.length.field_1 + 192] = 0
    return Array(len=stor57.length % 128, data=mem[128 len ceil32(stor57.length.field_1)], mem[(2 * ceil32(stor57.length.field_1)) + 192 len 2 * ceil32(stor57.length.field_1)]), 
}

function symbol() payable {
    if bool(stor58.length):
        if bool(stor58.length) == stor58.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor58.length):
            if bool(stor58.length) == stor58.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor58.length.field_1:
                if 31 < stor58.length.field_1:
                    mem[128] = uint256(stor58.field_0)
                    idx = 128
                    s = 0
                    while stor58.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor58[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor58.length.field_1), data=mem[128 len ceil32(stor58.length.field_1)])
                mem[128] = 256 * stor58.length.field_8
        else:
            if bool(stor58.length) == stor58.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor58.length.field_1:
                if 31 < stor58.length.field_1:
                    mem[128] = uint256(stor58.field_0)
                    idx = 128
                    s = 0
                    while stor58.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor58[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor58.length.field_1), data=mem[128 len ceil32(stor58.length.field_1)])
                mem[128] = 256 * stor58.length.field_8
        mem[ceil32(stor58.length.field_1) + 192 len ceil32(stor58.length.field_1)] = mem[128 len ceil32(stor58.length.field_1)]
        if ceil32(stor58.length.field_1) > stor58.length.field_1:
            mem[ceil32(stor58.length.field_1) + stor58.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor58.length.field_1), data=mem[128 len ceil32(stor58.length.field_1)], mem[(2 * ceil32(stor58.length.field_1)) + 192 len 2 * ceil32(stor58.length.field_1)]), 
    if bool(stor58.length) == stor58.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor58.length):
        if bool(stor58.length) == stor58.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor58.length.field_1:
            if 31 < stor58.length.field_1:
                mem[128] = uint256(stor58.field_0)
                idx = 128
                s = 0
                while stor58.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor58[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor58.length % 128, data=mem[128 len ceil32(stor58.length.field_1)])
            mem[128] = 256 * stor58.length.field_8
    else:
        if bool(stor58.length) == stor58.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor58.length.field_1:
            if 31 < stor58.length.field_1:
                mem[128] = uint256(stor58.field_0)
                idx = 128
                s = 0
                while stor58.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor58[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor58.length % 128, data=mem[128 len ceil32(stor58.length.field_1)])
            mem[128] = 256 * stor58.length.field_8
    mem[ceil32(stor58.length.field_1) + 192 len ceil32(stor58.length.field_1)] = mem[128 len ceil32(stor58.length.field_1)]
    if ceil32(stor58.length.field_1) > stor58.length.field_1:
        mem[ceil32(stor58.length.field_1) + stor58.length.field_1 + 192] = 0
    return Array(len=stor58.length % 128, data=mem[128 len ceil32(stor58.length.field_1)], mem[(2 * ceil32(stor58.length.field_1)) + 192 len 2 * ceil32(stor58.length.field_1)]), 
}



}
