contract main {




// =====================  Runtime code  =====================


address owner;
array of struct sub_6eb0fc57;
array of struct sub_4202a912;
array of struct sub_4a9655e9;
array of struct sub_ac2743b3;
address supraAddress;
address tokenFeeAddress;
address sub_32ca2876Address;
mapping of uint8 stor8;
uint256 sub_b9d8746d;
uint256 maxAmount;
uint256 sub_5df4a69a;
uint256 sub_184da8a8;
uint256 stor13; offset 32
uint256 bridgeFee;
big736 stor13;
uint256 sub_0fbeb197;
uint8 paused; offset 160
uint32 stor15;
uint128 stor15; offset 160
address treasureAddress;
mapping of uint8 stor16;

function sub_0fbeb197(?) {
    return sub_0fbeb197
}

function sub_184da8a8(?) {
    return sub_184da8a8
}

function sub_32ca2876(?) {
    return sub_32ca2876Address
}

function supra() {
    return supraAddress
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
    return sub_4202a912[arg1].field_0, 
           sub_4202a912[arg1].field_256,
           sub_4202a912[arg1].field_512,
           sub_4202a912[arg1].field_768,
           Array(len=stor[(5 * arg1) + ('name', 'sub_4202a912', 2) + 4].length, data=mem[128 len stor[(5 * arg1) + ('name', 'sub_4202a912', 2) + 4].length])
}

function sub_42515f80(?) {
    require calldata.size - 4 >= 32
    return bool(stor16[arg1])
}

function tokenFee() {
    return tokenFeeAddress
}

function sub_4a9655e9(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_4a9655e9.length
    return sub_4a9655e9[arg1].field_0, sub_4a9655e9[arg1].field_256, sub_4a9655e9[arg1].field_512, sub_4a9655e9[arg1].field_768
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
    return sub_6eb0fc57[arg1].field_0, 
           sub_6eb0fc57[arg1].field_256,
           sub_6eb0fc57[arg1].field_512,
           sub_6eb0fc57[arg1].field_768,
           bool(sub_6eb0fc57[arg1].field_1024)
}

function bridgeFee() {
    return bridgeFee
}

function owner() {
    return owner
}

function sub_ac2743b3(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ac2743b3.length
    return sub_ac2743b3[arg1].field_0
}

function sub_b48207b8(?) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
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
    Mask(96, 0, stor15.field_160) = Mask(96, 0, not bool(paused))
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
    stor8[address(arg1)] = uint8(arg2)
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

function sub_43ca14f0(?) {
    idx = 0
    s = 0
    s = 0
    while idx < sub_6eb0fc57.length:
        mem[0] = 1
        if sub_6eb0fc57[idx].field_1024:
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            s = s
            continue 
        idx = idx + 1
        s = (5 * idx) + sha3(1)
        s = s + 1
        continue 
    return s
}

function sub_a9dc061c(?) {
    sub_ac2743b3.length = 0
    idx = 0
    while sub_ac2743b3.length > idx:
        sub_ac2743b3[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < sub_6eb0fc57.length:
        mem[0] = 1
        if not sub_6eb0fc57[idx].field_1024:
            sub_ac2743b3.length++
            mem[0] = 4
            sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
        idx = idx + 1
        s = (5 * idx) + sha3(1)
        continue 
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

function sub_6c1d0374(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 'Not authorized'
    require arg3 < sub_6eb0fc57.length
    if sub_6eb0fc57[arg3].field_1024:
        revert with 0, 'This operation is confirmed'
    sub_6eb0fc57[arg3].field_1024 = 1
    sub_4202a912.length++
    sub_4202a912[sub_4202a912.length].field_0 = arg1
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
    idx = 0
    s = 0
    while idx < sub_6eb0fc57.length:
        mem[0] = 1
        if not sub_6eb0fc57[idx].field_1024:
            sub_ac2743b3.length++
            mem[0] = 4
            sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
        idx = idx + 1
        s = (5 * idx) + sha3(1)
        continue 
}

function sub_2ec91737(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.size(supraAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg1) >> 32
    mem[324 len 0] = 0
    call supraAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, arg1
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
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

function sub_2e0d057b(?) {
    require calldata.size - 4 >= 96
    if bool(stor8[address(msg.sender)]) != 1:
        revert with 0, 'Not authorized'
    if stor16[arg3]:
        revert with 0, 'Duplicate Op. Warning'
    stor16[arg3] = 1
    if ext_code.size(supraAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    call supraAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, arg2
        if not transfer(address rg1, uint256 rg2), address(arg1) << 64:
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
    sub_4a9655e9.length++
    sub_4a9655e9[sub_4a9655e9.length].field_0 = arg1
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

function sub_dca00605(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_32ca2876Address)
    staticcall sub_32ca2876Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_5df4a69a:
        revert with 0, 'Closed beta'
    if paused:
        revert with 0, 'Paused'
    if arg1 > maxAmount:
        revert with 0, 'Max amount exceeded'
    if arg1 <= bridgeFee:
        revert with 0, 'Ni pa' el fee'
    idx = 0
    s = 0
    s = 0
    while idx < sub_6eb0fc57.length:
        mem[0] = 1
        if sub_6eb0fc57[idx].field_1024:
            idx = idx + 1
            s = (5 * idx) + sha3(1)
            s = s
            continue 
        idx = idx + 1
        s = (5 * idx) + sha3(1)
        s = s + 1
        continue 
    if s > sub_184da8a8:
        revert with 0, 'Full bridge'
    if ext_code.size(supraAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    if tokenFeeAddress != supraAddress:
        call supraAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if ext_code.size(tokenFeeAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[488 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, treasureAddress, Mask(224, 0, stor13.field_32)
            mem[612 len 4] = 0
            mem[584 len 0] = 0
            call tokenFeeAddress with:
               funct uint32(stor15.field_0)
                 gas gas_remaining wei
                args Mask(736, 0, stor13.field_0), mem[584 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[598 len 14],
                                0,
                                mem[616 len 4]
            else:
                mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[520]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 599 len 22]
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
            if ext_code.size(tokenFeeAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 489 len 96] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, treasureAddress, Mask(224, 0, stor13.field_32)
            mem[ceil32(return_data.size) + 613 len 4] = 0
            call tokenFeeAddress with:
               funct uint32(stor15.field_0)
                 gas gas_remaining wei
                args Mask(736, 0, stor13.field_0), mem[ceil32(return_data.size) + 585 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 599 len 14],
                                0,
                                mem[ceil32(return_data.size) + 617 len 4]
            else:
                mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[ceil32(return_data.size) + 521]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
        sub_6eb0fc57.length++
        sub_6eb0fc57[sub_6eb0fc57.length].field_0 = msg.sender
        sub_6eb0fc57[sub_6eb0fc57.length].field_256 = arg1
    else:
        mem[388 len 0] = 0
        call supraAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
            if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if ext_code.size(supraAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[456 len 64] = 0, treasureAddress, Mask(224, 0, stor13.field_32)
            call supraAddress with:
               funct uint32(stor15.field_0)
                 gas gas_remaining wei
                args bridgeFee, mem[392 len 24], 0, mem[520 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
                if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
            else:
                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[488]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
            if bridgeFee > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size <= 0:
                if ext_code.size(supraAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, treasureAddress, Mask(224, 0, stor13.field_32)
                call supraAddress with:
                   funct uint32(stor15.field_0)
                     gas gas_remaining wei
                    args bridgeFee, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len 22]
                if bridgeFee > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if ext_code.size(supraAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 457 len 64] = 0, treasureAddress, Mask(224, 0, stor13.field_32)
                call supraAddress with:
                   funct uint32(stor15.field_0)
                     gas gas_remaining wei
                    args bridgeFee, mem[ceil32(return_data.size) + 393 len 28], mem[ceil32(return_data.size) + 521 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg1
                    if not transferFrom(address rg1, address rg2, uint256 rg3), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 567 len 22]
                    if bridgeFee > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    mem[ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 
                                    'SafeERC20: low-level call failed',
                                    mem[(2 * ceil32(return_data.size)) + 558 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[ceil32(return_data.size) + 489]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[(2 * ceil32(return_data.size)) + 568 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    if bridgeFee > arg1:
                        revert with 0, 
                                    'SafeMath: subtraction overflow',
                                    mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
        ('le', ('stor', ('name', 'bridgeFee', 13)), ('param', 'arg1'))
        sub_6eb0fc57.length++
        sub_6eb0fc57[sub_6eb0fc57.length].field_0 = msg.sender
        sub_6eb0fc57[sub_6eb0fc57.length].field_256 = arg1 - bridgeFee
    sub_6eb0fc57[sub_6eb0fc57.length].field_512 = sub_b9d8746d
    sub_6eb0fc57[sub_6eb0fc57.length].field_768 = block.timestamp
    sub_6eb0fc57[sub_6eb0fc57.length].field_1024 = 0
    sub_b9d8746d++
    sub_ac2743b3.length = 0
    idx = 0
    while sub_ac2743b3.length > idx:
        sub_ac2743b3[idx].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < sub_6eb0fc57.length:
        mem[0] = 1
        if not sub_6eb0fc57[idx].field_1024:
            sub_ac2743b3.length++
            mem[0] = 4
            sub_ac2743b3[sub_ac2743b3.length].field_0 = idx
        idx = idx + 1
        s = (5 * idx) + sha3(1)
        continue 
}



}
