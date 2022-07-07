contract main {




// =====================  Runtime code  =====================


#
#  - mint(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15, bytes arg16, bytes32 arg17, bytes32 arg18, bytes32 arg19, uint256 arg20)
#  - transfer(bytes arg1, uint256 arg2, uint256 arg3, uint256 arg4, bytes32 arg5, uint256 arg6, address arg7, address arg8, bytes32 arg9, bytes arg10, bytes32 arg11, bytes32 arg12, bytes32 arg13, uint256 arg14, bytes32 arg15, bytes arg16, uint256 arg17, uint256 arg18, uint256 arg19, bytes32 arg20, bytes arg21, bytes32 arg22, bytes32 arg23, bytes32 arg24, uint256 arg25, bytes32 arg26, bytes arg27, bytes32 arg28, bytes32 arg29, bytes32 arg30, uint256 arg31, bytes arg32, bytes32 arg33, bytes32 arg34, bytes32 arg35, uint256 arg36)
#
const decimals = 18

const ACCOUNT_ROOT_HISTORY_SIZE = 100


address depositVerifierAddress;
address withdrawVerifierAddress;
address treeUpdateVerifierAddress;
mapping of uint8 stor3;
uint256 accountCount;
array of uint256 lastAccountRoot;
address debtTokenAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor109;
array of struct stor110;

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

function debtToken() {
    return debtTokenAddress
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

function unitPerUnderlying() {
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
            gas gas_remaining wei
           args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function underlyingBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function symbol() {
    if bool(stor110.length):
        if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor110.length):
            if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor110.length):
                if 31 < uint255(stor110.length) * 0.5:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor110.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)])
                mem[128] = 256 * stor110.length.field_8
        else:
            if bool(stor110.length) == stor110.length.field_1 < 32:
                revert with 0, 34
            if stor110.length.field_1:
                if 31 < stor110.length.field_1:
                    mem[128] = uint256(stor110.field_0)
                    idx = 128
                    s = 0
                    while stor110.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor110[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)])
                mem[128] = 256 * stor110.length.field_8
        mem[ceil32(uint255(stor110.length) * 0.5) + 192 len ceil32(uint255(stor110.length) * 0.5)] = mem[128 len ceil32(uint255(stor110.length) * 0.5)]
        if ceil32(uint255(stor110.length) * 0.5) > uint255(stor110.length) * 0.5:
            mem[ceil32(uint255(stor110.length) * 0.5) + (uint255(stor110.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor110.length), data=mem[128 len ceil32(uint255(stor110.length) * 0.5)], mem[(2 * ceil32(uint255(stor110.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor110.length) * 0.5)]), 
    if bool(stor110.length) == stor110.length.field_1 < 32:
        revert with 0, 34
    if bool(stor110.length):
        if bool(stor110.length) == uint255(stor110.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor110.length):
            if 31 < uint255(stor110.length) * 0.5:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while (uint255(stor110.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    else:
        if bool(stor110.length) == stor110.length.field_1 < 32:
            revert with 0, 34
        if stor110.length.field_1:
            if 31 < stor110.length.field_1:
                mem[128] = uint256(stor110.field_0)
                idx = 128
                s = 0
                while stor110.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor110[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)])
            mem[128] = 256 * stor110.length.field_8
    mem[ceil32(stor110.length.field_1) + 192 len ceil32(stor110.length.field_1)] = mem[128 len ceil32(stor110.length.field_1)]
    if ceil32(stor110.length.field_1) > stor110.length.field_1:
        mem[ceil32(stor110.length.field_1) + stor110.length.field_1 + 192] = 0
    return Array(len=stor110.length % 128, data=mem[128 len ceil32(stor110.length.field_1)], mem[(2 * ceil32(stor110.length.field_1)) + 192 len 2 * ceil32(stor110.length.field_1)]), 
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
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 774] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < ext_call.return_data[0]:
            revert with 0, 'Underlying per unit is overstated'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 770] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 774] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
            revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 770] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 802] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 834] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 866] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 898] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 930] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 962] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 994] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1026] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1058] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 770]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1478] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1510 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + arg1.length + 1510 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
    if arg2.length:
        revert with 0, 'Cannot use amount for burning'
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
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 774] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < ext_call.return_data[0]:
            revert with 0, 'Underlying per unit is overstated'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 770] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 774] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 770] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
            revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 770] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 802] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 834] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 866] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 898] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 930] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 962] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 994] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1026] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1058] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 770]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1478] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1510 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + 1090 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(return_data.size) + arg1.length + 1510 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < ext_call.return_data[0]:
        revert with 0, 'Specified amount must equal msg.value'
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.wrap() with:
       value ext_call.return_data[0] wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to refund leftover balance to caller'
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
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
            revert with 0, 'Amount value out of range'
        if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Debt value out of range'
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Amount should be >= than fee'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1030] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < ext_call.return_data[0]:
            revert with 0, 'Underlying per unit is overstated'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1026] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
            revert with 0, 'Amount value out of range'
        if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Debt value out of range'
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Amount should be >= than fee'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1030] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
            revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1026] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1058] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1090] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1122] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1154] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1186] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1218] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1250] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1282] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1314] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1026]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1734] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1766 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + arg1.length + 1766 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
    if arg2.length != cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 'Amount can only be used for fee'
    if cd[(arg2 + cd[(arg2 + 132)] + 100)]:
        revert with 0, 'depositProofHash should be 0 for minting'
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args cd[(arg2 + cd[(arg2 + 132)] + 4)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    if ext_call.return_data[0]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send fee to relayer'
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
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
            revert with 0, 'Amount value out of range'
        if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Debt value out of range'
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Amount should be >= than fee'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1030] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < ext_call.return_data[0]:
            revert with 0, 'Underlying per unit is overstated'
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1026] = 0
        if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
            revert with 0, 'Incorrect external data hash'
        if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
            revert with 0, 'Amount value out of range'
        if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'Debt value out of range'
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Amount should be >= than fee'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1030] = 1
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                gas gas_remaining wei
               args 1
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 1026] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
            revert with 0, 'Underlying per unit is overstated'
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1026] = arg2.length
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1058] = cd[(arg2 + 36)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1090] = cd[(arg2 + 68)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1122] = cd[(arg2 + 100)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1154] = cd[(arg2 + 164)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1186] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1218] = cd[(arg2 + 228)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1250] = cd[(arg2 + 260)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1282] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1314] = 9
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288] = call.data[calldata.size len 288]
    idx = 0
    while idx < 9:
        if idx >= 9:
            revert with 0, 50
        mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1026]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if ceil32(arg1.length) <= arg1.length:
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288]), ceil32(arg1.length) + 96
    else:
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1734] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1766 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + 1346 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(return_data.size) + arg1.length + 1766 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
    if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 'Fee cannot be greater than amount'
    if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 17
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args (arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args cd[(arg2 + cd[(arg2 + 132)] + 4)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] > 0:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 36)]) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send amount to recipient'
    if ext_call.return_data[0]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value ext_call.return_data[0] wei
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
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 743] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 739] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 743] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
                revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 739] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 771] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 803] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 835] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 867] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 739]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1447] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1479 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288]
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1479 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
                gas gas_remaining wei
               args arg2.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value < ext_call.return_data[0]:
            revert with 0, 'Specified amount must equal msg.value'
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.wrap() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to refund leftover balance to caller'
    else:
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
            staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]), ceil32(arg3.length) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid tree update proof'
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
            if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var139001 = ceil32(arg1.length)
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var140001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 999] = 0
            mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
            mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
            require ext_code.size(treeUpdateVerifierAddress)
            staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1031 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid tree update proof'
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
            if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var140001 = ceil32(arg1.length)
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg1.length + 1735] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288]
        require ext_code.size(depositVerifierAddress)
        staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639 len ceil32(arg1.length) + ceil32(return_data.size) + 416]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1639] = 32
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1671] = 21
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1703] = 0x496e76616c6964206465706f7369742070726f6f660000000000000000000000
            revert with memory
              from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635
               len (5 * ceil32(return_data.size)) + 100
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
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1667] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1699] = 128
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1763] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1795 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1795] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1731] = accountCount - 1
        emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + (5 * ceil32(return_data.size)) + 160]
        require ext_code.size(debtTokenAddress)
        staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
                gas gas_remaining wei
               args arg2.length
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value < ext_call.return_data[0]:
            revert with 0, 
                        'Specified amount must equal msg.value',
                        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (6 * ceil32(return_data.size)) + 1767 len 9 * ceil32(return_data.size)]
        require ext_code.size(debtTokenAddress)
        call debtTokenAddress.wrap() with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            'Failed to refund leftover balance to caller',
                            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (6 * ceil32(return_data.size)) + 1767 len 9 * ceil32(return_data.size)]
        else:
            if not ext_call.success:
                revert with 0, 
                            'Failed to refund leftover balance to caller',
                            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 1768 len 9 * ceil32(return_data.size)]
    ('bool', 'ext_call.success')
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
    if stor3[cd[(arg2 + 196)]]:
        revert with 0, 'Outdated account state'
    if accountCount % 100 >= 100:
        revert with 0, 50
    if cd[(arg2 + 164)] == lastAccountRoot[stor4 % 100]:
        if cd[(arg2 + 260)] != accountCount:
            revert with 0, 'Incorrect account insert index'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 743] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 739] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 743] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 739] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
                revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 739] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 771] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 803] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 835] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 867] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 739]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1447] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1479 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059 len 288]
            require ext_code.size(depositVerifierAddress)
            staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1479 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
        if arg2.length:
            revert with 0, 'Cannot use amount for burning'
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
        staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = 32
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = 32
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var140001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var141001 = ceil32(arg1.length)
    else:
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 999] = 0
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 4
        mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 1031 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + 771 len 128]
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1031 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Invalid tree update proof'
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 931] = 32
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 963] = 32
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
        mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
            var141001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1027] = 0
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 899] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + 96
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, 32, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1031] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027] = arg2.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1059] = cd[(arg2 + 36)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1091] = cd[(arg2 + 68)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1123] = cd[(arg2 + 100)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1155] = cd[(arg2 + 164)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1187] = cd[(arg2 + 196)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1219] = cd[(arg2 + 228)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1251] = cd[(arg2 + 260)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = cd[(arg2 + 292)]
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = 9
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288] = call.data[calldata.size len 288]
            idx = 0
            while idx < 9:
                if idx >= 9:
                    revert with 0, 50
                mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1027]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639] = 64
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1703] = arg1.length
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg1.length + 1735] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1671] = ceil32(arg1.length) + 96
    mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1735] = 9
    mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1767 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347 len 288]
    require ext_code.size(depositVerifierAddress)
    staticcall depositVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
            gas gas_remaining wei
           args mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1639 len ceil32(arg1.length) + ceil32(return_data.size) + 416]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1635] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1671] = 21
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1703] = 0x496e76616c6964206465706f7369742070726f6f660000000000000000000000
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635
           len (5 * ceil32(return_data.size)) + 100
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
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = cd[(arg2 + 292)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1667] = cd[(arg2 + 196)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1699] = 128
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1763] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1795 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)] + 1795] = 0
    mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1731] = accountCount - 1
    emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + (5 * ceil32(return_data.size)) + 160]
    if arg2.length:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1671] = 29
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1703] = 'Cannot use amount for burning'
        revert with memory
          from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635
           len (5 * ceil32(return_data.size)) + 100
    if not msg.sender:
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1671] = 33
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1703] = 'ERC20: burn from the zero addres'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1735] = 0x7300000000000000000000000000000000000000000000000000000000000000
    else:
        if balanceOf[address(msg.sender)] >= cd[(arg2 + 36)]:
            balanceOf[address(msg.sender)] -= cd[(arg2 + 36)]
            if totalSupply < cd[(arg2 + 36)]:
                revert with 0, 17
            totalSupply -= cd[(arg2 + 36)]
            emit Transfer(cd[(arg2 + 36)], msg.sender, 0);
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1639] = 32
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1671] = 34
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1703] = 'ERC20: burn amount exceeds balan'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1735] = 0x6365000000000000000000000000000000000000000000000000000000000000
    revert with memory
      from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 4)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1635
       len (5 * ceil32(return_data.size)) + 132
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
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 995] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < ext_call.return_data[0]:
                revert with 0, 'Underlying per unit is overstated'
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 995] = 0
            if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                revert with 0, 'Incorrect external data hash'
            if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                revert with 0, 'Amount value out of range'
            if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'Debt value out of range'
            if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                revert with 0, 'Amount should be >= than fee'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 999] = 1
            require ext_code.size(debtTokenAddress)
            staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                    gas gas_remaining wei
                   args 1
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 995] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if cd[(arg2 + 68)] < 0, ext_call.return_data[4 len 28]:
                revert with 0, 'Underlying per unit is overstated'
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995] = arg2.length
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = cd[(arg2 + 36)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = cd[(arg2 + 68)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + 100)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = cd[(arg2 + 164)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + 228)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = cd[(arg2 + 260)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = 9
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315 len 288] = call.data[calldata.size len 288]
        idx = 0
        while idx < 9:
            if idx >= 9:
                revert with 0, 50
            mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 995]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if ceil32(arg1.length) <= arg1.length:
            require ext_code.size(withdrawVerifierAddress)
            staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, 9, mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315 len 288]), ceil32(arg1.length) + 96
        else:
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1703] = 9
            mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1735 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1315 len 288]
            require ext_code.size(withdrawVerifierAddress)
            staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg1.length, data=Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256) << (8 * ceil32(arg1.length)) - 256, Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + arg1.length + 1735 len -arg1.length + ceil32(arg1.length) + 288]), ceil32(arg1.length) + 96
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
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            revert with 0, 'Fee cannot be greater than amount'
    else:
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
            staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, 4, mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128]), ceil32(arg3.length) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid tree update proof'
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + cd[(arg2 + 132)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = address(cd[(arg2 + cd[(arg2 + 132)] + 36)])
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = address(cd[(arg2 + cd[(arg2 + 132)] + 68)])
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + cd[(arg2 + 132)] + 100)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = 160
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
            if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + 224
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                    revert with 0, 'Amount value out of range'
                if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Debt value out of range'
                if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                    revert with 0, 'Amount should be >= than fee'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1287] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1379] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1411] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1443] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1475] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1507] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1539] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1571] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var149001 = ceil32(arg1.length)
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1283] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + 224
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                    revert with 0, 'Amount value out of range'
                if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Debt value out of range'
                if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                    revert with 0, 'Amount should be >= than fee'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1287] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1379] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1411] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1443] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1475] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1507] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1539] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1571] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var150001 = ceil32(arg1.length)
        else:
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1127] = 0
            mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1127] = 4
            mem[ceil32(arg3.length) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 1159 len 128] = mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + 899 len 128]
            require ext_code.size(treeUpdateVerifierAddress)
            staticcall treeUpdateVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                    gas gas_remaining wei
                   args Array(len=arg3.length, data=Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg4) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256) << (8 * ceil32(arg3.length)) - 256, Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + arg3.length + 1159 len -arg3.length + ceil32(arg3.length) + 128]), ceil32(arg3.length) + 96
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Invalid tree update proof'
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1059] = 32
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1091] = cd[(arg2 + cd[(arg2 + 132)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1123] = address(cd[(arg2 + cd[(arg2 + 132)] + 36)])
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1155] = address(cd[(arg2 + cd[(arg2 + 132)] + 68)])
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1187] = cd[(arg2 + cd[(arg2 + 132)] + 100)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1219] = 160
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1251] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]
            mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
            if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) <= cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + 224
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                    revert with 0, 'Amount value out of range'
                if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Debt value out of range'
                if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                    revert with 0, 'Amount should be >= than fee'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1287] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1379] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1411] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1443] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1475] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1507] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1539] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1571] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
                var150001 = ceil32(arg1.length)
            else:
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 1283] = 0
                mem[ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1027] = ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + 224
                if cd[(arg2 + 100)] != Mask(248, 0, sha3(32, cd[(arg2 + cd[(arg2 + 132)] + 4)], address(cd[(arg2 + cd[(arg2 + 132)] + 36)]), address(cd[(arg2 + cd[(arg2 + 132)] + 68)]), cd[(arg2 + cd[(arg2 + 132)] + 100)], 160, cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256)):
                    revert with 0, 'Incorrect external data hash'
                if 0x100000000000000000000000000000000000000000000000000000000000000 <= arg2.length:
                    revert with 0, 'Amount value out of range'
                if cd[(arg2 + 36)] >= 0x100000000000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'Debt value out of range'
                if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
                    revert with 0, 'Amount should be >= than fee'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1287] = 1
                require ext_code.size(debtTokenAddress)
                staticcall debtTokenAddress.underlyingToDebt(uint256 arg1) with:
                        gas gas_remaining wei
                       args 1
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + ceil32(return_data.size) + 1283] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if cd[(arg2 + 68)] < ext_call.return_data[0]:
                    revert with 0, 'Underlying per unit is overstated'
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283] = arg2.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1315] = cd[(arg2 + 36)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1347] = cd[(arg2 + 68)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1379] = cd[(arg2 + 100)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1411] = cd[(arg2 + 164)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1443] = cd[(arg2 + 196)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1475] = cd[(arg2 + 228)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1507] = cd[(arg2 + 260)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1539] = cd[(arg2 + 292)]
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1571] = 9
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603 len 288] = call.data[calldata.size len 288]
                idx = 0
                while idx < 9:
                    if idx >= 9:
                        revert with 0, 50
                    mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603] = mem[(32 * idx) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1283]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895] = 64
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1959] = arg1.length
                mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991 len ceil32(arg1.length)] = arg1[all], Mask(8 * ceil32(arg1.length) - arg1.length, -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256, arg2.length) >> -(8 * ceil32(arg1.length) + -ceil32(ceil32(arg1.length)) + 31) + 256
        if ceil32(arg1.length) > arg1.length:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + arg1.length + 1991] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1927] = ceil32(arg1.length) + 96
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1991] = 9
        mem[ceil32(arg1.length) + ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 2023 len 288] = mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1603 len 288]
        require ext_code.size(withdrawVerifierAddress)
        staticcall withdrawVerifierAddress.verifyProof(bytes arg1, uint256[] arg2) with:
                gas gas_remaining wei
               args mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1895 len ceil32(arg1.length) + ceil32(return_data.size) + 416]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (2 * ceil32(return_data.size)) + 1891] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1895] = 32
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1927] = 24
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1959] = 'Invalid withdrawal proof'
            revert with memory
              from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891
               len (5 * ceil32(return_data.size)) + 100
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
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891] = cd[(arg2 + 292)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1923] = cd[(arg2 + 196)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1955] = 128
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 2019] = cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 2051 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])] = call.data[arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 36 len cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) - cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256, cd[(arg2 + 164)]) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) > cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)] + 2051] = 0
        mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1987] = accountCount - 1
        emit 0xbd4a5ca1: mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891 len ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + (5 * ceil32(return_data.size)) + 160]
        if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1895] = 32
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1927] = 33
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1959] = 'Fee cannot be greater than amoun'
            mem[ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1991] = 0x7400000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)]) + ceil32(ceil32(arg1.length)) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 132)] + cd[(arg2 + cd[(arg2 + 132)] + 132)] + 4)])) + ceil32(ceil32(arg3.length)) + (4 * ceil32(return_data.size)) + 1891
               len (5 * ceil32(return_data.size)) + 132
    ('ge', ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg2'), ('cd', ('add', 132, ('param', 'arg2'))))))
    if arg2.length < cd[(arg2 + cd[(arg2 + 132)] + 4)]:
        revert with 0, 17
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args (arg2.length - cd[(arg2 + cd[(arg2 + 132)] + 4)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    staticcall debtTokenAddress.debtToUnderlying(uint256 arg1) with:
            gas gas_remaining wei
           args cd[(arg2 + cd[(arg2 + 132)] + 4)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(debtTokenAddress)
    call debtTokenAddress.unwrap(uint256 arg1) with:
         gas gas_remaining wei
        args arg2.length
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[0] > 0:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 36)]) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send amount to recipient'
    if ext_call.return_data[0]:
        call address(cd[(arg2 + cd[(arg2 + 132)] + 68)]) with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send fee to relayer'
}



}
