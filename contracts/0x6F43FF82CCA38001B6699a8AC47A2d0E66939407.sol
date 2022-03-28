contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor3;
address stor5;
uint256 stor6;

function _fallback() payable {
    stor3 = 0
    require not msg.value
    stor1[address(msg.sender)] = stor3
    stor5 = msg.sender
    stor6 = block.timestamp
    return code.data[99 len 4317]
}



// =====================  Runtime code  =====================


const name = 'ChainLink Token'

const decimals = 18

const symbol = 'anyLINK'

const effectiveInterval = (48 * 24 * 3600)


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor4;
address stor5;
uint256 stor6;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function owner() {
    if block.timestamp >= stor6:
        return stor5
    return stor4
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function Swapout(uint256 arg1, address arg2) {
    require arg2
    require msg.sender
    require this.address != msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit LogSwapout(arg1, msg.sender, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function Swapin(bytes32 arg1, address arg2, uint256 arg3) {
    if block.timestamp >= stor6:
        require msg.sender == stor5
    else:
        require msg.sender == stor4
    require arg2
    require arg2 != this.address
    require arg3 + totalSupply >= totalSupply
    totalSupply += arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, 0, arg2);
    emit LogSwapin(arg3, arg1, arg2);
    return 1
}

function changeMPCOwner(address arg1) {
    if block.timestamp >= stor6:
        require msg.sender == stor5
    else:
        require msg.sender == stor4
    require arg1
    if block.timestamp < stor6:
        stor5 = arg1
        stor6 = block.timestamp + (48 * 24 * 3600)
        emit LogChangeMPCOwner(stor4, arg1, block.timestamp + (48 * 24 * 3600));
    else:
        stor4 = stor5
        stor5 = arg1
        stor6 = block.timestamp + (48 * 24 * 3600)
        emit LogChangeMPCOwner(stor5, arg1, block.timestamp + (48 * 24 * 3600));
    return 1
}

function transferAndCall(address arg1, uint256 arg2, bytes arg3) {
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.onTokenTransfer(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    return 1
}



}
