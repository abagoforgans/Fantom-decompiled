contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address contractOwner;
uint256 tokenDecimals;
address erc20ContractAddress;
uint256 sub_5a46d0a3;
uint256 sub_9370979d;
uint256 sub_a2b88908;
uint256 sub_bf5a1dcc;
array of struct sub_b909d9e8;
uint256 tokenBalance;
uint256 sub_bb5c73f3;
uint256 sub_3701011d;
uint256 sub_7e07b1df;
mapping of struct swaps;
mapping of uint8 stor16;
mapping of uint8 stor17;

function TokenDecimals() {
    return tokenDecimals
}

function sub_1912ad2a(?) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function sub_3701011d(?) {
    return sub_3701011d
}

function sub_5a46d0a3(?) {
    return sub_5a46d0a3
}

function ContractOwner() {
    return contractOwner
}

function sub_7e07b1df(?) {
    return sub_7e07b1df
}

function sub_8d9c8d3d(?) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function sub_9370979d(?) {
    return sub_9370979d
}

function sub_9d785261(?) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if swaps[arg1].field_1280 > 5:
        revert with 0, 33
    if swaps[arg1].field_1280 >= 6:
        revert with 0, 33
    return swaps[arg1].field_0, 
           swaps[arg1].field_256,
           swaps[arg1].field_512,
           swaps[arg1].field_768,
           swaps[arg1].field_1024,
           swaps[arg1].field_1280,
           swaps[arg1].field_1536,
           swaps[arg1].field_1792,
           swaps[arg1].field_2048
}

function sub_a2b88908(?) {
    return sub_a2b88908
}

function erc20Contract() {
    return erc20ContractAddress
}

function TokenBalance() {
    return tokenBalance
}

function sub_b909d9e8(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_b909d9e8.length
    if sub_b909d9e8[arg1].field_1280 >= 6:
        revert with 0, 33
    return sub_b909d9e8[arg1].field_0, 
           sub_b909d9e8[arg1].field_256,
           sub_b909d9e8[arg1].field_512,
           sub_b909d9e8[arg1].field_768,
           sub_b909d9e8[arg1].field_1024,
           sub_b909d9e8[arg1].field_1280,
           sub_b909d9e8[arg1].field_1536,
           sub_b909d9e8[arg1].field_1792,
           sub_b909d9e8[arg1].field_2048
}

function sub_bb5c73f3(?) {
    return sub_bb5c73f3
}

function sub_bf5a1dcc(?) {
    return sub_bf5a1dcc
}

function swaps(uint256 arg1) {
    require calldata.size - 4 >= 32
    if swaps[arg1].field_1280 >= 6:
        revert with 0, 33
    return swaps[arg1].field_0, 
           swaps[arg1].field_256,
           swaps[arg1].field_512,
           swaps[arg1].field_768,
           swaps[arg1].field_1024,
           swaps[arg1].field_1280,
           swaps[arg1].field_1536,
           swaps[arg1].field_1792,
           swaps[arg1].field_2048
}

function _fallback() payable {
    revert
}

function sub_da67fa40(?) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    sub_bb5c73f3 = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    contractOwner = arg1
}

function SetToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    erc20ContractAddress = arg1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if arg1 <= 1:
        revert with 0, 'fee wrong'
    sub_5a46d0a3 = arg1
}

function sub_6cce9dee(?) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if stor17[arg1]:
        revert with 0, 'Network exists'
    stor17[arg1] = 1
}

function sub_8eeefe3e(?) {
    require calldata.size - 4 >= 32
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if not stor17[arg1]:
        revert with 0, 'Network not exists'
    stor17[arg1] = 0
}

function sub_e2331eb4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function showTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(erc20ContractAddress)
    staticcall erc20ContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_dc70e77d(?) payable {
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    require ext_code.size(erc20ContractAddress)
    staticcall erc20ContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    tokenBalance = ext_call.return_data[0]
}

