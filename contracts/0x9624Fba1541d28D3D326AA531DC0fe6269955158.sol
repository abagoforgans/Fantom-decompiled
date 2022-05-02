contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_6eb0fc57;
array of struct sub_4202a912;
array of struct sub_4a9655e9;
array of struct sub_ac2743b3;
address sub_80302093Address;
address tokenAddress;
address tokenFeeAddress;
address sub_a44e8afaAddress;
address sub_32ca2876Address;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 sub_b9d8746d;
uint256 maxAmount;
uint256 sub_5df4a69a;
uint256 sub_184da8a8;
uint256 stor16; offset 32
uint256 bridgeFee;
big736 stor16;
uint256 sub_0fbeb197;
uint8 paused; offset 160
uint32 stor18;
uint128 stor18; offset 160
address treasureAddress;
mapping of uint8 stor19;

function sub_0fbeb197(?) {
    return sub_0fbeb197
}

function sub_184da8a8(?) {
    return sub_184da8a8
}

function sub_32ca2876(?) {
    return sub_32ca2876Address
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_4202a912(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4202a912.length
    mem[128] = stor[sha3((5 * arg1) + ('name', 'sub_4202a912', 2) + 4)].field_0
    idx = 128
    s = 0
    while stor[(5 * arg1) + ('name', 'sub_4202a912', 2) + 4].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((5 * arg1) + ('name', 'sub_4202a912', 2) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(sub_4202a912[arg1].field_0), 
           sub_4202a912[arg1].field_256,
           sub_4202a912[arg1].field_512,
           sub_4202a912[arg1].field_768,
           Array(len=stor[(5 * arg1) + ('name', 'sub_4202a912', 2) + 4].length, data=mem[128 len stor[(5 * arg1) + ('name', 'sub_4202a912', 2) + 4].length])
}

function sub_42515f80(?) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function sub_43ca14f0(?) {
    return sub_ac2743b3.length
}

function tokenFee() {
    return tokenFeeAddress
}

function sub_4a9655e9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4a9655e9.length
    return address(sub_4a9655e9[arg1].field_0), 
           sub_4a9655e9[arg1].field_256,
           sub_4a9655e9[arg1].field_512,
           sub_4a9655e9[arg1].field_768
}

function paused() {
    return bool(paused)
}

function sub_5df4a69a(?) {
    return sub_5df4a69a
}

function maxAmount() {
    return maxAmount
}

function sub_6eb0fc57(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_6eb0fc57.length
    return address(sub_6eb0fc57[arg1].field_0), 
           sub_6eb0fc57[arg1].field_256,
           sub_6eb0fc57[arg1].field_512,
           sub_6eb0fc57[arg1].field_768,
           bool(uint8(sub_6eb0fc57[arg1].field_1024))
}

function sub_80302093(?) {
    return sub_80302093Address
}

function bridgeFee() {
    return bridgeFee
}

function owner() {
    return owner
}

function sub_a44e8afa(?) {
    return sub_a44e8afaAddress
}

function sub_ac2743b3(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ac2743b3.length
    return sub_ac2743b3[arg1].field_0
}

function sub_b48207b8(?) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sub_b9d8746d(?) {
    return sub_b9d8746d
}

function sub_df158e67(?) {
    return sub_6eb0fc57.length
}

function treasure() {
    return treasureAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_c7376832(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor18.field_160) = Mask(96, 0, not bool(paused))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_33106a0b(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_184da8a8 = arg1
}

function sub_9d0777b1(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_5df4a69a = arg1
}

function sub_b1ca4b41(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9d8746d = arg1
}

function sub_d4eeadfe(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0fbeb197 = arg1
}

function sub_c98ca394(?) {
    require calldata.size - 4 >= 32
    if sub_a44e8afaAddress != msg.sender:
        revert with 0, 'Not autorized'
    sub_a44e8afaAddress = arg1
}

function sub_d42d0fef(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasureAddress = arg1
}

function sub_dccf7df2(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenFeeAddress = arg1
}

function setMaxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxAmount = arg1
}

function setBridgeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bridgeFee = arg1
}

