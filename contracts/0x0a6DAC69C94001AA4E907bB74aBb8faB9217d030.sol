contract main {




// =====================  Runtime code  =====================


#
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
uint32 stor1;
address devAddress;
uint256 stor1;
address feeAddress;
array of struct poolInfo;
mapping of uint256 userInfo;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           poolInfo[arg1].field_1024,
           poolInfo[arg1].field_1280,
           bool(poolInfo[arg1].field_1536),
           bool(poolInfo[arg1].field_1544)
}

function devAddress() payable {
    return address(devAddress)
}

function feeAddress() payable {
    return feeAddress
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if feeAddress != msg.sender:
        revert with 0, 'fee: wut?'
    feeAddress = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(devAddress) != msg.sender:
        revert with 0, 'dev: wut?'
    address(devAddress) = arg1
}

function sub_cbba3747(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if userInfo[arg1][address(arg2)] <= arg3:
        userInfo[arg1][address(arg2)] = 0
    else:
        if arg3 > userInfo[arg1][address(arg2)]:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(arg2)] -= arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_26e5cd5d(?) payable {
    require calldata.size - 4 >= 256
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x777365743a20696e76616c696420737761702066656520626173697320706f696e74,
                    mem[198 len 30]
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_768 = arg4
    poolInfo[arg1].field_1024 = arg5
    poolInfo[arg1].field_1280 = arg6
    poolInfo[arg1].field_1536 = uint8(arg7)
    poolInfo[arg1].field_1544 = Mask(248, 0, arg8)
}

function sub_74964c82(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg4 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736164643a20696e76616c696420737761702066656520626173697320706f696e74,
                    mem[198 len 30]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    poolInfo[poolInfo.length].field_256 = arg2
    poolInfo[poolInfo.length].field_512 = arg3
    poolInfo[poolInfo.length].field_768 = arg4
    poolInfo[poolInfo.length].field_1024 = arg5
    poolInfo[poolInfo.length].field_1280 = arg6
    poolInfo[poolInfo.length].field_1536 = uint8(arg7)
    poolInfo[poolInfo.length].field_1544 = 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function swap(uint256 arg1, uint256 arg2, address arg3, address arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ext_code.hash(arg3) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg3):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg5) >> 32
    mem[324 len 0] = 0
    call arg3 with:
         gas gas_remaining wei
        args Mask(224, 32, arg5) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg4) << 64, 0, arg5
        if not unknown_0xa9059cbb(?????), address(arg4) << 64:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xa5704582: arg2, arg5, arg1, arg3, arg4
}



}