function sub_19680b05(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    require ext_code.size(erc20ContractAddress)
    call erc20ContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cc5a9843(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    return sha3(Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256)
}

function sub_9a9bb8a1(?) {
    require calldata.size - 4 >= 96
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if arg2 <= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_MinPay need > _AdminDelegateTransferFe '
    tokenDecimals = arg1
    if not arg1:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        sub_3701011d = arg2
    else:
        if bool(bool(arg1 < 78)) or bool(bool(arg1 < 32)):
            if arg2 and 10^arg1 > -1 / arg2:
                revert with 0, 17
            sub_3701011d = arg2 * 10^arg1
        else:
            s = 10
            t = 1
            idx = arg1
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            sub_3701011d = arg2 * s * t
    if not tokenDecimals:
        if arg3 and 1 > -1 / arg3:
            revert with 0, 17
        sub_5a46d0a3 = arg3
    else:
        if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
            if arg3 and 10^tokenDecimals > -1 / arg3:
                revert with 0, 17
            sub_5a46d0a3 = arg3 * 10^tokenDecimals
        else:
            s = 10
            t = 1
            idx = tokenDecimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg3 and s * t > -1 / arg3:
                revert with 0, 17
            sub_5a46d0a3 = arg3 * s * t
}

function sub_de8bc5b7(?) {
    require calldata.size - 4 >= 128
    require arg3 == address(arg3)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if contractOwner != msg.sender:
        revert with 0, 'sender is not the owner'
    if stor16[arg2]:
        revert with 0, 'This record already pay '
    if not stor17[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Network is not allow or same Network '
    if arg1 == sub_9370979d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Network is not allow or same Network '
    if not address(arg3):
        revert with 0, 'input address wrong'
    if not tokenDecimals:
        if arg4 and 1 > -1 / arg4:
            revert with 0, 17
        if arg4 <= sub_3701011d:
            revert with 0, 'router not reach miniumPay'
        require ext_code.size(erc20ContractAddress)
        staticcall erc20ContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg4 >= ext_call.return_data[0]:
            revert with 0, 'not enough token balance'
        if sub_bb5c73f3 >= eth.balance(this.address):
            revert with 0, 'not enough ETH'
        stor16[arg2] = 1
        call address(arg3) with:
           value sub_bb5c73f3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg4
    else:
        if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
            if arg4 and 10^tokenDecimals > -1 / arg4:
                revert with 0, 17
            if arg4 * 10^tokenDecimals <= sub_3701011d:
                revert with 0, 'router not reach miniumPay'
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4 * 10^tokenDecimals >= ext_call.return_data[0]:
                revert with 0, 'not enough token balance'
            if sub_bb5c73f3 >= eth.balance(this.address):
                revert with 0, 'not enough ETH'
            stor16[arg2] = 1
            call address(arg3) with:
               value sub_bb5c73f3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20ContractAddress)
            call erc20ContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg4 * 10^tokenDecimals
        else:
            s = 10
            t = 1
            idx = tokenDecimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg4 and s * t > -1 / arg4:
                revert with 0, 17
            if arg4 * s * t <= sub_3701011d:
                revert with 0, 'router not reach miniumPay'
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if arg4 * s * t >= ext_call.return_data[0]:
                revert with 0, 'not enough token balance'
            if sub_bb5c73f3 >= eth.balance(this.address):
                revert with 0, 'not enough ETH'
            stor16[arg2] = 1
            call address(arg3) with:
               value sub_bb5c73f3 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(erc20ContractAddress)
            call erc20ContractAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg3), arg4 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xd0a26ad8: arg1, arg2, address(arg3), arg4
    stor0 = 1
}

function initiate(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not stor17[arg1]:
        revert with 0, 'This Network is not allow'
    if arg1 == sub_9370979d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Destination id must different from ContractNetworkID'
    if not tokenDecimals:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if arg2 <= sub_3701011d:
            revert with 0, 'initer not reach miniumPay'
    else:
        if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
            if arg2 and 10^tokenDecimals > -1 / arg2:
                revert with 0, 17
            if arg2 * 10^tokenDecimals <= sub_3701011d:
                revert with 0, 'initer not reach miniumPay'
        else:
            s = 10
            t = 1
            idx = tokenDecimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            if arg2 * s * t <= sub_3701011d:
                revert with 0, 'initer not reach miniumPay'
    if swaps[stor7].field_1280 > 5:
        revert with 0, 33
    if swaps[stor7].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'swap for this ID is already initiated'
    if not tokenDecimals:
        if arg2 and 1 > -1 / arg2:
            revert with 0, 17
        if arg2 > !sub_5a46d0a3:
            revert with 0, 17
        require ext_code.size(erc20ContractAddress)
        staticcall erc20ContractAddress.0x70a08231 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + sub_5a46d0a3 >= ext_call.return_data[0]:
            revert with 0, 'initer not enough token balance'
        require ext_code.size(erc20ContractAddress)
        staticcall erc20ContractAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg2 + sub_5a46d0a3 > ext_call.return_data[0]:
            revert with 0, 'allowance not enough'
        require ext_code.size(erc20ContractAddress)
        call erc20ContractAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2 + sub_5a46d0a3
    else:
        if bool(bool(tokenDecimals < 78)) or bool(bool(tokenDecimals < 32)):
            if arg2 and 10^tokenDecimals > -1 / arg2:
                revert with 0, 17
            if arg2 * 10^tokenDecimals > !sub_5a46d0a3:
                revert with 0, 17
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (arg2 * 10^tokenDecimals) + sub_5a46d0a3 >= ext_call.return_data[0]:
                revert with 0, 'initer not enough token balance'
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (arg2 * 10^tokenDecimals) + sub_5a46d0a3 > ext_call.return_data[0]:
                revert with 0, 'allowance not enough'
            require ext_code.size(erc20ContractAddress)
            call erc20ContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (arg2 * 10^tokenDecimals) + sub_5a46d0a3
        else:
            s = 10
            t = 1
            idx = tokenDecimals
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg2 and s * t > -1 / arg2:
                revert with 0, 17
            if arg2 * s * t > !sub_5a46d0a3:
                revert with 0, 17
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (arg2 * s * t) + sub_5a46d0a3 >= ext_call.return_data[0]:
                revert with 0, 'initer not enough token balance'
            require ext_code.size(erc20ContractAddress)
            staticcall erc20ContractAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (arg2 * s * t) + sub_5a46d0a3 > ext_call.return_data[0]:
                revert with 0, 'allowance not enough'
            require ext_code.size(erc20ContractAddress)
            call erc20ContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, (arg2 * s * t) + sub_5a46d0a3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transferFrom token fail.'
    swaps[stor7].field_1536 = arg1
    swaps[stor7].field_1792 = arg2
    swaps[stor7].field_256 = msg.sender or Mask(96, 160, swaps[stor7].field_256)
    swaps[stor7].field_2048 = sub_9370979d
    swaps[stor7].field_1280 = 1
    swaps[stor7].field_0 = sub_bf5a1dcc
    if sub_bf5a1dcc == -1:
        revert with 0, 17
    sub_bf5a1dcc++
    hash = sha256hash(sub_bf5a1dcc, block.timestamp, sub_9370979d, arg1, address(msg.sender) >> 928) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xc1d59401: hash, sub_bf5a1dcc, arg1, arg2, msg.sender, sub_9370979d, mem[(6 * ceil32(return_data.size)) + 468 len 9 * ceil32(return_data.size)]
    stor0 = 1
}