function sub_5be2bfb1(?) {
    if not sub_4202a912.length:
        return 0
    require sub_4202a912.length - 1 < sub_4202a912.length
    return sub_4202a912[sub_4202a912.length].field_0
}

function sub_4eba7114(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function addWhiteList(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function sub_5e0e40b7(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send Ether'
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_564193cc(?) {
    require calldata.size - 4 >= 96
    if bool(stor10[address(msg.sender)]) != 1:
        revert with 0, 'Not authorized'
    if stor19[arg3]:
        revert with 0, 'Duplicate Op. Warning'
    stor19[arg3] = 1
    require ext_code.size(sub_80302093Address)
    call sub_80302093Address.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4a9655e9.length++
    address(sub_4a9655e9[sub_4a9655e9.length].field_0) = arg1
    sub_4a9655e9[sub_4a9655e9.length].field_256 = arg2
    sub_4a9655e9[sub_4a9655e9.length].field_512 = arg3
    sub_4a9655e9[sub_4a9655e9.length].field_768 = block.timestamp
    if eth.balance(arg1) < sub_0fbeb197:
        call arg1 with:
           value sub_0fbeb197 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'Failed to send Ether'
}

function sub_08a6ffb2(?) {
    if not sub_ac2743b3.length:
        mem[(32 * sub_ac2743b3.length) + 128] = 32
        mem[(32 * sub_ac2743b3.length) + 160] = sub_ac2743b3.length
        mem[(32 * sub_ac2743b3.length) + 192 len floor32(sub_ac2743b3.length)] = mem[128 len floor32(sub_ac2743b3.length)]
        return memory
          from (32 * sub_ac2743b3.length) + 128
           len (96 * sub_ac2743b3.length) + 64
    mem[128] = uint256(sub_ac2743b3.field_0)
    idx = 128
    s = 0
    while (32 * sub_ac2743b3.length) + 96 > idx:
        mem[idx + 32] = sub_ac2743b3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_ac2743b3.length) + 192 len floor32(sub_ac2743b3.length)] = mem[128 len floor32(sub_ac2743b3.length)]
    return Array(len=sub_ac2743b3.length, data=mem[128 len floor32(sub_ac2743b3.length)], mem[(32 * sub_ac2743b3.length) + floor32(sub_ac2743b3.length) + 192 len (32 * sub_ac2743b3.length) - floor32(sub_ac2743b3.length)]), 
}

function sub_a9dc061c(?) {
    sub_ac2743b3.length = 0
    idx = 0
    while sub_ac2743b3.length > idx:
        sub_ac2743b3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_4202a912.length:
        idx = 0
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
    else:
        require sub_4202a912.length - 1 < sub_4202a912.length
        mem[0] = 2
        idx = stor[(5 * stor2.length) + sha3(mem[0]) - 3]
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
}

function sub_2ec91737(?) {
    require calldata.size - 4 >= 64
    if sub_a44e8afaAddress != msg.sender:
        revert with 0, 'Not autorized'
    if ext_code.size(tokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call tokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg2) << 64, 0, arg1
        if not unknown_0xa9059cbb(?????), address(arg2) << 64:
            revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_6c1d0374(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor10[address(msg.sender)]) != 1:
        revert with 0, 'Not authorized'
    require arg3 < sub_6eb0fc57.length
    if uint8(sub_6eb0fc57[arg3].field_1024):
        revert with 0, 'This operation is confirmed'
    uint8(sub_6eb0fc57[arg3].field_1024) = 1
    sub_4202a912.length++
    address(sub_4202a912[sub_4202a912.length].field_0) = arg1
    sub_4202a912[sub_4202a912.length].field_256 = arg2
    sub_4202a912[sub_4202a912.length].field_512 = arg3
    sub_4202a912[sub_4202a912.length].field_768 = arg4
    stor[sha3((5 * sub_4202a912.length) + ('name', 'sub_4202a912', 2) + 4)][].field_0 = Array(len=arg5.length, data=arg5[all])
    sub_ac2743b3.length = 0
    idx = 0
    while sub_ac2743b3.length > idx:
        sub_ac2743b3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_4202a912.length:
        idx = 0
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
    else:
        require sub_4202a912.length - 1 < sub_4202a912.length
        mem[0] = 2
        idx = stor[(5 * stor2.length) + sha3(mem[0]) - 3]
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
}

function sendToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_32ca2876Address)
    staticcall sub_32ca2876Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_5df4a69a:
        revert with 0, 'Closed beta'
    if paused:
        revert with 0, 'Paused'
    if bool(stor11[address(msg.sender)]) == 1:
        require ext_code.size(sub_80302093Address)
        call sub_80302093Address.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        sub_6eb0fc57.length++
        address(sub_6eb0fc57[sub_6eb0fc57.length].field_0) = msg.sender
        sub_6eb0fc57[sub_6eb0fc57.length].field_256 = arg1
    else:
        if arg1 > maxAmount:
            revert with 0, 'Max amount exceeded'
        if sub_ac2743b3.length > sub_184da8a8:
            revert with 0, 'Full bridge'
        if tokenFeeAddress != tokenAddress:
            require ext_code.size(sub_80302093Address)
            call sub_80302093Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ext_code.size(tokenFeeAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, treasureAddress, Mask(224, 0, stor16.field_32)
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call tokenFeeAddress with:
               funct uint32(stor18.field_0)
                 gas gas_remaining wei
                args Mask(736, 0, stor16.field_0), mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, treasureAddress, bridgeFee
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            sub_6eb0fc57.length++
            address(sub_6eb0fc57[sub_6eb0fc57.length].field_0) = msg.sender
            sub_6eb0fc57[sub_6eb0fc57.length].field_256 = arg1
        else:
            if ext_code.size(tokenAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, treasureAddress, Mask(224, 0, stor16.field_32)
            mem[416 len 4] = 0
            mem[388 len 0] = 0
            call tokenAddress with:
               funct uint32(stor18.field_0)
                 gas gas_remaining wei
                args Mask(736, 0, stor16.field_0), mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, treasureAddress, bridgeFee
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
            if bridgeFee > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(sub_80302093Address)
            call sub_80302093Address.0x9dc29fac with:
                 gas gas_remaining wei
                args msg.sender, arg1 - bridgeFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if bridgeFee > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            sub_6eb0fc57.length++
            address(sub_6eb0fc57[sub_6eb0fc57.length].field_0) = msg.sender
            sub_6eb0fc57[sub_6eb0fc57.length].field_256 = arg1 - bridgeFee
    sub_6eb0fc57[sub_6eb0fc57.length].field_512 = sub_b9d8746d
    sub_6eb0fc57[sub_6eb0fc57.length].field_768 = block.timestamp
    uint8(sub_6eb0fc57[sub_6eb0fc57.length].field_1024) = 0
    sub_b9d8746d++
    sub_ac2743b3.length = 0
    idx = 0
    while sub_ac2743b3.length > idx:
        sub_ac2743b3[idx].field_0 = 0
        idx = idx + 1
        continue 
    if not sub_4202a912.length:
        idx = 0
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
    else:
        require sub_4202a912.length - 1 < sub_4202a912.length
        mem[0] = 2
        idx = stor[(5 * stor2.length) + sha3(mem[0]) - 3]
        s = 0
        while idx < sub_6eb0fc57.length:
            mem[0] = 1
            if not uint8(sub_6eb0fc57[idx].field_1024):
                sub_ac2743b3.length++
                mem[0] = 4
                sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            continue 
}



}
