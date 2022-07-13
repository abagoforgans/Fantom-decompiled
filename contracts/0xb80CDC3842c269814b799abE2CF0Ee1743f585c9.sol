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
    return (-balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] + 5000000 * 10^18)
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
    address(stor4.field_8) = 0x32cfc998a98450b11d07f698992d8bf79f67876b
    stor5 = 0x67d828b93318243e4b6a2465eeea1ebc15db2981
    stor6 = 0xb9f9ca7d36110cad06ecdb52f07308487f2c00d9
    balanceOf[0x5c8403a2617aca5c86946e32e14148776e37f72a] = 5000000 * 10^18
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    if msg.sender == 0x32cfc998a98450b11d07f698992d8bf79f67876b:
        require ext_code.size(0x67d828b93318243e4b6a2465eeea1ebc15db2981)
        staticcall 0x67d828b93318243e4b6a2465eeea1ebc15db2981.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 <= (31 * 10^15 * block.number) + (-31 * 10^15 * ext_call.return_data[0]) + balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] + -stor7 - 4900000 * 10^18
        require arg2 <= balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] - stor7
    if arg1 == 0xb9f9ca7d36110cad06ecdb52f07308487f2c00d9:
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if arg1 == 0x67d828b93318243e4b6a2465eeea1ebc15db2981:
            balanceOf[address(msg.sender)] -= arg2
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] += arg2 / 100
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
    if arg1 == 0x32cfc998a98450b11d07f698992d8bf79f67876b:
        require ext_code.size(0x67d828b93318243e4b6a2465eeea1ebc15db2981)
        staticcall 0x67d828b93318243e4b6a2465eeea1ebc15db2981.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg3 <= (31 * 10^15 * block.number) + (-31 * 10^15 * ext_call.return_data[0]) + balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] + -stor7 - 4900000 * 10^18
        require arg3 <= balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] - stor7
    if arg2 == 0xb9f9ca7d36110cad06ecdb52f07308487f2c00d9:
        balanceOf[address(arg1)] -= arg3
        balanceOf[address(arg2)] += arg3
        emit Transfer(arg3, arg1, arg2);
    else:
        if arg2 == 0x67d828b93318243e4b6a2465eeea1ebc15db2981:
            balanceOf[address(arg1)] -= arg3
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
        else:
            balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] += arg3 / 100
            stor7 += arg3 / 100
            balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 / 100)
            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 / 100)
            emit Transfer((arg3 - (arg3 / 100)), arg1, arg2);
    return 1
}

function bulkTransfer(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if arg1.length != arg2.length:
        revert with 0, 'human error'
    if arg2.length >= 100:
        revert with 0, 'human error'
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        _75 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20] == 0xb9f9ca7d36110cad06ecdb52f07308487f2c00d9:
            require idx < arg2.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        require idx < arg1.length
        require idx < arg2.length
        if mem[(32 * idx) + 140 len 20] == 0x67d828b93318243e4b6a2465eeea1ebc15db2981:
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 1
            balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
            continue 
        _106 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        mem[(32 * idx) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160] - (mem[(32 * idx) + (32 * arg1.length) + 160] / 100)
        balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] += _106 / 100
        stor7 += _106 / 100
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = s + _75
        continue 
    if balanceOf[address(msg.sender)] < s:
        revert with 0, 'balance is low'
    if 0x32cfc998a98450b11d07f698992d8bf79f67876b != msg.sender:
        balanceOf[address(msg.sender)] -= s
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        _132 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (32 * arg1.length) - floor32(arg1.length)])
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg1.length) + 160 len floor32(arg2.length)]
        emit BulkTransfer(Array(len=arg2.length, data=mem[(32 * arg1.length) + 160 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]), msg.sender, _132);
    else:
        require ext_code.size(0x67d828b93318243e4b6a2465eeea1ebc15db2981)
        staticcall 0x67d828b93318243e4b6a2465eeea1ebc15db2981.0x4cdc9c63 with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require s <= (31 * 10^15 * block.number) + (-31 * 10^15 * ext_call.return_data[0]) + balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] + -stor7 - 4900000 * 10^18
        require s <= balanceOf[0x32cfc998a98450b11d07f698992d8bf79f67876b] - stor7
        balanceOf[address(msg.sender)] -= s
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        _138 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg1.length) + 160 len (32 * arg1.length) - floor32(arg1.length)])
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg2.length)] = mem[(32 * arg1.length) + 160 len floor32(arg2.length)]
        emit BulkTransfer(Array(len=arg2.length, data=mem[(32 * arg1.length) + 160 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]), msg.sender, _138);
    return 1
}



}
