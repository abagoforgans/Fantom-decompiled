contract main {




// =====================  Runtime code  =====================


address owner;
uint32 stor1;
address devaddr;
uint256 stor1;
array of struct poolInfo;
mapping of uint256 userInfo;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403023;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403024;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403025;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403026;
array of struct stor29102676481673041902632991033461445430619272659676223336789171408008386403027;

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
           bool(poolInfo[arg1].field_1280),
           bool(poolInfo[arg1].field_1288)
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2]
}

function devaddr() payable {
    return address(devaddr)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setDevaddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(devaddr) != msg.sender:
        revert with 0, 'dev: wut?'
    address(devaddr) = arg1
}

function sub_cbba3747(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg3 >= userInfo[arg1][address(arg2)]:
        userInfo[arg1][address(arg2)] = 0
    else:
        if arg3 > userInfo[arg1][address(arg2)]:
            revert with 0, 'SafeMath: subtraction overflow'
        userInfo[arg1][address(arg2)] -= arg3
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_a20febee(?) payable {
    require calldata.size - 4 >= 224
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg4 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x727365743a20696e76616c696420737761702066656520626173697320706f696e74,
                    mem[198 len 30]
    require arg1 < poolInfo.length
    poolInfo[arg1].field_512 = arg3
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_768 = arg4
    poolInfo[arg1].field_1024 = arg5
    poolInfo[arg1].field_1280 = uint8(arg6)
    poolInfo[arg1].field_1288 = Mask(248, 0, arg7)
}

function sub_ce7ff41e(?) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg4 > 5000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x736164643a20696e76616c696420737761702066656520626173697320706f696e74,
                    mem[198 len 30]
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    stor4057[stor2.length] = arg2
    stor4057[stor2.length] = arg3
    stor4057[stor2.length] = arg4
    stor4057[stor2.length] = arg5
    stor4057[stor2.length].field_0 = uint8(arg6)
    stor4057[stor2.length].field_8 = 1
    stor4057[stor2.length].field_16 = Mask(240, 16, arg6) >> 16
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
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
        revert with 0, 'wOwnable: caller is not the owne'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg3):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg3):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg4) << 64, 0, Mask(224, 32, arg5) >> 32
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
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit 0xa5704582: arg2, arg5, arg1, arg3, arg4
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    if not poolInfo[arg1].field_1288:
        revert with 0, 'swap: invalid pid'
    if arg2 < poolInfo[arg1].field_1024:
        revert with 0, 'swap: invalid amount'
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if not poolInfo[arg1].field_1280:
                if not poolInfo[arg1].field_768:
                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                        revert with 0, 'SafeMath: addition overflow'
                    userInfo[arg1][msg.sender] += arg2
                else:
                    if arg2:
                        if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                        call poolInfo[arg1].field_0 with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                        if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        if not ext_code.hash(poolInfo[arg1].field_0):
                            revert with 0, 'Address: call to non-contract'
                        mem[520 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                        mem[584 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(stor1)
                             gas gas_remaining wei
                            args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0) << 256, mem[584 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[630 len 22]
                        else:
                            mem[552 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeBEP20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[552]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                        if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > arg2 + userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        userInfo[arg1][msg.sender] += arg2
            else:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_768:
                        if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender] += arg2
                    else:
                        if not arg2:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[648 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args 0, mem[712 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[758 len 22]
                            else:
                                mem[680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[680]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                            if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] += arg2
                        else:
                            if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[648 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[712 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[758 len 22]
                            else:
                                mem[680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[680]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                            if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                else:
                    if 2 * arg2 / arg2 != 2:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if 2 * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not poolInfo[arg1].field_768:
                        if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                    else:
                        if not arg2 - (2 * arg2 / 100):
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[648 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args 0, mem[712 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[758 len 22]
                            else:
                                mem[680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[680]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                            if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                        else:
                            if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / arg2 - (2 * arg2 / 100) != poolInfo[arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[521 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[648 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) << 224, mem[712 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[758 len 22]
                            else:
                                mem[680 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[680]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                            if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] - ((arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000)
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeBEP20: low-level call failed'
            if not return_data.size:
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_768:
                        if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender] += arg2
                    else:
                        if not arg2:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args 0, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                            if 0 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] += arg2
                        else:
                            if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                            if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                else:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[arg1].field_768:
                            if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender] += arg2
                        else:
                            if not arg2:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if 0 > arg2 + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] += arg2
                            else:
                                if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                    else:
                        if 2 * arg2 / arg2 != 2:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if 2 * arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[arg1].field_768:
                            if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                        else:
                            if not arg2 - (2 * arg2 / 100):
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mask_shl', 255, 0, 1, ('param', 'arg2')), 100)), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if 0 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                            else:
                                if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / arg2 - (2 * arg2 / 100) != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mask_shl', 255, 0, 1, ('param', 'arg2')), 100)), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] - ((arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000)
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if not poolInfo[arg1].field_1280:
                    if not poolInfo[arg1].field_768:
                        if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                            revert with 0, 'SafeMath: addition overflow'
                        userInfo[arg1][msg.sender] += arg2
                    else:
                        if arg2:
                            if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                                revert with 0, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeBEP20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                    revert with 0, 
                                                'SafeMath: addition overflow',
                                                mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                            if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            if not ext_code.hash(poolInfo[arg1].field_0):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                            mem[ceil32(return_data.size) + 585 len 0] = 0
                            call poolInfo[arg1].field_0 with:
                               funct uint32(stor1)
                                 gas gas_remaining wei
                                args Mask(480, -256, unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0) << 256, mem[ceil32(return_data.size) + 585 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 631 len 22]
                            else:
                                mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeBEP20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 553]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 632 len 22]
                            if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > arg2 + userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            userInfo[arg1][msg.sender] += arg2
                else:
                    if not arg2:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[arg1].field_768:
                            if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender] += arg2
                        else:
                            if not arg2:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if 0 > arg2 + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] += arg2
                            else:
                                if poolInfo[arg1].field_768 * arg2 / arg2 != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args Mask(224, 32, poolInfo[arg1].field_768 * arg2 / 10000) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if poolInfo[arg1].field_768 * arg2 / 10000 > arg2 + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 + userInfo[arg1][msg.sender] - (poolInfo[arg1].field_768 * arg2 / 10000)
                    else:
                        if 2 * arg2 / arg2 != 2:
                            revert with 0, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if 2 * arg2 / 100 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not poolInfo[arg1].field_768:
                            if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                revert with 0, 'SafeMath: addition overflow'
                            userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                        else:
                            if not arg2 - (2 * arg2 / 100):
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), 0
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args 0, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mask_shl', 255, 0, 1, ('param', 'arg2')), 100)), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if 0 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]
                            else:
                                if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / arg2 - (2 * arg2 / 100) != poolInfo[arg1].field_768:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 522 len 31]
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                if not ext_code.hash(poolInfo[arg1].field_0):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 649 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) >> 32
                                call poolInfo[arg1].field_0 with:
                                   funct uint32(stor1)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000) << 224, mem[ceil32(return_data.size) + 713 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 759 len 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 'SafeMath: addition overflow'
                                else:
                                    mem[ceil32(return_data.size) + 681 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeBEP20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 681]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 760 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                    if arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] < userInfo[arg1][msg.sender]:
                                        revert with 0, 
                                                    'SafeMath: addition overflow',
                                                    mem[(2 * ceil32(return_data.size)) + 750 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                ('ge', ('add', ('param', 'arg2'), ('mul', -1, ('div', ('mask_shl', 255, 0, 1, ('param', 'arg2')), 100)), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3))))), ('stor', ('map', 'msg.sender', ('map', ('param', 'arg1'), ('name', 'userInfo', 3)))))
                                if (arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000 > arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                userInfo[arg1][msg.sender] = arg2 - (2 * arg2 / 100) + userInfo[arg1][msg.sender] - ((arg2 * poolInfo[arg1].field_768) - (2 * arg2 / 100 * poolInfo[arg1].field_768) / 10000)
}



}
