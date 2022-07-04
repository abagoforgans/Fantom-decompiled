contract main {




// =====================  Runtime code  =====================


array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint256 totalSupply;
uint8 initialized;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() payable {
    return name[0 len name.length]
}

function initialized() payable {
    return bool(initialized)
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'FROM_ADDRESS_IS_EMPTY'
    if not arg1:
        revert with 0, 'TO_ADDRESS_IS_EMPTY'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'BALANCE_NOT_ENOUGH'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SUB_ERROR'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'ADD_ERROR'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg2:
        revert with 0, 'TO_ADDRESS_IS_EMPTY'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'BALANCE_NOT_ENOUGH'
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'ALLOWANCE_NOT_ENOUGH'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SUB_ERROR'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'ADD_ERROR'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 'SUB_ERROR'
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function init(address arg1, uint256 arg2, string arg3, string arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require calldata.size >= arg3.length + arg3 + 36
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 160 >= 128 and ceil32(arg3.length) + ceil32(arg4.length) + 160 <= test266151307()
    require calldata.size >= arg4.length + arg4 + 36
    require arg5 == arg5
    if initialized:
        revert with 0, 'TOKEN_INITIALIZED'
    initialized = 1
    totalSupply = arg2
    balanceOf[address(arg1)] = arg2
    name[] = Array(len=arg3.length, data=arg3[all])
    symbol[] = Array(len=arg4.length, data=arg4[all])
    decimals = arg5
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg2
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0),
                  mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)],
                  0,
                  arg1,
}



}
