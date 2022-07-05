contract main {




// =====================  Runtime code  =====================


#
#  - mint(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15, bytes arg16, bytes32 arg17, bytes32 arg18, bytes32 arg19, uint256 arg20)
#  - transfer(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15, bytes arg16, uint256 arg17, uint256 arg18, uint256 arg19, bytes32 arg20, bytes arg21, bytes32 arg22, bytes32 arg23, bytes32 arg24, uint256 arg25, bytes32 arg26, bytes arg27, bytes32 arg28, bytes32 arg29, bytes32 arg30, uint256 arg31, bytes arg32, bytes32 arg33, bytes32 arg34, bytes32 arg35, uint256 arg36)
#
const decimals = 18

const unitPerUnderlying = 1

const ACCOUNT_ROOT_HISTORY_SIZE = 100


address depositVerifierAddress;
address withdrawVerifierAddress;
address treeUpdateVerifierAddress;
mapping of uint8 stor3;
uint256 accountCount;
array of uint256 lastAccountRoot;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor108;
array of struct stor109;

function getLastAccountRoot() {
    if accountCount % 100 >= 100:
        revert with 0, 50
    return lastAccountRoot[stor4 % 100]
}

function totalSupply() {
    return totalSupply
}

function depositVerifier() {
    return depositVerifierAddress
}

function accountNullifiers(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function treeUpdateVerifier() {
    return treeUpdateVerifierAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function withdrawVerifier() {
    return withdrawVerifierAddress
}

function accountRoots(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < 100
    return lastAccountRoot[arg1]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function accountCount() {
    return accountCount
}

function _fallback() payable {
    revert
}

function isKnownAccountRoot(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return bool(arg1)
    if arg2 % 100 >= 100:
        revert with 0, 50
    return (lastAccountRoot[arg2 % 100] == arg1)
}

function approve(address arg1, uint256 arg2) {
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

function increaseAllowance(address arg1, uint256 arg2) {
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

function transfer(address arg1, uint256 arg2) {
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

function decreaseAllowance(address arg1, uint256 arg2) {
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function name() {
    if bool(stor108.length):
        if bool(stor108.length) == uint255(stor108.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor108.length):
            if bool(stor108.length) == uint255(stor108.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor108.length):
                if 31 < uint255(stor108.length) * 0.5:
                    mem[128] = uint256(stor108.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor108.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor108[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor108.length), data=mem[128 len ceil32(uint255(stor108.length) * 0.5)])
                mem[128] = 256 * stor108.length.field_8
        else:
            if bool(stor108.length) == stor108.length.field_1 < 32:
                revert with 0, 34
            if stor108.length.field_1:
                if 31 < stor108.length.field_1:
                    mem[128] = uint256(stor108.field_0)
                    idx = 128
                    s = 0
                    while stor108.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor108[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor108.length), data=mem[128 len ceil32(uint255(stor108.length) * 0.5)])
                mem[128] = 256 * stor108.length.field_8
        mem[ceil32(uint255(stor108.length) * 0.5) + 192 len ceil32(uint255(stor108.length) * 0.5)] = mem[128 len ceil32(uint255(stor108.length) * 0.5)]
        if ceil32(uint255(stor108.length) * 0.5) > uint255(stor108.length) * 0.5:
            mem[ceil32(uint255(stor108.length) * 0.5) + (uint255(stor108.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor108.length), data=mem[128 len ceil32(uint255(stor108.length) * 0.5)], mem[(2 * ceil32(uint255(stor108.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor108.length) * 0.5)]), 
    if bool(stor108.length) == stor108.length.field_1 < 32:
        revert with 0, 34
    if bool(stor108.length):
        if bool(stor108.length) == uint255(stor108.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor108.length):
            if 31 < uint255(stor108.length) * 0.5:
                mem[128] = uint256(stor108.field_0)
                idx = 128
                s = 0
                while (uint255(stor108.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor108[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor108.length % 128, data=mem[128 len ceil32(stor108.length.field_1)])
            mem[128] = 256 * stor108.length.field_8
    else:
        if bool(stor108.length) == stor108.length.field_1 < 32:
            revert with 0, 34
        if stor108.length.field_1:
            if 31 < stor108.length.field_1:
                mem[128] = uint256(stor108.field_0)
                idx = 128
                s = 0
                while stor108.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor108[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor108.length % 128, data=mem[128 len ceil32(stor108.length.field_1)])
            mem[128] = 256 * stor108.length.field_8
    mem[ceil32(stor108.length.field_1) + 192 len ceil32(stor108.length.field_1)] = mem[128 len ceil32(stor108.length.field_1)]
    if ceil32(stor108.length.field_1) > stor108.length.field_1:
        mem[ceil32(stor108.length.field_1) + stor108.length.field_1 + 192] = 0
    return Array(len=stor108.length % 128, data=mem[128 len ceil32(stor108.length.field_1)], mem[(2 * ceil32(stor108.length.field_1)) + 192 len 2 * ceil32(stor108.length.field_1)]), 
}

function symbol() {
    if bool(stor109.length):
        if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor109.length):
            if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor109.length):
                if 31 < uint255(stor109.length) * 0.5:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor109.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)])
                mem[128] = 256 * stor109.length.field_8
        else:
            if bool(stor109.length) == stor109.length.field_1 < 32:
                revert with 0, 34
            if stor109.length.field_1:
                if 31 < stor109.length.field_1:
                    mem[128] = uint256(stor109.field_0)
                    idx = 128
                    s = 0
                    while stor109.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor109[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)])
                mem[128] = 256 * stor109.length.field_8
        mem[ceil32(uint255(stor109.length) * 0.5) + 192 len ceil32(uint255(stor109.length) * 0.5)] = mem[128 len ceil32(uint255(stor109.length) * 0.5)]
        if ceil32(uint255(stor109.length) * 0.5) > uint255(stor109.length) * 0.5:
            mem[ceil32(uint255(stor109.length) * 0.5) + (uint255(stor109.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor109.length), data=mem[128 len ceil32(uint255(stor109.length) * 0.5)], mem[(2 * ceil32(uint255(stor109.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor109.length) * 0.5)]), 
    if bool(stor109.length) == stor109.length.field_1 < 32:
        revert with 0, 34
    if bool(stor109.length):
        if bool(stor109.length) == uint255(stor109.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor109.length):
            if 31 < uint255(stor109.length) * 0.5:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while (uint255(stor109.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    else:
        if bool(stor109.length) == stor109.length.field_1 < 32:
            revert with 0, 34
        if stor109.length.field_1:
            if 31 < stor109.length.field_1:
                mem[128] = uint256(stor109.field_0)
                idx = 128
                s = 0
                while stor109.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor109[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)])
            mem[128] = 256 * stor109.length.field_8
    mem[ceil32(stor109.length.field_1) + 192 len ceil32(stor109.length.field_1)] = mem[128 len ceil32(stor109.length.field_1)]
    if ceil32(stor109.length.field_1) > stor109.length.field_1:
        mem[ceil32(stor109.length.field_1) + stor109.length.field_1 + 192] = 0
    return Array(len=stor109.length % 128, data=mem[128 len ceil32(stor109.length.field_1)], mem[(2 * ceil32(stor109.length.field_1)) + 192 len 2 * ceil32(stor109.length.field_1)]), 
}

function deposit(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes arg6, bytes32 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, bytes32 arg11) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 32
    if not bool(ceil32(ceil32(arg1.length)) + 321 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 < 321 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 482 <= test266151307()):
        revert with 0, 65
    if cd[(arg2 + 36)]:
        revert with 0, 'Cannot use debt for depositing'
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] != lastAccountRoot[stor4 % 100]:
        if not cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        if cd[(arg2 + 260)] % 100 >= 100:
            revert with 0, 50
        if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        revert with 0, 'Outdated account merkle root'
    if cd[(arg2 + 260)] != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 770] = 0
    if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
        revert with 0, 'Incorrect external data hash'
    if cd[(arg2 + 68)] < 1:
        revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 802] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 834] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 866] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 898] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 930] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 962] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 994] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1026] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1058] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1478] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1510 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + arg1.length + 1510 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid deposit proof'
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = 0
    if accountCount < 1:
        revert with 0, 17
    emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]]), accountCount - 1
    if arg2.length != msg.value:
        revert with 0, 'Specified amount must equal msg.value'
}

