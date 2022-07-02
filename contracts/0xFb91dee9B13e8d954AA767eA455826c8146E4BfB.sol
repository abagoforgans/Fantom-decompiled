contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint8 stor0;
mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 stor4;

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
    return (-balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095] + 10000000 * 10^18)
}

function disallow(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0[address(msg.sender)][address(arg1)] = 0
    emit Approval(0, msg.sender, arg1);
    return 1
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
        if bool(stor0[address(arg1)][address(arg2)]) != 1:
            return 0
    return -1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 != 0xf491e7b69e4244ad4002bc14e878a34207e38c29:
        stor0[address(msg.sender)][address(arg1)] = 1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function init() payable {
    require not stor4
    stor4 = 1
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
    balanceOf[0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb] = 1000000 * 10^18
    balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095] = 2500 * 10^18 * 3600
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    if msg.sender == 0x61218748be0bb61e3675b73ba7b1a037a808f095:
        require ext_code.size(0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb)
        staticcall 0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg2 <= (28 * 10^15 * block.number) + (-28 * 10^15 * ext_call.return_data[0]) + balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095] - (2500 * 10^18 * 3600)
        require arg2 <= balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095]
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if 0xf491e7b69e4244ad4002bc14e878a34207e38c29 != msg.sender:
        require bool(stor0[address(arg1)][address(msg.sender)]) == 1
    require arg1
    if arg1 == 0x61218748be0bb61e3675b73ba7b1a037a808f095:
        require ext_code.size(0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb)
        staticcall 0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb.0x4cdc9c63 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg3 <= (28 * 10^15 * block.number) + (-28 * 10^15 * ext_call.return_data[0]) + balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095] - (2500 * 10^18 * 3600)
        require arg3 <= balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095]
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
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
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        s = s + mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    require balanceOf[address(msg.sender)] >= s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
    if 0x61218748be0bb61e3675b73ba7b1a037a808f095 != msg.sender:
        balanceOf[address(msg.sender)] += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        _90 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96 * arg1.length])
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        emit BulkTransfer(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]), msg.sender, _90);
    else:
        require ext_code.size(0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb)
        staticcall 0xe74930ff5d32db0ff6f2bd2b7d8c30e4f877d9bb.0x4cdc9c63 with:
                gas gas_remaining wei
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= (28 * 10^15 * block.number) + (-28 * 10^15 * ext_call.return_data[0]) + balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095] - (2500 * 10^18 * 3600)
        require s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length <= balanceOf[0x61218748be0bb61e3675b73ba7b1a037a808f095]
        balanceOf[address(msg.sender)] += -1 * s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length
        mem[(32 * arg1.length) + (32 * arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        _96 = sha3(mem[(32 * arg1.length) + (32 * arg2.length) + 160 len 96 * arg1.length])
        mem[(32 * arg1.length) + (32 * arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        emit BulkTransfer(Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg1.length) + (32 * arg2.length) + floor32(arg2.length) + 224 len (32 * arg2.length) - floor32(arg2.length)]), msg.sender, _96);
    return 1
}



}
