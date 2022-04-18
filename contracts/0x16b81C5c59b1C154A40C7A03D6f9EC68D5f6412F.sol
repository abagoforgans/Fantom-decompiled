contract main {




// =====================  Runtime code  =====================


#
#  - mintAndFreeze(address arg1, uint256 arg2, uint64 arg3)
#
const __decimals = 18


uint8 transferrable;
address owner; offset 8
mapping of uint256 balanceOf;
uint256 totalSupplyCheck;
uint8 stor3;
mapping of uint256 allowance;
mapping of uint64 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
uint8 stor8;
uint8 mintingFinished; offset 8
array of uint256 __name;
array of uint256 symbol;
uint8 decimals;

function transferrable() {
    return bool(transferrable)
}

function mintingFinished() {
    return bool(mintingFinished)
}

function name() {
    return __name[0 len __name.length]
}

function totalSupply() {
    return totalSupplyCheck
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function __name() {
    return __name[0 len __name.length]
}

function __symbol() {
    return symbol[0 len symbol.length]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalSupplyCheck() {
    return totalSupplyCheck
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function stop_mint() {
    require msg.sender == owner
    stor8 = 1
}

function __AllowTokenTransfer() {
    require msg.sender == owner
    stor3 = 1
}

function __basicTokenTransferable() {
    require msg.sender == owner
    stor3 = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function finishMinting() {
    require msg.sender == owner
    require not mintingFinished
    mintingFinished = 1
    emit MintFinished()
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function freezingCount(address arg1) {
    mem[0] = 'WISH' or address(arg1) << 64
    mem[32] = 5
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    while uint64(idx):
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(idx)
        mem[32] = 5
        idx = stor5['WISH' or address(arg1) << 64 or uint64(idx)]
        s = s + 1
        continue 
    return s
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not mintingFinished
    require not stor8
    require arg2 + totalSupplyCheck >= totalSupplyCheck
    totalSupplyCheck += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor3:
        revert with 0, 'Token is not transferrable yet'
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getFreezing(address arg1, uint256 arg2) {
    idx = 0
    s = 0
    while idx < arg2 + 1:
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(s)
        mem[32] = 5
        if stor5['WISH' or address(arg1) << 64 or uint64(s)]:
            idx = idx + 1
            s = stor5['WISH' or address(arg1) << 64 or uint64(s)]
            continue 
        return stor5['WISH' or address(arg1) << 64 or uint64(s)], 0
    return arg2 + 1 << 198, stor6['WISH' or address(arg1) << 64 or 64 * arg2 + 1 % 288230376151711744]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not stor3:
        revert with 0, 'Token is not transferrable yet'
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require stor3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function releaseOnce() {
    require stor5['WISH' or msg.sender << 64]
    require uint64(block.timestamp) > stor5['WISH' or msg.sender << 64]
    stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] = 0
    require stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
    require stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] <= stor7[msg.sender]
    stor7[msg.sender] -= stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
    if not stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]:
        stor5['WISH' or msg.sender << 64] = 0
    else:
        stor5['WISH' or msg.sender << 64] = stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
        stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] = 0
    emit Released(stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]], msg.sender);
}

function releaseAll() {
    idx = 0
    s = 0
    while idx < 1:
        mem[0] = 'WISH' or msg.sender << 64 or uint64(s)
        mem[32] = 5
        if stor5['WISH' or msg.sender << 64 or uint64(s)]:
            idx = idx + 1
            s = stor5['WISH' or msg.sender << 64 or uint64(s)]
            continue 
        else:
            return 0
    if not var40002:
        return var40003
    idx = bool(var40002)
    s = var40001
    t = var40002
    t = var40003
    while idx:
        require stor5['WISH' or msg.sender << 64]
        require uint64(block.timestamp) > stor5['WISH' or msg.sender << 64]
        stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] = 0
        require stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] + balanceOf[msg.sender] >= balanceOf[msg.sender]
        balanceOf[msg.sender] += stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
        require stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] <= stor7[msg.sender]
        stor7[msg.sender] -= stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
        if not stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]:
            stor5['WISH' or msg.sender << 64] = 0
        else:
            stor5['WISH' or msg.sender << 64] = stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
            stor5['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]] = 0
        mem[96] = stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]]
        emit Released(stor6['WISH' or msg.sender << 64 or stor5['WISH' or msg.sender << 64]], msg.sender);
        idx = 0
        u = 0
        while idx < 1:
            mem[0] = 'WISH' or msg.sender << 64 or uint64(u)
            mem[32] = 5
            if stor5['WISH' or msg.sender << 64 or uint64(u)]:
                idx = idx + 1
                u = stor5['WISH' or msg.sender << 64 or uint64(u)]
                continue 
            return (s + t)
        mem[0] = 'WISH' or msg.sender << 64 or 64
        mem[32] = 6
        idx = 1
        s = stor6['WISH' or msg.sender << 64 or 64]
        t = 64
        t = s + t
        continue 
    return t
}



}
