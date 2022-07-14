contract main {




// =====================  Runtime code  =====================


const name = 'DOGE PUMP'

const decimals = 18

const symbol = 'DOGEPUMP'


uint256 totalSupply;
address teamWalletAddress;
array of uint256 broken;
array of uint256 sub_31e77853;
uint8 stor4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_0193a955(?) {
    return sub_31e77853[0 len sub_31e77853.length]
}

function totalSupply() {
    return totalSupply
}

function sub_31e77853(?) {
    return sub_31e77853[0 len sub_31e77853.length]
}

function sub_3abf14e2(?) {
    return broken[0 len broken.length]
}

function wallet() {
    return teamWalletAddress
}

function teamWallet() {
    return teamWalletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function broken() {
    return broken[0 len broken.length]
}

function locked() {
    return bool(stor4)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function lock() {
    return not bool(stor4)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call teamWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