function burn(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes arg6, bytes32 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, bytes32 arg11) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 32
    if not bool(ceil32(ceil32(arg1.length)) + 321 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 < 321 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 482 <= test266151307()):
        revert with 0, 65
    if arg2.length:
        revert with 0, 'Cannot use amount for burning'
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] != lastAccountRoot[stor4 % 100]:
        if not cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        if cd[(arg2 + 260)] % 100 >= 100:
            revert with 0, 50
        if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        revert with 0, 'Outdated account merkle root'
    if cd[(arg2 + 260)] != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 770] = 0
    if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
        revert with 0, 'Incorrect external data hash'
    if cd[(arg2 + 68)] < 1:
        revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 802] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 834] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 866] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 898] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 930] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 962] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 994] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1026] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1058] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1478] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1510 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 1090 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + arg1.length + 1510 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid deposit proof'
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = 0
    if accountCount < 1:
        revert with 0, 17
    emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]]), accountCount - 1
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < cd[(arg2 + 36)]:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= cd[(arg2 + 36)]
    if totalSupply < cd[(arg2 + 36)]:
        revert with 0, 17
    totalSupply -= cd[(arg2 + 36)]
    emit Transfer(cd[(arg2 + 36)], msg.sender, 0);
}

function withdraw(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + 449 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 36)] == address(cd[(arg2 + cd[(arg2 + 132)] + 36)])
    require cd[(arg2 + cd[(arg2 + 132)] + 68)] == address(cd[(arg2 + cd[(arg2 + 132)] + 68)])
    require cd[(arg2 + cd[(arg2 + 132)] + 132)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 < 449 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 610 <= test266151307()):
        revert with 0, 65
    if cd[(arg2 + 36)]:
        revert with 0, 'Cannot use debt for withdrawing'
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] != lastAccountRoot[stor4 % 100]:
        if not cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        if cd[(arg2 + 260)] % 100 >= 100:
            revert with 0, 50
        if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        revert with 0, 'Outdated account merkle root'
    if cd[(arg2 + 260)] != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1026] = 0
    if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
        revert with 0, 'Incorrect external data hash'
    if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
        revert with 0, 'Amount value out of range'
    if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Debt value out of range'
    if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 'Amount should be >= than fee'
    if cd[(arg2 + 68)] < 1:
        revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1058] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1090] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1122] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1154] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1186] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1218] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1250] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1282] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1314] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1734] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1766 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + arg1.length + 1766 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid withdrawal proof'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = 0
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount < 1:
        revert with 0, 17
    emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]]), accountCount - 1
    if cd[(arg2 + cd[(arg2 + 132)] + 100)]:
        revert with 0, '`depositProofHash` should be zeroed'
    if cd[(arg2 + cd[(arg2 + 132)] + 4)] > arg2.length:
        revert with 0, 32, 33, 0xfe416d6f756e742073686f756c642062652067726561746572207468616e206665, 128 / 0.00390625, 0
    if arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 36)]) with:
           value arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send amount to recipient'
    if cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send fee to relayer'
}

