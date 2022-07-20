contract main {




// =====================  Runtime code  =====================


const name = 'SCARY SHIBA'

const decimals = 18

const symbol = 'SCARYSHIBA'


uint256 totalSupply;
address stor1;
mapping of uint256 sub_c06212a5;
mapping of uint256 allowance;

function sub_12a2f685(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function totalSupply() {
    return totalSupply
}

function sub_3bb76a23(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_3fc67464(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_4aa27c59(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_6553afb8(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_a98ae531(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_bc38881c(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function sub_c06212a5(?) {
    require calldata.size - 4 >= 32
    return sub_c06212a5[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    call stor1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_c06212a5[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    sub_c06212a5[address(msg.sender)] -= arg2
    sub_c06212a5[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_c06212a5[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    sub_c06212a5[address(arg2)] += arg3
    sub_c06212a5[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
