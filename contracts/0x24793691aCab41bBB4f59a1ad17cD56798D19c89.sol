contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
mapping of uint256 stor7;

function _fallback() payable {
    stor3 = 0
    stor5 = 0xbf83bf66019a082564501dc70e2ebf3cecf03510
    stor6 = 0
    require not msg.value
    mem[96 len -6303] = code.data[6905 len -6303]
    mem[64] = -6207
    stor0 = msg.sender
    stor4 = mem[96] * 10^stor3
    stor7[address(msg.sender)] = stor4
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    return code.data[602 len 6303]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
address stor5;
uint256 totalRised;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function totalRised() {
    return totalRised
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] += -1 * arg1 * 10^decimals
    totalSupply += -1 * arg1 * 10^decimals
    emit Burn(arg1, msg.sender);
    return 1
}

function _fallback() payable {
    require balanceOf[address(msg.sender)] <= 0
    balanceOf[address(msg.sender)] += 188 * 10^decimals
    totalSupply += 188 * 10^decimals
    totalRised += msg.value
    emit Transfer(188, 0, msg.sender);
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    balanceOf[address(arg1)] += arg2 * 10^decimals
    totalSupply += arg2 * 10^decimals
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function safeWithdrawal(uint256 arg1) {
    if stor5 == msg.sender:
        call stor5 with:
           value totalRised wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            emit FundTransfer(stor5, arg1, 0);
            totalRised -= arg1
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply += -1 * arg2 * 10^decimals
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    require not stor9[address(msg.sender)]
    require not stor9[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require not stor9[address(arg1)]
    require not stor9[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