function mint(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + 449 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 36)] == address(cd[(arg2 + cd[(arg2 + 132)] + 36)])
    require cd[(arg2 + cd[(arg2 + 132)] + 68)] == address(cd[(arg2 + cd[(arg2 + 132)] + 68)])
    require cd[(arg2 + cd[(arg2 + 132)] + 132)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 < 449 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 610 <= test266151307()):
        revert with 0, 65
    if arg2.length != cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 'Amount can only be used for fee'
    if cd[(arg2 + cd[(arg2 + 132)] + 100)]:
        revert with 0, 'depositProofHash should be 0 for minting'
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] != lastAccountRoot[stor4 % 100]:
        if not cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        if cd[(arg2 + 260)] % 100 >= 100:
            revert with 0, 50
        if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
            revert with 0, 'Invalid account root'
        revert with 0, 'Outdated account merkle root'
    if cd[(arg2 + 260)] != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1026] = 0
    if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
        revert with 0, 'Incorrect external data hash'
    if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
        revert with 0, 'Amount value out of range'
    if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'Debt value out of range'
    if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 'Amount should be >= than fee'
    if cd[(arg2 + 68)] < 1:
        revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1058] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1090] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1122] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1154] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1186] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1218] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1250] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1282] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1314] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1734] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1766 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1346 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + arg1.length + 1766 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Invalid withdrawal proof'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = 0
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount < 1:
        revert with 0, 17
    emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]]), accountCount - 1
    if cd[(arg2 + 36)]:
        if not address(cd[(arg2 + cd[(arg2 + 132)] + 36)]):
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !cd[(arg2 + 36)]:
            revert with 0, 17
        totalSupply += cd[(arg2 + 36)]
        if balanceOf[address(cd[(arg2 + cd[(arg2 + 132)] + 36)])] > !cd[(arg2 + 36)]:
            revert with 0, 17
        balanceOf[address(cd[(arg2 + cd[(arg2 + 132)] + 36)])] += cd[(arg2 + 36)]
        emit Transfer(cd[(arg2 + 36)], 0, address(cd[(arg2 + cd[(arg2 + 132)] + 36)]));
    if cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send fee to relayer'
}