function sub_33338977(?) {
    if sub_bf5a1dcc > test266151307():
        revert with 0, 65
    mem[96] = sub_bf5a1dcc
    mem[64] = (32 * sub_bf5a1dcc) + 128
    if not sub_bf5a1dcc:
        idx = 0
        while idx < sub_bf5a1dcc:
            mem[0] = idx
            mem[32] = 15
            _36 = mem[64]
            mem[64] = mem[64] + 288
            mem[_36] = swaps[idx].field_0
            mem[_36 + 32] = swaps[idx].field_256
            mem[_36 + 64] = swaps[idx].field_512
            mem[_36 + 96] = swaps[idx].field_768
            mem[_36 + 128] = swaps[idx].field_1024
            if swaps[idx].field_1280 > 5:
                revert with 0, 33
            mem[_36 + 160] = swaps[idx].field_1280
            mem[_36 + 192] = swaps[idx].field_1536
            mem[_36 + 224] = swaps[idx].field_1792
            mem[_36 + 256] = swaps[idx].field_2048
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _36
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _38 = mem[64]
        mem[mem[64]] = 32
        _39 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _39:
            _69 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_69 + 44 len 20]
            mem[s + 64] = mem[_69 + 64]
            mem[s + 96] = mem[_69 + 96]
            mem[s + 128] = mem[_69 + 128]
            if mem[_69 + 160] >= 6:
                revert with 0, 33
            mem[s + 160] = mem[_69 + 160]
            mem[s + 192] = mem[_69 + 192]
            mem[s + 224] = mem[_69 + 224]
            mem[s + 256] = mem[_69 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _38 + (288 * _39) + -mem[64] + 64
    mem[64] = (32 * sub_bf5a1dcc) + 416
    mem[(32 * sub_bf5a1dcc) + 128] = 0
    mem[(32 * sub_bf5a1dcc) + 160] = 0
    mem[(32 * sub_bf5a1dcc) + 192] = 0
    mem[(32 * sub_bf5a1dcc) + 224] = 0
    mem[(32 * sub_bf5a1dcc) + 256] = 0
    mem[var14002] = 0
    mem[var14002 + 32] = 0
    mem[var14002 + 64] = 0
    mem[var14002 + 96] = 0
    mem[var16002] = var16001
    if not var16003 - 1:
        idx = 0
        while idx < sub_bf5a1dcc:
            mem[0] = idx
            mem[32] = 15
            _149 = mem[64]
            mem[64] = mem[64] + 288
            mem[_149] = swaps[idx].field_0
            mem[_149 + 32] = swaps[idx].field_256
            mem[_149 + 64] = swaps[idx].field_512
            mem[_149 + 96] = swaps[idx].field_768
            mem[_149 + 128] = swaps[idx].field_1024
            if swaps[idx].field_1280 > 5:
                revert with 0, 33
            mem[_149 + 160] = swaps[idx].field_1280
            mem[_149 + 192] = swaps[idx].field_1536
            mem[_149 + 224] = swaps[idx].field_1792
            mem[_149 + 256] = swaps[idx].field_2048
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _149
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _150 = mem[64]
        mem[mem[64]] = 32
        _151 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _151:
            _181 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_181 + 44 len 20]
            mem[s + 64] = mem[_181 + 64]
            mem[s + 96] = mem[_181 + 96]
            mem[s + 128] = mem[_181 + 128]
            if mem[_181 + 160] >= 6:
                revert with 0, 33
            mem[s + 160] = mem[_181 + 160]
            mem[s + 192] = mem[_181 + 192]
            mem[s + 224] = mem[_181 + 224]
            mem[s + 256] = mem[_181 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _150 + (288 * _151) + -mem[64] + 64
    mem[64] = (32 * sub_bf5a1dcc) + 704
    mem[(32 * sub_bf5a1dcc) + 416] = 0
    mem[(32 * sub_bf5a1dcc) + 448] = 0
    mem[(32 * sub_bf5a1dcc) + 480] = 0
    mem[(32 * sub_bf5a1dcc) + 512] = 0
    mem[(32 * sub_bf5a1dcc) + 544] = 0
    mem[var22002] = 0
    mem[var22002 + 32] = 0
    mem[var22002 + 64] = 0
    mem[var22002 + 96] = 0
    mem[var24002] = var24001
    if not var24003 - 1:
        idx = 0
        while idx < sub_bf5a1dcc:
            mem[0] = idx
            mem[32] = 15
            _261 = mem[64]
            mem[64] = mem[64] + 288
            mem[_261] = swaps[idx].field_0
            mem[_261 + 32] = swaps[idx].field_256
            mem[_261 + 64] = swaps[idx].field_512
            mem[_261 + 96] = swaps[idx].field_768
            mem[_261 + 128] = swaps[idx].field_1024
            if swaps[idx].field_1280 > 5:
                revert with 0, 33
            mem[_261 + 160] = swaps[idx].field_1280
            mem[_261 + 192] = swaps[idx].field_1536
            mem[_261 + 224] = swaps[idx].field_1792
            mem[_261 + 256] = swaps[idx].field_2048
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _261
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _262 = mem[64]
        mem[mem[64]] = 32
        _263 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _263:
            _293 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_293 + 44 len 20]
            mem[s + 64] = mem[_293 + 64]
            mem[s + 96] = mem[_293 + 96]
            mem[s + 128] = mem[_293 + 128]
            if mem[_293 + 160] >= 6:
                revert with 0, 33
            mem[s + 160] = mem[_293 + 160]
            mem[s + 192] = mem[_293 + 192]
            mem[s + 224] = mem[_293 + 224]
            mem[s + 256] = mem[_293 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _262 + (288 * _263) + -mem[64] + 64
    mem[64] = (32 * sub_bf5a1dcc) + 992
    mem[(32 * sub_bf5a1dcc) + 704] = 0
    mem[(32 * sub_bf5a1dcc) + 736] = 0
    mem[(32 * sub_bf5a1dcc) + 768] = 0
    mem[(32 * sub_bf5a1dcc) + 800] = 0
    mem[(32 * sub_bf5a1dcc) + 832] = 0
    mem[var30002] = 0
    mem[var30002 + 32] = 0
    mem[var30002 + 64] = 0
    mem[var30002 + 96] = 0
    mem[var32002] = var32001
    if not var32003 - 1:
        idx = 0
        while idx < sub_bf5a1dcc:
            mem[0] = idx
            mem[32] = 15
            _373 = mem[64]
            mem[64] = mem[64] + 288
            mem[_373] = swaps[idx].field_0
            mem[_373 + 32] = swaps[idx].field_256
            mem[_373 + 64] = swaps[idx].field_512
            mem[_373 + 96] = swaps[idx].field_768
            mem[_373 + 128] = swaps[idx].field_1024
            if swaps[idx].field_1280 > 5:
                revert with 0, 33
            mem[_373 + 160] = swaps[idx].field_1280
            mem[_373 + 192] = swaps[idx].field_1536
            mem[_373 + 224] = swaps[idx].field_1792
            mem[_373 + 256] = swaps[idx].field_2048
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _373
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _374 = mem[64]
        mem[mem[64]] = 32
        _375 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _375:
            _405 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_405 + 44 len 20]
            mem[s + 64] = mem[_405 + 64]
            mem[s + 96] = mem[_405 + 96]
            mem[s + 128] = mem[_405 + 128]
            if mem[_405 + 160] >= 6:
                revert with 0, 33
            mem[s + 160] = mem[_405 + 160]
            mem[s + 192] = mem[_405 + 192]
            mem[s + 224] = mem[_405 + 224]
            mem[s + 256] = mem[_405 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _374 + (288 * _375) + -mem[64] + 64
    mem[64] = (32 * sub_bf5a1dcc) + 1280
    mem[(32 * sub_bf5a1dcc) + 992] = 0
    mem[(32 * sub_bf5a1dcc) + 1024] = 0
    mem[(32 * sub_bf5a1dcc) + 1056] = 0
    mem[(32 * sub_bf5a1dcc) + 1088] = 0
    mem[(32 * sub_bf5a1dcc) + 1120] = 0
    mem[var38002] = 0
    mem[var38002 + 32] = 0
    mem[var38002 + 64] = 0
    mem[var38002 + 96] = 0
    mem[var40002] = var40001
    if var40003 - 1:
        # nil
    else:
        idx = 0
        while idx < sub_bf5a1dcc:
            mem[0] = idx
            mem[32] = 15
            _485 = mem[64]
            mem[64] = mem[64] + 288
            mem[_485] = swaps[idx].field_0
            mem[_485 + 32] = swaps[idx].field_256
            mem[_485 + 64] = swaps[idx].field_512
            mem[_485 + 96] = swaps[idx].field_768
            mem[_485 + 128] = swaps[idx].field_1024
            if swaps[idx].field_1280 > 5:
                revert with 0, 33
            mem[_485 + 160] = swaps[idx].field_1280
            mem[_485 + 192] = swaps[idx].field_1536
            mem[_485 + 224] = swaps[idx].field_1792
            mem[_485 + 256] = swaps[idx].field_2048
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _485
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _486 = mem[64]
        mem[mem[64]] = 32
        _487 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _487:
            _517 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_517 + 44 len 20]
            mem[s + 64] = mem[_517 + 64]
            mem[s + 96] = mem[_517 + 96]
            mem[s + 128] = mem[_517 + 128]
            if mem[_517 + 160] >= 6:
                revert with 0, 33
            mem[s + 160] = mem[_517 + 160]
            mem[s + 192] = mem[_517 + 192]
            mem[s + 224] = mem[_517 + 224]
            mem[s + 256] = mem[_517 + 256]
            idx = idx + 1
            s = s + 288
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _486 + (288 * _487) + -mem[64] + 64
}

