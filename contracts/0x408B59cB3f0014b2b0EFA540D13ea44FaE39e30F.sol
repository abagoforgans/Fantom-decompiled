contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 16
uint256 stor0; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner;
uint16 stor155; offset 160
address monetaryPolicyAddress;
uint256 totalSupply;
uint256 stor157;
mapping of uint256 stor158;
mapping of uint256 allowance;
address deployerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function owner() {
    return owner
}

function monetaryPolicy() {
    return monetaryPolicyAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function deployer() {
    return deployerAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function balanceOf(address arg1) {
    require stor157 > 0
    require stor157
    return (stor158[address(arg1)] / stor157)
}

function setMonetaryPolicy(address arg1) {
    require msg.sender == owner
    monetaryPolicyAddress = arg1
    emit LogMonetaryPolicyUpdated(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    if not arg2:
        require 0 <= stor158[msg.sender]
        require stor158[arg1] >= stor158[arg1]
        stor158[address(arg1)] = stor158[arg1]
    else:
        require stor157 * arg2 / arg2 == stor157
        require stor157 * arg2 <= stor158[msg.sender]
        stor158[msg.sender] += -1 * stor157 * arg2
        require (stor157 * arg2) + stor158[arg1] >= stor158[arg1]
        stor158[address(arg1)] = (stor157 * arg2) + stor158[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    if not arg3:
        require 0 <= stor158[address(arg1)]
        require stor158[arg2] >= stor158[arg2]
        stor158[address(arg2)] = stor158[arg2]
    else:
        require stor157 * arg3 / arg3 == stor157
        require stor157 * arg3 <= stor158[address(arg1)]
        stor158[address(arg1)] += -1 * stor157 * arg3
        require (stor157 * arg3) + stor158[arg2] >= stor158[arg2]
        stor158[address(arg2)] = (stor157 * arg3) + stor158[arg2]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function rebase(uint256 arg1, int256 arg2) {
    require msg.sender == monetaryPolicyAddress
    if arg2:
        if arg2 >= 0:
            require arg2 + totalSupply >= totalSupply
            totalSupply += arg2
        else:
            require arg2 != 0x8000000000000000000000000000000000000000000000000000000000000000
            if arg2 < 0:
                require -arg2 <= totalSupply
                totalSupply += arg2
            else:
                require arg2 <= totalSupply
                totalSupply -= arg2
        if test266151307() < totalSupply:
            totalSupply = test266151307()
        require totalSupply > 0
        require totalSupply
        stor157 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
    emit LogRebase(totalSupply, arg1);
    return totalSupply
}

function initialize(string arg1, string arg2, address arg3, address arg4, address arg5) {
    require msg.sender == deployerAddress
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = 18
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    owner = arg3
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(240, 0, stor0.field_16) = 0
    stor0.field_256 % 1 = 0
    stor0.field_256 % 1 = 0
    stor155 = 0
    totalSupply = 100000 * 10^18
    stor157 = 0xc16d9a0095928a2775b7053c0f1782938d6f439b43088
    stor158[address(arg4)] = 0x3ffffffffffffffffffffffffffffffffffffffffffffde940016402bd000000
    stor158[arg5] = 0xbffffffffffffffffffffffffffffffffffffffffffff9bbc0042c0837000000
    require 75000 * 10^18 <= totalSupply
    emit Transfer((totalSupply - 75000 * 10^18), 0, arg4);
    emit Transfer(75000 * 10^18, 0, arg5);
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}



}