function deposit(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes arg6, bytes32 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, bytes32 arg11, bytes arg12, bytes32 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16) payable {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 32
    if not bool(ceil32(ceil32(arg1.length)) + 321 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 < 321 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 482 <= test266151307()):
        revert with 0, 65
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 483 < 482 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 483 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require calldata.size - 100 >= 128
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611 <= test266151307()):
        revert with 0, 65
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        if cd[(arg2 + 260)] != accountCount:
            revert with 0, 'Incorrect account insert index'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 739] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if cd[(arg2 + 68)] < 1:
            revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 803] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 835] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 867] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 899] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 931] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 963] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 995] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1027] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1447] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1479 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288]
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg1.length + 1479 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid deposit proof'
        stor3[cd[(arg2 + 196)]] = 1
        if accountCount % 100 >= 100:
            revert with 0, 50
        if accountCount == -1:
            revert with 0, 17
        accountCount++
        if accountCount + 1 % 100 >= 100:
            revert with 0, 50
        if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
            lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
        else:
            lastAccountRoot[stor4 + 1 % 100] = arg5
        if accountCount < 1:
            revert with 0, 17
        emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]]), accountCount - 1
        if arg2.length != msg.value:
            revert with 0, 'Specified amount must equal msg.value'
    if not cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if cd[(arg2 + 260)] % 100 >= 100:
        revert with 0, 50
    if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if arg3.length <= 0:
        revert with 0, 'Outdated account merkle root'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if arg4 != lastAccountRoot[stor4 % 100]:
        revert with 0, 'Outdated tree update merkle root'
    if arg6 != cd[(arg2 + 292)]:
        revert with 0, 'Incorrect commitment inserted'
    if arg7 != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611] = arg4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 643] = arg5
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 675] = arg6
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 707] = arg7
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = 4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128] = call.data[calldata.size len 128]
    idx = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var133001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var134001 = ceil32(arg1.length)
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 999] = 0
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1031 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var134001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1671] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1735] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1671] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1767 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1635] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = 21
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = 0x496e76616c6964206465706f7369742070726f6f660000000000000000000000
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635
           len ceil32(return_data.size) + 100
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = arg5
    if accountCount < 1:
        revert with 0, 17
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1667] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1699] = 128
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1763] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1795 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1795] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1731] = accountCount - 1
    emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(return_data.size) + 160]
    if msg.value == arg2.length:
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 32
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = 37
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = 'Specified amount must equal msg.'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735] = 0x76616c7565000000000000000000000000000000000000000000000000000000
    revert with memory
      from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635
       len ceil32(return_data.size) + 132
}

