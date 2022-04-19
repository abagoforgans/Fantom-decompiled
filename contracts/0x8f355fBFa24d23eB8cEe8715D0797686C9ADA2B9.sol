contract main {




// =====================  Runtime code  =====================


#
#  - sub_239f8486(?)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function withdrawETH(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
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

function sub_caa7262b(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), address(arg2) << 64, 0, arg3
        if not transfer(address rg1, uint256 rg2), address(arg2) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address rg1, uint256 rg2), msg.sender, arg2
        if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_f762988f(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = arg1
    mem[(32 * arg3.length) + 164] = 64
    mem[(32 * arg3.length) + 196] = arg3.length
    mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _20 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128]
    _23 = mem[_20 + (32 * arg3.length) + 128]
    mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[_20 + (32 * arg3.length) + 128])] = mem[_20 + (32 * arg3.length) + 160 len floor32(mem[_20 + (32 * arg3.length) + 128])]
    require 0 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
    mem[(32 * _23) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[(32 * arg3.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _23) + (32 * arg3.length) + ceil32(return_data.size) + 160
       len 32
}

function sub_f0024dff(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg3.length) + 132] = arg1
    mem[(32 * arg3.length) + 164] = 64
    mem[(32 * arg3.length) + 196] = arg3.length
    mem[(32 * arg3.length) + 228 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg3.length, data=call.data[arg3 + 36 len floor32(arg3.length)], mem[(32 * arg3.length) + floor32(arg3.length) + 228 len (32 * arg3.length) - floor32(arg3.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg3.length) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg3.length) + ceil32(return_data.size) + 128
    require return_data.size >= 32
    _21 = mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128] <= 4294967296 and mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128]) + 32 <= return_data.size
    mem[(32 * arg3.length) + ceil32(return_data.size) + 128] = mem[mem[(32 * arg3.length) + 128 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg3.length) + 128]
    _24 = mem[_21 + (32 * arg3.length) + 128]
    mem[(32 * arg3.length) + ceil32(return_data.size) + 160 len floor32(mem[_21 + (32 * arg3.length) + 128])] = mem[_21 + (32 * arg3.length) + 160 len floor32(mem[_21 + (32 * arg3.length) + 128])]
    require arg3.length - 1 < mem[(32 * arg3.length) + ceil32(return_data.size) + 128]
    mem[(32 * _24) + (32 * arg3.length) + ceil32(return_data.size) + 160] = mem[(32 * arg3.length - 1) + (32 * arg3.length) + ceil32(return_data.size) + 160]
    return memory
      from (32 * _24) + (32 * arg3.length) + ceil32(return_data.size) + 160
       len 32
}

