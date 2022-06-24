contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const decimals = 18


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address creatorAddress;
uint256 totalSupply;
array of struct stor56;
array of struct stor57;
mapping of uint8 stor58;

function creator() payable {
    return creatorAddress
}

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

function sub_cad2f0e3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor58[arg1])
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

function setCreator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creatorAddress = arg1
}

function setAddressFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor58[address(arg1)]:
        stor58[address(arg1)] = 1
}

function resetAddresFarm(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1 == bool(stor58[address(arg1)]):
        stor58[address(arg1)] = 0
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(msg.sender)] > !arg1:
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1
    emit Transfer(arg1, 0, msg.sender);
}

function rewardsFarm(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if bool(stor58[msg.sender]) != 1:
        revert with 0, 'error'
    if not arg2:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg1:
        revert with 0, 17
    totalSupply += arg1
    if balanceOf[address(arg2)] > !arg1:
        revert with 0, 17
    balanceOf[address(arg2)] += arg1
    emit Transfer(arg1, 0, arg2);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function Emergency(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function setMeta() payable {
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffff7ba6ae9ebfeb7b5ffffff:
        revert with 0, 17
    totalSupply += 10000000 * 10^18
    if balanceOf[address(msg.sender)] > 0xfffffffffffffffffffffffffffffffffffffffffff7ba6ae9ebfeb7b5ffffff:
        revert with 0, 17
    balanceOf[address(msg.sender)] += 10000000 * 10^18
    emit Transfer(10000000 * 10^18, 0, msg.sender);
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0, 'Initializable: contract is already initialized'
            if not uint8(stor0.field_8):
                uint16(stor0.field_0) = 257
                uint8(stor0.field_8) = 0
                if uint8(stor0.field_0):
                    revert with 0, 'Initializable: contract is already initialized'
                if not uint8(stor0.field_8):
                    uint16(stor0.field_0) = 257
    if bool(stor56.length):
        if bool(stor56.length) == uint255(stor56.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor56.length) = 0
        stor56.length.field_1 = 11
        stor56.length.field_168 = Mask(88, 0, 'METANETWORK')
        idx = 0
        while (uint255(stor56.length) * 0.5) + 31 / 32 > idx:
            stor56[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor56.length) == stor56.length.field_1 < 32:
            revert with 0, 34
        bool(stor56.length) = 0
        stor56.length.field_1 = 11
        stor56.length.field_168 = Mask(88, 0, 'METANETWORK')
        idx = 0
        while stor56.length.field_1 + 31 / 32 > idx:
            stor56[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor57.length):
        if bool(stor57.length) == uint255(stor57.length) * 0.5 < 32:
            revert with 0, 34
        bool(stor57.length) = 0
        stor57.length.field_1 = 4
        stor57.length.field_224 = 1296389185
        idx = 0
        while (uint255(stor57.length) * 0.5) + 31 / 32 > idx:
            stor57[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 0, 34
        bool(stor57.length) = 0
        stor57.length.field_1 = 4
        stor57.length.field_224 = 1296389185
        idx = 0
        while stor57.length.field_1 + 31 / 32 > idx:
            stor57[idx].field_0 = 0
            idx = idx + 1
            continue 
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
        uint8(stor0.field_8) = 0
}

function name() payable {
    if bool(stor56.length):
        if bool(stor56.length) == uint255(stor56.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor56.length):
            if bool(stor56.length) == uint255(stor56.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor56.length):
                if 31 < uint255(stor56.length) * 0.5:
                    mem[128] = uint256(stor56.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor56.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor56[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor56.length), data=mem[128 len ceil32(uint255(stor56.length) * 0.5)])
                mem[128] = 256 * stor56.length.field_8
        else:
            if bool(stor56.length) == stor56.length.field_1 < 32:
                revert with 0, 34
            if stor56.length.field_1:
                if 31 < stor56.length.field_1:
                    mem[128] = uint256(stor56.field_0)
                    idx = 128
                    s = 0
                    while stor56.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor56[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor56.length), data=mem[128 len ceil32(uint255(stor56.length) * 0.5)])
                mem[128] = 256 * stor56.length.field_8
        mem[ceil32(uint255(stor56.length) * 0.5) + 192 len ceil32(uint255(stor56.length) * 0.5)] = mem[128 len ceil32(uint255(stor56.length) * 0.5)]
        if ceil32(uint255(stor56.length) * 0.5) > uint255(stor56.length) * 0.5:
            mem[ceil32(uint255(stor56.length) * 0.5) + (uint255(stor56.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor56.length), data=mem[128 len ceil32(uint255(stor56.length) * 0.5)], mem[(2 * ceil32(uint255(stor56.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor56.length) * 0.5)]), 
    if bool(stor56.length) == stor56.length.field_1 < 32:
        revert with 0, 34
    if bool(stor56.length):
        if bool(stor56.length) == uint255(stor56.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor56.length):
            if 31 < uint255(stor56.length) * 0.5:
                mem[128] = uint256(stor56.field_0)
                idx = 128
                s = 0
                while (uint255(stor56.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor56[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor56.length % 128, data=mem[128 len ceil32(stor56.length.field_1)])
            mem[128] = 256 * stor56.length.field_8
    else:
        if bool(stor56.length) == stor56.length.field_1 < 32:
            revert with 0, 34
        if stor56.length.field_1:
            if 31 < stor56.length.field_1:
                mem[128] = uint256(stor56.field_0)
                idx = 128
                s = 0
                while stor56.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor56[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor56.length % 128, data=mem[128 len ceil32(stor56.length.field_1)])
            mem[128] = 256 * stor56.length.field_8
    mem[ceil32(stor56.length.field_1) + 192 len ceil32(stor56.length.field_1)] = mem[128 len ceil32(stor56.length.field_1)]
    if ceil32(stor56.length.field_1) > stor56.length.field_1:
        mem[ceil32(stor56.length.field_1) + stor56.length.field_1 + 192] = 0
    return Array(len=stor56.length % 128, data=mem[128 len ceil32(stor56.length.field_1)], mem[(2 * ceil32(stor56.length.field_1)) + 192 len 2 * ceil32(stor56.length.field_1)]), 
}

function symbol() payable {
    if bool(stor57.length):
        if bool(stor57.length) == uint255(stor57.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor57.length):
            if bool(stor57.length) == uint255(stor57.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor57.length):
                if 31 < uint255(stor57.length) * 0.5:
                    mem[128] = uint256(stor57.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor57.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor57[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor57.length), data=mem[128 len ceil32(uint255(stor57.length) * 0.5)])
                mem[128] = 256 * stor57.length.field_8
        else:
            if bool(stor57.length) == stor57.length.field_1 < 32:
                revert with 0, 34
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
                    return Array(len=2 * Mask(256, -1, stor57.length), data=mem[128 len ceil32(uint255(stor57.length) * 0.5)])
                mem[128] = 256 * stor57.length.field_8
        mem[ceil32(uint255(stor57.length) * 0.5) + 192 len ceil32(uint255(stor57.length) * 0.5)] = mem[128 len ceil32(uint255(stor57.length) * 0.5)]
        if ceil32(uint255(stor57.length) * 0.5) > uint255(stor57.length) * 0.5:
            mem[ceil32(uint255(stor57.length) * 0.5) + (uint255(stor57.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor57.length), data=mem[128 len ceil32(uint255(stor57.length) * 0.5)], mem[(2 * ceil32(uint255(stor57.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor57.length) * 0.5)]), 
    if bool(stor57.length) == stor57.length.field_1 < 32:
        revert with 0, 34
    if bool(stor57.length):
        if bool(stor57.length) == uint255(stor57.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor57.length):
            if 31 < uint255(stor57.length) * 0.5:
                mem[128] = uint256(stor57.field_0)
                idx = 128
                s = 0
                while (uint255(stor57.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor57[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor57.length % 128, data=mem[128 len ceil32(stor57.length.field_1)])
            mem[128] = 256 * stor57.length.field_8
    else:
        if bool(stor57.length) == stor57.length.field_1 < 32:
            revert with 0, 34
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



}
