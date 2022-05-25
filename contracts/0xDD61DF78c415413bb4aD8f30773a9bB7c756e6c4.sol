contract main {




// =====================  Runtime code  =====================


const decimals = 18

const getChainId = chainid


address owner;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 stor4;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor7;
array of struct stor8;
uint256 domainSeperator;
mapping of uint256 nonce;

function totalSupply() {
    return totalSupply
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        if not arg1:
            revert with 0, 'Ownable: new owner is the zero address'
    ('bool', ('param', 'arg1'))
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[mem[calldata.size + 108 len 20]][address(arg1)] = arg2
        emit Approval(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function listLiquidity(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        if owner != msg.sender:
            revert with 0, 'Ownable: caller is not the owner'
        stor3[address(arg1)] = 1
        stor3[arg2] = 1
        stor4 = block.number
        if msg.sender != this.address:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if owner != mem[calldata.size + 108 len 20]:
                revert with 0, 'Ownable: caller is not the owner'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if owner != mem[calldata.size + 108 len 20]:
            revert with 0, 'Ownable: caller is not the owner'
        stor3[address(arg1)] = 1
        stor3[arg2] = 1
        stor4 = block.number
        if msg.sender != this.address:
            if owner != msg.sender:
                revert with 0, 'Ownable: caller is not the owner'
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if owner != mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if allowance[address(msg.sender)][address(arg1)] > !arg2:
            revert with 0, 17
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 128] = calldata.size
        mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
        if allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] > !arg2:
            revert with 0, 17
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: approve from the zero address'
        if not arg1:
            revert with 0, 'ERC20: approve to the zero address'
        allowance[address(mem[calldata.size + 96])][address(arg1)] = allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] + arg2
        emit Approval((allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] + arg2), mem[calldata.size + 108 len 20], arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if stor2[address(arg1)]:
            revert with 0, 'BOTS: Play Fair'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        if 30 > !stor4:
            revert with 0, 17
        if block.number < stor4 + 30:
            if stor3[address(msg.sender)]:
                if balanceOf[address(arg1)] >= 5000:
                    stor2[address(arg1)] = 1
        emit Transfer(arg2, msg.sender, arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0, 'ERC20: transfer to the zero address'
        if stor2[address(arg1)]:
            revert with 0, 'BOTS: Play Fair'
        if balanceOf[address(mem[calldata.size + 96])] < arg2:
            revert with 0, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(mem[calldata.size + 96])] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        if 30 > !stor4:
            revert with 0, 17
        if block.number < stor4 + 30:
            if stor3[address(mem[calldata.size + 96])]:
                if balanceOf[address(arg1)] >= 5000:
                    stor2[address(arg1)] = 1
        emit Transfer(arg2, mem[calldata.size + 108 len 20], arg1);
    return 1
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(arg2.length) + 128 < 96 or ceil32(arg2.length) + 128 > test266151307():
        revert with 0, 65
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg5 == arg5
    mem[ceil32(arg2.length) + 128] = nonce[address(arg1)]
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)], address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)] > -2:
        revert with 0, 17
    nonce[address(arg1)]++
    mem[ceil32(arg2.length) + 674] = msg.sender
    mem[ceil32(arg2.length) + 706] = 96
    mem[ceil32(arg2.length) + 738] = arg2.length
    mem[ceil32(arg2.length) + 770 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 770] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[ceil32(arg2.length) + 674 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    mem[arg2.length + ceil32(arg2.length) + 674] = address(arg1)
    mem[arg2.length + ceil32(arg2.length) + 694 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + 674 len floor32(arg2.length + 51) - ceil32(arg2.length)]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(arg2.length) + 714] = 0
    call this.address.mem[arg2.length + ceil32(arg2.length) + 694 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(arg2.length) + 698 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if msg.sender != this.address:
        if allowance[address(msg.sender)][address(arg1)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
        if msg.sender != this.address:
            if allowance[address(msg.sender)][address(arg1)] < arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] -= arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if allowance[address(msg.sender)][address(arg1)] < arg2:
                revert with 0, 17
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 'ERC20: approve from the zero address'
            if not arg1:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[mem[calldata.size + 108 len 20]][address(arg1)] = allowance[address(msg.sender)][address(arg1)] - arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), mem[calldata.size + 108 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if allowance[mem[calldata.size + 108 len 20]][address(arg1)] < arg2:
            revert with 0, 'ERC20: decreased allowance below zero'
        if msg.sender != this.address:
            if allowance[mem[calldata.size + 108 len 20]][address(arg1)] < arg2:
                revert with 0, 17
            if not msg.sender:
                revert with 0, 'ERC20: approve from the zero address'
            if not arg1:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(msg.sender)][address(arg1)] = allowance[mem[calldata.size + 108 len 20]][address(arg1)] - arg2
            emit Approval((allowance[mem[calldata.size + 108 len 20]][address(arg1)] - arg2), msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if allowance[mem[calldata.size + 108 len 20]][address(arg1)] < arg2:
                revert with 0, 17
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 'ERC20: approve from the zero address'
            if not arg1:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = allowance[mem[calldata.size + 108 len 20]][address(arg1)] - arg2
            emit Approval((allowance[mem[calldata.size + 108 len 20]][address(arg1)] - arg2), mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    return 1
}

function name() {
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if bool(stor7.length):
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        else:
            if bool(stor7.length) == stor7.length.field_1 < 32:
                revert with 0, 34
            if stor7.length.field_1:
                if 31 < stor7.length.field_1:
                    mem[128] = uint256(stor7.field_0)
                    idx = 128
                    s = 0
                    while stor7.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor7[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)])
                mem[128] = 256 * stor7.length.field_8
        mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
        if ceil32(stor7.length.field_1) > stor7.length.field_1:
            mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor7.length.field_1), data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
    if bool(stor7.length) == stor7.length.field_1 < 32:
        revert with 0, 34
    if bool(stor7.length):
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    else:
        if bool(stor7.length) == stor7.length.field_1 < 32:
            revert with 0, 34
        if stor7.length.field_1:
            if 31 < stor7.length.field_1:
                mem[128] = uint256(stor7.field_0)
                idx = 128
                s = 0
                while stor7.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor7[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)])
            mem[128] = 256 * stor7.length.field_8
    mem[ceil32(stor7.length.field_1) + 192 len ceil32(stor7.length.field_1)] = mem[128 len ceil32(stor7.length.field_1)]
    if ceil32(stor7.length.field_1) > stor7.length.field_1:
        mem[ceil32(stor7.length.field_1) + stor7.length.field_1 + 192] = 0
    return Array(len=stor7.length % 128, data=mem[128 len ceil32(stor7.length.field_1)], mem[(2 * ceil32(stor7.length.field_1)) + 192 len 2 * ceil32(stor7.length.field_1)]), 
}