function sub_63da360d(?) payable {
    require calldata.size - 4 >= 224
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[(32 * arg4.length) + 128] = arg5.length
    mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * arg4.length) + (32 * arg5.length) + 164] = arg1
    mem[(32 * arg4.length) + (32 * arg5.length) + 196] = 64
    mem[(32 * arg4.length) + (32 * arg5.length) + 228] = arg4.length
    mem[(32 * arg4.length) + (32 * arg5.length) + 260 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    require ext_code.size(arg2)
    staticcall arg2.getAmountsOut(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * arg4.length) + (32 * arg5.length) + floor32(arg4.length) + 260 len (32 * arg4.length) - floor32(arg4.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg4.length) + (32 * arg5.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160
    require return_data.size >= 32
    _111 = mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + (32 * arg5.length) + 160] <= 4294967296 and mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + (32 * arg5.length) + 160]) + 32 <= return_data.size
    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160] = mem[mem[(32 * arg4.length) + (32 * arg5.length) + 160 len 4], Mask(224, 32, arg1) >> 32 + (32 * arg4.length) + (32 * arg5.length) + 160]
    _114 = mem[_111 + (32 * arg4.length) + (32 * arg5.length) + 160]
    mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len floor32(mem[_111 + (32 * arg4.length) + (32 * arg5.length) + 160])] = mem[_111 + (32 * arg4.length) + (32 * arg5.length) + 192 len floor32(mem[_111 + (32 * arg4.length) + (32 * arg5.length) + 160])]
    require arg4.length - 1 < mem[(32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 160]
    _213 = mem[(32 * arg4.length - 1) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 196] = arg1
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 228] = 64
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 260] = arg5.length
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 292 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    require ext_code.size(arg3)
    staticcall arg3.getAmountsIn(uint256 rg1, address[] rg2) with:
            gas gas_remaining wei
           args arg1, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + floor32(arg5.length) + 292 len (32 * arg5.length) - floor32(arg5.length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    _308 = mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32
    require mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require mem[mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192] <= 4294967296 and mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]) + 32 <= return_data.size
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192] = mem[mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192 len 4], Mask(224, 32, arg1) >> 32 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
    _311 = mem[_308 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192]
    mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len floor32(mem[_308 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192])] = mem[_308 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 224 len floor32(mem[_308 + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + ceil32(return_data.size) + 192])]
    require 0 < mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 192]
    _395 = mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]
    if not _213:
        require 0 < arg4.length
        require 0 < arg5.length
        if 0 > mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]:
            if mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if -mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] >= arg6:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 228] = arg1
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 260] = 0
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 356] = block.timestamp + 3600
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 292] = 160
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 388] = arg4.length
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                require ext_code.size(arg2)
                call arg2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), block.timestamp + 3600, arg4.length, call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + floor32(arg4.length) + 420 len (32 * arg4.length) - floor32(arg4.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _482 = mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]
                _487 = mem[_482 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[_482 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224])] = mem[_482 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_482 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224])]
                require ext_code.size(mem[(32 * arg4.length) + 172 len 20])
                call mem[(32 * arg4.length) + 172 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 260] = arg1
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 292] = 0
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 388] = block.timestamp + 3600
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 420] = arg5.length
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 452 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg3)
                call arg3.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, 0, 160, address(this.address), block.timestamp + 3600, arg5.length, call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + floor32(arg5.length) + 452 len (32 * arg5.length) - floor32(arg5.length)]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * _487) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256]) + 32 <= return_data.size
                emit 0xcaf0ff07: arg1, address(arg2), 0, address(arg3), _395, arg6
    else:
        require _213
        if _213 * arg7 / _213 != arg7:
            revert with 0, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 325 len 31]
        require 0 < arg4.length
        require 0 < arg5.length
        if _213 * arg7 / 10^18 > mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]:
            if mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] > _213 * arg7 / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_213 * arg7 / 10^18) - mem[(32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] >= arg6:
                require ext_code.size(mem[140 len 20])
                call mem[140 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg2), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 228] = arg1
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 260] = _213 * arg7 / 10^18
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 324] = this.address
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 356] = block.timestamp + 3600
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 292] = 160
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 388] = arg4.length
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 420 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
                require ext_code.size(arg2)
                call arg2.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, _213 * arg7 / 10^18, Array(len=arg4.length, data=call.data[arg4 + 36 len floor32(arg4.length)], mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + floor32(arg4.length) + 420 len (32 * arg4.length) - floor32(arg4.length)]), address(this.address), block.timestamp + 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                _480 = mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32
                require mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224] <= 4294967296 and mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]) + 32 <= return_data.size
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 224] = mem[mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg1) >> 32 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]
                _486 = mem[_480 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224]
                mem[(32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len floor32(mem[_480 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224])] = mem[_480 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[_480 + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (2 * ceil32(return_data.size)) + 224])]
                require ext_code.size(mem[(32 * arg4.length) + 172 len 20])
                call mem[(32 * arg4.length) + 172 len 20].approve(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args address(arg3), _213 * arg7 / 10^18
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 260] = arg1
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 292] = _213 * arg7 / 10^18
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 356] = this.address
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 388] = block.timestamp + 3600
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 324] = 160
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 420] = arg5.length
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 452 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
                require ext_code.size(arg3)
                call arg3.swapTokensForExactTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args arg1, _213 * arg7 / 10^18, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + floor32(arg5.length) + 452 len (32 * arg5.length) - floor32(arg5.length)]), address(this.address), block.timestamp + 3600
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (6 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require mem[mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256] <= 4294967296 and mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * mem[mem[(32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, arg1) >> 32 + (32 * _486) + (32 * _311) + (32 * _114) + (32 * arg4.length) + (32 * arg5.length) + (4 * ceil32(return_data.size)) + 256]) + 32 <= return_data.size
                emit 0xcaf0ff07: arg1, address(arg2), _213 * arg7 / 10^18, address(arg3), _395, arg6
}



}