function sub_97f571db(?) {
    require calldata.size - 4 >= 32
    if arg1 > test266151307():
        revert with 0, 65
    mem[96] = arg1
    mem[64] = (32 * arg1) + 128
    if not arg1:
        if sub_bf5a1dcc < 1:
            revert with 0, 17
        if sub_bf5a1dcc < arg1:
            revert with 0, 17
        if var32002 < sub_bf5a1dcc - arg1:
            mem[(32 * arg1) + 128] = 32
            mem[(32 * arg1) + 160] = arg1
            idx = 0
            s = (32 * arg1) + 192
            t = 128
            while idx < mem[96]:
                _199 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_199 + 44 len 20]
                mem[s + 64] = mem[_199 + 64]
                mem[s + 96] = mem[_199 + 96]
                mem[s + 128] = mem[_199 + 128]
                if mem[_199 + 160] >= 6:
                    revert with 0, 33
                mem[s + 160] = mem[_199 + 160]
                mem[s + 192] = mem[_199 + 192]
                mem[s + 224] = mem[_199 + 224]
                mem[s + 256] = mem[_199 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * arg1) + -mem[64] + 192
        mem[0] = var34001
        mem[32] = 15
        mem[64] = (32 * arg1) + 416
        mem[(32 * arg1) + 128] = swaps[var34001].field_0
        mem[(32 * arg1) + 160] = swaps[var34001].field_256
        mem[(32 * arg1) + 192] = swaps[var34001].field_512
        mem[(32 * arg1) + 224] = swaps[var34001].field_768
        mem[(32 * arg1) + 256] = swaps[var34001].field_1024
        if swaps[var34001].field_1280 <= 5:
            idx = swaps[var34001].field_1280
            s = (32 * arg1) + 288
            t = 0
            u = (32 * arg1) + 128
            v = 0
            v = var34001
            w = var34002
            while idx <= 5:
                mem[s] = idx
                mem[s + 32] = swaps[var34001][t].field_1536
                mem[s + 64] = swaps[var34001][t].field_1792
                mem[s + 96] = swaps[var34001][t].field_2048
                if w >= mem[96]:
                    revert with 0, 50
                mem[(32 * w) + 128] = u
                if w == -1:
                    revert with 0, 17
                if not v:
                    revert with 0, 17
                if sub_bf5a1dcc < arg1:
                    revert with 0, 17
                if v - 1 < sub_bf5a1dcc - arg1:
                    _283 = mem[64]
                    mem[mem[64]] = 32
                    _286 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = mem[64] + 64
                    t = 128
                    while idx < _286:
                        _309 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_309 + 44 len 20]
                        mem[s + 64] = mem[_309 + 64]
                        mem[s + 96] = mem[_309 + 96]
                        mem[s + 128] = mem[_309 + 128]
                        if mem[_309 + 160] >= 6:
                            revert with 0, 33
                        mem[s + 160] = mem[_309 + 160]
                        mem[s + 192] = mem[_309 + 192]
                        mem[s + 224] = mem[_309 + 224]
                        mem[s + 256] = mem[_309 + 256]
                        idx = idx + 1
                        s = s + 288
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _283 + (288 * _286) + -mem[64] + 64
                mem[0] = v - 1
                mem[32] = 15
                _281 = mem[64]
                mem[64] = mem[64] + 288
                mem[_281] = swaps[v - 1].field_0
                mem[_281 + 32] = swaps[v - 1].field_256
                mem[_281 + 64] = swaps[v - 1].field_512
                mem[_281 + 96] = swaps[v - 1].field_768
                mem[_281 + 128] = swaps[v - 1].field_1024
                if swaps[v - 1].field_1280 > 5:
                    revert with 0, 33
                idx = swaps[v - 1].field_1280
                s = _281 + 160
                t = sha3(v - 1, 15)
                u = _281
                v = sha3(v - 1, 15)
                v = v - 1
                w = w + 1
                continue 
        revert with 0, 33
    mem[64] = (32 * arg1) + 416
    mem[(32 * arg1) + 128] = 0
    mem[(32 * arg1) + 160] = 0
    mem[(32 * arg1) + 192] = 0
    mem[(32 * arg1) + 224] = 0
    mem[(32 * arg1) + 256] = 0
    mem[var17002] = 0
    mem[var17002 + 32] = 0
    mem[var17002 + 64] = 0
    mem[var17002 + 96] = 0
    mem[var19002] = var19001
    if not var19003 - 1:
        if sub_bf5a1dcc < 1:
            revert with 0, 17
        if sub_bf5a1dcc < arg1:
            revert with 0, 17
        if var42002 < sub_bf5a1dcc - arg1:
            mem[(32 * arg1) + 416] = 32
            mem[(32 * arg1) + 448] = arg1
            idx = 0
            s = (32 * arg1) + 480
            t = 128
            while idx < mem[96]:
                _418 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_418 + 44 len 20]
                mem[s + 64] = mem[_418 + 64]
                mem[s + 96] = mem[_418 + 96]
                mem[s + 128] = mem[_418 + 128]
                if mem[_418 + 160] >= 6:
                    revert with 0, 33
                mem[s + 160] = mem[_418 + 160]
                mem[s + 192] = mem[_418 + 192]
                mem[s + 224] = mem[_418 + 224]
                mem[s + 256] = mem[_418 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * arg1) + -mem[64] + 480
        mem[0] = var44001
        mem[32] = 15
        mem[64] = (32 * arg1) + 704
        mem[(32 * arg1) + 416] = swaps[var44001].field_0
        mem[(32 * arg1) + 448] = swaps[var44001].field_256
        mem[(32 * arg1) + 480] = swaps[var44001].field_512
        mem[(32 * arg1) + 512] = swaps[var44001].field_768
        mem[(32 * arg1) + 544] = swaps[var44001].field_1024
        if swaps[var44001].field_1280 <= 5:
            idx = swaps[var44001].field_1280
            s = (32 * arg1) + 576
            t = 0
            u = (32 * arg1) + 416
            v = 0
            v = var44001
            w = var44002
            while idx <= 5:
                mem[s] = idx
                mem[s + 32] = swaps[var44001][t].field_1536
                mem[s + 64] = swaps[var44001][t].field_1792
                mem[s + 96] = swaps[var44001][t].field_2048
                if w >= mem[96]:
                    revert with 0, 50
                mem[(32 * w) + 128] = u
                if w == -1:
                    revert with 0, 17
                if not v:
                    revert with 0, 17
                if sub_bf5a1dcc < arg1:
                    revert with 0, 17
                if v - 1 < sub_bf5a1dcc - arg1:
                    _503 = mem[64]
                    mem[mem[64]] = 32
                    _504 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = mem[64] + 64
                    t = 128
                    while idx < _504:
                        _527 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_527 + 44 len 20]
                        mem[s + 64] = mem[_527 + 64]
                        mem[s + 96] = mem[_527 + 96]
                        mem[s + 128] = mem[_527 + 128]
                        if mem[_527 + 160] >= 6:
                            revert with 0, 33
                        mem[s + 160] = mem[_527 + 160]
                        mem[s + 192] = mem[_527 + 192]
                        mem[s + 224] = mem[_527 + 224]
                        mem[s + 256] = mem[_527 + 256]
                        idx = idx + 1
                        s = s + 288
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _503 + (288 * _504) + -mem[64] + 64
                mem[0] = v - 1
                mem[32] = 15
                _500 = mem[64]
                mem[64] = mem[64] + 288
                mem[_500] = swaps[v - 1].field_0
                mem[_500 + 32] = swaps[v - 1].field_256
                mem[_500 + 64] = swaps[v - 1].field_512
                mem[_500 + 96] = swaps[v - 1].field_768
                mem[_500 + 128] = swaps[v - 1].field_1024
                if swaps[v - 1].field_1280 > 5:
                    revert with 0, 33
                idx = swaps[v - 1].field_1280
                s = _500 + 160
                t = sha3(v - 1, 15)
                u = _500
                v = sha3(v - 1, 15)
                v = v - 1
                w = w + 1
                continue 
        revert with 0, 33
    mem[64] = (32 * arg1) + 704
    mem[(32 * arg1) + 416] = 0
    mem[(32 * arg1) + 448] = 0
    mem[(32 * arg1) + 480] = 0
    mem[(32 * arg1) + 512] = 0
    mem[(32 * arg1) + 544] = 0
    mem[var25002] = 0
    mem[var25002 + 32] = 0
    mem[var25002 + 64] = 0
    mem[var25002 + 96] = 0
    mem[var27002] = var27001
    if not var27003 - 1:
        if sub_bf5a1dcc < 1:
            revert with 0, 17
        if sub_bf5a1dcc < arg1:
            revert with 0, 17
        if var50002 < sub_bf5a1dcc - arg1:
            mem[(32 * arg1) + 704] = 32
            mem[(32 * arg1) + 736] = arg1
            idx = 0
            s = (32 * arg1) + 768
            t = 128
            while idx < mem[96]:
                _636 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_636 + 44 len 20]
                mem[s + 64] = mem[_636 + 64]
                mem[s + 96] = mem[_636 + 96]
                mem[s + 128] = mem[_636 + 128]
                if mem[_636 + 160] >= 6:
                    revert with 0, 33
                mem[s + 160] = mem[_636 + 160]
                mem[s + 192] = mem[_636 + 192]
                mem[s + 224] = mem[_636 + 224]
                mem[s + 256] = mem[_636 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * arg1) + -mem[64] + 768
        mem[0] = var52001
        mem[32] = 15
        mem[64] = (32 * arg1) + 992
        mem[(32 * arg1) + 704] = swaps[var52001].field_0
        mem[(32 * arg1) + 736] = swaps[var52001].field_256
        mem[(32 * arg1) + 768] = swaps[var52001].field_512
        mem[(32 * arg1) + 800] = swaps[var52001].field_768
        mem[(32 * arg1) + 832] = swaps[var52001].field_1024
        if swaps[var52001].field_1280 <= 5:
            idx = swaps[var52001].field_1280
            s = (32 * arg1) + 864
            t = 0
            u = (32 * arg1) + 704
            v = 0
            v = var52001
            w = var52002
            while idx <= 5:
                mem[s] = idx
                mem[s + 32] = swaps[var52001][t].field_1536
                mem[s + 64] = swaps[var52001][t].field_1792
                mem[s + 96] = swaps[var52001][t].field_2048
                if w >= mem[96]:
                    revert with 0, 50
                mem[(32 * w) + 128] = u
                if w == -1:
                    revert with 0, 17
                if not v:
                    revert with 0, 17
                if sub_bf5a1dcc < arg1:
                    revert with 0, 17
                if v - 1 < sub_bf5a1dcc - arg1:
                    _721 = mem[64]
                    mem[mem[64]] = 32
                    _722 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = mem[64] + 64
                    t = 128
                    while idx < _722:
                        _745 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_745 + 44 len 20]
                        mem[s + 64] = mem[_745 + 64]
                        mem[s + 96] = mem[_745 + 96]
                        mem[s + 128] = mem[_745 + 128]
                        if mem[_745 + 160] >= 6:
                            revert with 0, 33
                        mem[s + 160] = mem[_745 + 160]
                        mem[s + 192] = mem[_745 + 192]
                        mem[s + 224] = mem[_745 + 224]
                        mem[s + 256] = mem[_745 + 256]
                        idx = idx + 1
                        s = s + 288
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _721 + (288 * _722) + -mem[64] + 64
                mem[0] = v - 1
                mem[32] = 15
                _718 = mem[64]
                mem[64] = mem[64] + 288
                mem[_718] = swaps[v - 1].field_0
                mem[_718 + 32] = swaps[v - 1].field_256
                mem[_718 + 64] = swaps[v - 1].field_512
                mem[_718 + 96] = swaps[v - 1].field_768
                mem[_718 + 128] = swaps[v - 1].field_1024
                if swaps[v - 1].field_1280 > 5:
                    revert with 0, 33
                idx = swaps[v - 1].field_1280
                s = _718 + 160
                t = sha3(v - 1, 15)
                u = _718
                v = sha3(v - 1, 15)
                v = v - 1
                w = w + 1
                continue 
        revert with 0, 33
    mem[64] = (32 * arg1) + 992
    mem[(32 * arg1) + 704] = 0
    mem[(32 * arg1) + 736] = 0
    mem[(32 * arg1) + 768] = 0
    mem[(32 * arg1) + 800] = 0
    mem[(32 * arg1) + 832] = 0
    mem[var33002] = 0
    mem[var33002 + 32] = 0
    mem[var33002 + 64] = 0
    mem[var33002 + 96] = 0
    mem[var35002] = var35001
    if var35003 - 1:
        if var43003 - 1:
            # nil
        else:
            if sub_bf5a1dcc < 1:
                revert with 0, 17
            if sub_bf5a1dcc < arg1:
                revert with 0, 17
            # nil
    else:
        if sub_bf5a1dcc < 1:
            revert with 0, 17
        if sub_bf5a1dcc < arg1:
            revert with 0, 17
        if var58002 < sub_bf5a1dcc - arg1:
            mem[(32 * arg1) + 992] = 32
            mem[(32 * arg1) + 1024] = arg1
            idx = 0
            s = (32 * arg1) + 1056
            t = 128
            while idx < mem[96]:
                _854 = mem[t]
                mem[s] = mem[mem[t]]
                mem[s + 32] = mem[_854 + 44 len 20]
                mem[s + 64] = mem[_854 + 64]
                mem[s + 96] = mem[_854 + 96]
                mem[s + 128] = mem[_854 + 128]
                if mem[_854 + 160] >= 6:
                    revert with 0, 33
                mem[s + 160] = mem[_854 + 160]
                mem[s + 192] = mem[_854 + 192]
                mem[s + 224] = mem[_854 + 224]
                mem[s + 256] = mem[_854 + 256]
                idx = idx + 1
                s = s + 288
                t = t + 32
                continue 
            return memory
              from mem[64]
               len (321 * arg1) + -mem[64] + 1056
        mem[0] = var60001
        mem[32] = 15
        mem[64] = (32 * arg1) + 1280
        mem[(32 * arg1) + 992] = swaps[var60001].field_0
        mem[(32 * arg1) + 1024] = swaps[var60001].field_256
        mem[(32 * arg1) + 1056] = swaps[var60001].field_512
        mem[(32 * arg1) + 1088] = swaps[var60001].field_768
        mem[(32 * arg1) + 1120] = swaps[var60001].field_1024
        if swaps[var60001].field_1280 <= 5:
            idx = swaps[var60001].field_1280
            s = (32 * arg1) + 1152
            t = 0
            u = (32 * arg1) + 992
            v = 0
            v = var60001
            w = var60002
            while idx <= 5:
                mem[s] = idx
                mem[s + 32] = swaps[var60001][t].field_1536
                mem[s + 64] = swaps[var60001][t].field_1792
                mem[s + 96] = swaps[var60001][t].field_2048
                if w >= mem[96]:
                    revert with 0, 50
                mem[(32 * w) + 128] = u
                if w == -1:
                    revert with 0, 17
                if not v:
                    revert with 0, 17
                if sub_bf5a1dcc < arg1:
                    revert with 0, 17
                if v - 1 < sub_bf5a1dcc - arg1:
                    _939 = mem[64]
                    mem[mem[64]] = 32
                    _940 = mem[96]
                    mem[mem[64] + 32] = mem[96]
                    idx = 0
                    s = mem[64] + 64
                    t = 128
                    while idx < _940:
                        _963 = mem[t]
                        mem[s] = mem[mem[t]]
                        mem[s + 32] = mem[_963 + 44 len 20]
                        mem[s + 64] = mem[_963 + 64]
                        mem[s + 96] = mem[_963 + 96]
                        mem[s + 128] = mem[_963 + 128]
                        if mem[_963 + 160] >= 6:
                            revert with 0, 33
                        mem[s + 160] = mem[_963 + 160]
                        mem[s + 192] = mem[_963 + 192]
                        mem[s + 224] = mem[_963 + 224]
                        mem[s + 256] = mem[_963 + 256]
                        idx = idx + 1
                        s = s + 288
                        t = t + 32
                        continue 
                    return memory
                      from mem[64]
                       len _939 + (288 * _940) + -mem[64] + 64
                mem[0] = v - 1
                mem[32] = 15
                _936 = mem[64]
                mem[64] = mem[64] + 288
                mem[_936] = swaps[v - 1].field_0
                mem[_936 + 32] = swaps[v - 1].field_256
                mem[_936 + 64] = swaps[v - 1].field_512
                mem[_936 + 96] = swaps[v - 1].field_768
                mem[_936 + 128] = swaps[v - 1].field_1024
                if swaps[v - 1].field_1280 > 5:
                    revert with 0, 33
                idx = swaps[v - 1].field_1280
                s = _936 + 160
                t = sha3(v - 1, 15)
                u = _936
                v = sha3(v - 1, 15)
                v = v - 1
                w = w + 1
                continue 
        revert with 0, 33
}



}