function symbol() {
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if bool(stor8.length):
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        else:
            if bool(stor8.length) == stor8.length.field_1 < 32:
                revert with 0, 34
            if stor8.length.field_1:
                if 31 < stor8.length.field_1:
                    mem[128] = uint256(stor8.field_0)
                    idx = 128
                    s = 0
                    while stor8.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor8[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)])
                mem[128] = 256 * stor8.length.field_8
        mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
        if ceil32(stor8.length.field_1) > stor8.length.field_1:
            mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor8.length.field_1), data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
    if bool(stor8.length) == stor8.length.field_1 < 32:
        revert with 0, 34
    if bool(stor8.length):
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    else:
        if bool(stor8.length) == stor8.length.field_1 < 32:
            revert with 0, 34
        if stor8.length.field_1:
            if 31 < stor8.length.field_1:
                mem[128] = uint256(stor8.field_0)
                idx = 128
                s = 0
                while stor8.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor8[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)])
            mem[128] = 256 * stor8.length.field_8
    mem[ceil32(stor8.length.field_1) + 192 len ceil32(stor8.length.field_1)] = mem[128 len ceil32(stor8.length.field_1)]
    if ceil32(stor8.length.field_1) > stor8.length.field_1:
        mem[ceil32(stor8.length.field_1) + stor8.length.field_1 + 192] = 0
    return Array(len=stor8.length % 128, data=mem[128 len ceil32(stor8.length.field_1)], mem[(2 * ceil32(stor8.length.field_1)) + 192 len 2 * ceil32(stor8.length.field_1)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor2[address(arg2)]:
        revert with 0, 'BOTS: Play Fair'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    if 30 > !stor4:
        revert with 0, 17
    if block.number < stor4 + 30:
        if stor3[address(arg1)]:
            if balanceOf[address(arg2)] >= 5000:
                stor2[address(arg2)] = 1
    emit Transfer(arg3, arg1, arg2);
    if msg.sender != this.address:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
        if msg.sender != this.address:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not mem[calldata.size + 108 len 20]:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(mem[calldata.size + 96])] = allowance[address(arg1)][address(msg.sender)] - arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if allowance[address(arg1)][mem[calldata.size + 108 len 20]] < arg3:
            revert with 0, 'ERC20: transfer amount exceeds allowance'
        if msg.sender != this.address:
            if allowance[address(arg1)][mem[calldata.size + 108 len 20]] < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][mem[calldata.size + 108 len 20]] - arg3
            emit Approval((allowance[address(arg1)][mem[calldata.size + 108 len 20]] - arg3), arg1, msg.sender);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if allowance[address(arg1)][mem[calldata.size + 108 len 20]] < arg3:
                revert with 0, 17
            if not arg1:
                revert with 0, 'ERC20: approve from the zero address'
            if not mem[calldata.size + ceil32(calldata.size) + 140 len 20]:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(mem[calldata.size + ceil32(calldata.size) + 128])] = allowance[address(arg1)][mem[calldata.size + 108 len 20]] - arg3
            emit Approval((allowance[address(arg1)][mem[calldata.size + 108 len 20]] - arg3), arg1, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    return 1
}



}
