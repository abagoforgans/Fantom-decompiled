contract main {




// =====================  Runtime code  =====================


#
#  - sub_82267e14(?)
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

function withdrawFTM(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveMax(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address rg1, uint256 rg2), msg.sender, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
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



}
