contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint8 stor0;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 stor4;
address stor4; offset 8
address stor5;
address stor6;
uint256 stor7;

function name() payable {
    return name[0 len name.length].field_0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length].field_0
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    return (-balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] + 5000000 * 10^18)
}

function disallow(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0[address(msg.sender)][address(arg1)] = 0
    emit Approval(0, msg.sender, arg1);
    return 1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52:
        if arg2 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
            if bool(stor0[address(arg1)][address(arg2)]) != 1:
                return 0
    return -1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52:
        if arg1 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
            stor0[address(msg.sender)][address(arg1)] = 1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function init() payable {
    require not uint8(stor4.field_0)
    require msg.sender == 0x5c8403a2617aca5c86946e32e14148776e37f72a
    uint8(stor4.field_0) = 1
    bool(name.length) = 0
    name.length.field_1 = 7
    name.length.field_8 = 'Aletheo' / 256
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(symbol.length) = 0
    symbol.length.field_1 = 3
    symbol.length.field_8 = 'LET' / 256
    idx = 0
    while symbol.length + 31 / 32 > idx:
        symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor4.field_8) = 0x6ab7f198b14767e56083fd7526472e0c45b1d77f
    stor5 = 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8
    stor6 = 0x800b51e28d69268d34e2875232592be4a177a9e3
    balanceOf[0x5c8403a2617aca5c86946e32e14148776e37f72a] = 5000000 * 10^18
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender == 0x6ab7f198b14767e56083fd7526472e0c45b1d77f:
        require ext_code.size(0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8)
        staticcall 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 <= (31 * 10^15 * block.number) + (-31 * 10^15 * ext_call.return_data[0]) + balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] + -stor7 - 4900000 * 10^18
        require arg2 <= balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] - stor7
    if arg1 == 0x800b51e28d69268d34e2875232592be4a177a9e3:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg1 == 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] += arg2 / 100
            stor7 += arg2 / 100
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100)
            emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52 != msg.sender:
        if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 != msg.sender:
            require bool(stor0[address(arg1)][address(msg.sender)]) == 1
    require arg1
    require balanceOf[address(arg1)] >= arg3
    if arg1 == 0x6ab7f198b14767e56083fd7526472e0c45b1d77f:
        require ext_code.size(0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8)
        staticcall 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg3 <= (31 * 10^15 * block.number) + (-31 * 10^15 * ext_call.return_data[0]) + balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] + -stor7 - 4900000 * 10^18
        require arg3 <= balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] - stor7
    if arg2 == 0x800b51e28d69268d34e2875232592be4a177a9e3:
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg2 == 0x2ff4ef291a7a5f65c3ddebdb9d64dbfb0925b6f8:
            balanceOf[address(arg1)] -= arg3
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            balanceOf[0x6ab7f198b14767e56083fd7526472e0c45b1d77f] += arg3 / 100
            stor7 += arg3 / 100
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100)
            emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
    return 1
}



}