function burn(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, bytes arg6, bytes32 arg7, bytes32 arg8, bytes32 arg9, uint256 arg10, bytes32 arg11, bytes arg12, bytes32 arg13, bytes32 arg14, bytes32 arg15, uint256 arg16) {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 32
    if not bool(ceil32(ceil32(arg1.length)) + 321 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 4)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 < 321 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 322 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 482 <= test266151307()):
        revert with 0, 65
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 483 < 482 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 483 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require calldata.size - 100 >= 128
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611 <= test266151307()):
        revert with 0, 65
    if arg2.length:
        revert with 0, 'Cannot use amount for burning'
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        if cd[(arg2 + 260)] != accountCount:
            revert with 0, 'Incorrect account insert index'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 739] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if cd[(arg2 + 68)] < 1:
            revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 803] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 835] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 867] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 899] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 931] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 963] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 995] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1027] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1447] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1479 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059 len 288]
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg1.length + 1479 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid deposit proof'
        stor3[cd[(arg2 + 196)]] = 1
        if accountCount % 100 >= 100:
            revert with 0, 50
        if accountCount == -1:
            revert with 0, 17
        accountCount++
        if accountCount + 1 % 100 >= 100:
            revert with 0, 50
        if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
            lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
        else:
            lastAccountRoot[stor4 + 1 % 100] = arg5
        if accountCount < 1:
            revert with 0, 17
        emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]]), accountCount - 1
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < cd[(arg2 + 36)]:
            revert with 0, 'ERC20: burn amount exceeds balance'
        balanceOf[address(msg.sender)] -= cd[(arg2 + 36)]
        if totalSupply < cd[(arg2 + 36)]:
            revert with 0, 17
        totalSupply -= cd[(arg2 + 36)]
        emit Transfer(cd[(arg2 + 36)], msg.sender, 0);
    if not cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if cd[(arg2 + 260)] % 100 >= 100:
        revert with 0, 50
    if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if arg3.length <= 0:
        revert with 0, 'Outdated account merkle root'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if arg4 != lastAccountRoot[stor4 % 100]:
        revert with 0, 'Outdated tree update merkle root'
    if arg6 != cd[(arg2 + 292)]:
        revert with 0, 'Incorrect commitment inserted'
    if arg7 != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611] = arg4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 643] = arg5
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 675] = arg6
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 707] = arg7
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = 4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128] = call.data[calldata.size len 128]
    idx = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 611]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var135001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var136001 = ceil32(arg1.length)
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 999] = 0
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1031 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var136001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1671] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1735] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1671] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1767 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1635] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = 21
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = 0x496e76616c6964206465706f7369742070726f6f660000000000000000000000
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635
           len ceil32(return_data.size) + 100
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = arg5
    if accountCount < 1:
        revert with 0, 17
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1667] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1699] = 128
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1763] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1795 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1795] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1731] = accountCount - 1
    emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(return_data.size) + 160]
    if not msg.sender:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = 33
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = 'ERC20: burn from the zero addres'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735] = 0x7300000000000000000000000000000000000000000000000000000000000000
    else:
        if balanceOf[address(msg.sender)] >= cd[(arg2 + 36)]:
            balanceOf[address(msg.sender)] -= cd[(arg2 + 36)]
            if totalSupply < cd[(arg2 + 36)]:
                revert with 0, 17
            totalSupply -= cd[(arg2 + 36)]
            emit Transfer(cd[(arg2 + 36)], msg.sender, 0);
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = 34
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = 'ERC20: burn amount exceeds balan'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735] = 0x6365000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635
       len ceil32(return_data.size) + 132
}

