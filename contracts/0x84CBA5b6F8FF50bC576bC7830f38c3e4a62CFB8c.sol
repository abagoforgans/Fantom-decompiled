contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 symbol;
uint256 decimals;
uint256 name;
address governanceAddress;
uint128 sub_98b4e8d3;
uint128 oven; offset 128

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function governance() payable {
    return governanceAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() payable {
    return symbol
}

function sub_98b4e8d3(?) payable {
    return sub_98b4e8d3
}

function oven() payable {
    return oven
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1) payable {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if uint255(arg3 / 100) != arg3 / 100:
        revert with 0, 'ds-math-mul-overflow'
    if arg3 - (2 * arg3 / 100) > arg3:
        revert with 0, 'ds-math-sub-underflow'
    if balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100) < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (2 * arg3 / 100)
    if sub_98b4e8d3 + uint128(arg3 / 100) < sub_98b4e8d3:
        revert with 0, 'ds-math-add-overflow'
    sub_98b4e8d3 = uint128(sub_98b4e8d3 + uint128(arg3 / 100))
    if oven + uint128(arg3 / 100) < oven:
        revert with 0, 'ds-math-add-overflow'
    oven = uint128(oven + uint128(arg3 / 100))
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(msg.sender)][address(msg.sender)] - arg2 > allowance[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if uint255(arg2 / 100) != arg2 / 100:
        revert with 0, 'ds-math-mul-overflow'
    if arg2 - (2 * arg2 / 100) > arg2:
        revert with 0, 'ds-math-sub-underflow'
    if balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100) < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (2 * arg2 / 100)
    if sub_98b4e8d3 + uint128(arg2 / 100) < sub_98b4e8d3:
        revert with 0, 'ds-math-add-overflow'
    sub_98b4e8d3 = uint128(sub_98b4e8d3 + uint128(arg2 / 100))
    if oven + uint128(arg2 / 100) < oven:
        revert with 0, 'ds-math-add-overflow'
    oven = uint128(oven + uint128(arg2 / 100))
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