function withdraw(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15, bytes arg16, bytes32 arg17, bytes32 arg18, bytes32 arg19, uint256 arg20) {
    require calldata.size - 4 >= 224
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size + -arg2 - 4 >= 320
    if not bool(ceil32(ceil32(arg1.length)) + 289 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + 132)] <= test266151307()
    require calldata.size + -arg2 + -cd[(arg2 + 132)] - 4 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + 449 <= test266151307()):
        revert with 0, 65
    require cd[(arg2 + cd[(arg2 + 132)] + 36)] == address(cd[(arg2 + cd[(arg2 + 132)] + 36)])
    require cd[(arg2 + cd[(arg2 + 132)] + 68)] == address(cd[(arg2 + cd[(arg2 + 132)] + 68)])
    require cd[(arg2 + cd[(arg2 + 132)] + 132)] <= test266151307()
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 35 < calldata.size
    if cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 < 449 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 450 > test266151307():
        revert with 0, 65
    require arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 36 <= calldata.size
    require calldata.size + -arg2 - 164 >= 160
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 610 <= test266151307()):
        revert with 0, 65
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 611 < 610 or ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 611 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require calldata.size - 100 >= 128
    if not bool(ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 739 <= test266151307()):
        revert with 0, 65
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        if cd[(arg2 + 260)] != accountCount:
            revert with 0, 'Incorrect account insert index'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 995 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 995] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
            revert with 0, 'Amount value out of range'
        if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Debt value out of range'
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Amount should be >= than fee'
        if cd[(arg2 + 68)] < 1:
            revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 995] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1027] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1059] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1091] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1123] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1155] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1187] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1219] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1251] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1283] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1315 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1315] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 995]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(withdrawVerifierAddress)
            staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1315 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1703] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1735 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1315 len 288]
            require ext_code.size(withdrawVerifierAddress)
            staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + arg1.length + 1735 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid withdrawal proof'
        if accountCount % 100 >= 100:
            revert with 0, 50
        if accountCount == -1:
            revert with 0, 17
        accountCount++
        if accountCount + 1 % 100 >= 100:
            revert with 0, 50
        if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
            lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
        else:
            lastAccountRoot[stor4 + 1 % 100] = arg5
        stor3[cd[(arg2 + 196)]] = 1
        if accountCount < 1:
            revert with 0, 17
        emit 0xbd4a5ca1: cd[(arg2 + 292)], cd[(arg2 + 196)], Array(len=cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], data=call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]]), accountCount - 1
        if cd[(arg2 + cd[(arg2 + 132)] + 100)]:
            revert with 0, '`depositProofHash` should be zeroed'
        if cd[(arg2 + cd[(arg2 + 132)] + 4)] > arg2.length:
            revert with 0, 32, 33, 0xfe416d6f756e742073686f756c642062652067726561746572207468616e206665, 128 / 0.00390625, 0
        if arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            call address(cd[(arg2 + cd[(arg2 + 132)] + 36)]) with:
               value arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send amount to recipient'
        if cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
               value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
                 gas gas_remaining wei
            if not ext_call.success:
                revert with 0, 'Failed to send fee to relayer'
    if not cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if cd[(arg2 + 260)] % 100 >= 100:
        revert with 0, 50
    if lastAccountRoot[cd[(arg2 + 260)] % 100] != cd[(arg2 + 164)]:
        revert with 0, 'Invalid account root'
    if arg3.length <= 0:
        revert with 0, 'Outdated account merkle root'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if arg4 != lastAccountRoot[stor4 % 100]:
        revert with 0, 'Outdated tree update merkle root'
    if arg6 != cd[(arg2 + 292)]:
        revert with 0, 'Incorrect commitment inserted'
    if arg7 != accountCount:
        revert with 0, 'Incorrect account insert index'
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = arg4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 771] = arg5
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 803] = arg6
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 835] = arg7
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 867] = 4
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128] = call.data[calldata.size len 128]
    idx = 0
    while idx < 4:
        if idx >= 4:
            revert with 0, 50
        mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899] = mem[(32 * idx) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 739]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1127 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    if ceil32(arg3.length) <= arg3.length:
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1127] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1159 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1379] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1411] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1443] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1475] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1507] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1539] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1571] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1895] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1959] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var143001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1283] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1379] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1411] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1443] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1475] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1507] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1539] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1571] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1895] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1959] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var144001 = ceil32(arg1.length)
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1127] = 0
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1127] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1159 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1159 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1379] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1411] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1443] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1475] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1507] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1539] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1571] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1895] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1959] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var144001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1283] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            if cd[(arg2 + 68)] < 1:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1347] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1379] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1411] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1443] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1475] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1507] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1539] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1571] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1895] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1959] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) <= arg1.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1927] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 2023 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1991] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1927] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1991] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 2023 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1603 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.0x1e8e1e13 with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 2023 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1891] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1927] = 24
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = 'Invalid withdrawal proof'
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891
           len ceil32(return_data.size) + 100
    if accountCount % 100 >= 100:
        revert with 0, 50
    if accountCount == -1:
        revert with 0, 17
    accountCount++
    if accountCount + 1 % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        lastAccountRoot[stor4 + 1 % 100] = cd[(arg2 + 228)]
    else:
        lastAccountRoot[stor4 + 1 % 100] = arg5
    stor3[cd[(arg2 + 196)]] = 1
    if accountCount < 1:
        revert with 0, 17
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1923] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1955] = 128
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2019] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2051 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 2051] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987] = accountCount - 1
    emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(return_data.size) + 160]
    if cd[(arg2 + cd[(arg2 + 132)] + 100)]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1927] = 35
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = '`depositProofHash` should be zer'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 0x6f65640000000000000000000000000000000000000000000000000000000000
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891
           len ceil32(return_data.size) + 132
    if cd[(arg2 + cd[(arg2 + 132)] + 4)] > arg2.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2023] = 33
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2055 len 64] = 0xfe416d6f756e742073686f756c642062652067726561746572207468616e206665, 128
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2088] = 0
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987
           len ceil32(return_data.size) + 132
    if not arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        if not cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
             gas gas_remaining wei
        if not return_data.size:
            if ext_call.success:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 32
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2023] = 29
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2055] = 'Failed to send fee to relayer'
            revert with memory
              from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987
               len ceil32(return_data.size) + 100
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2019 len return_data.size] = ext_call.return_data[0 len return_data.size]
    else:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 36)]) with:
           value arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 32
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2023] = 34
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2055] = 'Failed to send amount to recipie'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2087] = 0x6e74000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987
                   len ceil32(return_data.size) + 132
            if not cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
               value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
                 gas gas_remaining wei
            if not return_data.size:
                if ext_call.success:
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 32
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2023] = 29
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2055] = 'Failed to send fee to relayer'
                revert with memory
                  from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1987
                   len ceil32(return_data.size) + 100
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2019 len return_data.size] = ext_call.return_data[0 len return_data.size]
        else:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2019 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1988] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1992] = 32
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 2024] = 34
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 2056] = 'Failed to send amount to recipie'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 2088] = 0x6e74000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1988
                   len ceil32(return_data.size) + 132
            if not cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
               value cd[(arg2 + cd[(arg2 + 132)] + 4)] wei
                 gas gas_remaining wei
            if return_data.size:
                if not ext_call.success:
                    revert with 0, 
                                'Failed to send fee to relayer',
                                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (6 * ceil32(return_data.size)) + 2089 len 9 * ceil32(return_data.size)]
    if ext_call.success:
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1988] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1992] = 32
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 2024] = 29
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 2056] = 'Failed to send fee to relayer'
    revert with memory
      from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 1988
       len ceil32(return_data.size) + 100
}



}
