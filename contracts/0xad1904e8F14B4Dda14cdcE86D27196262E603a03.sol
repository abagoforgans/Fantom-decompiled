contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor2;
array of struct poolInfo;
mapping of uint256 userInfo;
mapping of uint8 stor5;

function poolLength() payable {
    return poolInfo.length
}

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, bool(poolInfo[arg1].field_416)
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

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateOperator(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = uint8(arg2)
    emit OperatorUpdated(arg1, arg2);
}

function updatePool(uint256 arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    emit PoolUpdated(arg1, address(arg2), arg3);
    stor1 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x4f776e61626c653a206e6577206f776e657220697320746865207a65726f2061646472657300,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stakedWantTokens(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not userInfo[arg1][address(arg2)]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if ext_call.return_data[0] * userInfo[arg1][address(arg2)] / userInfo[arg1][address(arg2)] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (ext_call.return_data[0] * userInfo[arg1][address(arg2)] / ext_call.return_data[0])
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + userInfo[arg1][address(msg.sender)] < userInfo[arg1][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][address(msg.sender)] += ext_call.return_data[0]
    emit Deposit(arg2, msg.sender, arg1);
    stor1 = 1
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require arg1 < poolInfo.length
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args Mask(224, 32, arg2) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with transferFrom(address arg1, address arg2, uint256 arg3), msg.sender, address(this.address), arg2
            if not transferFrom(address arg1, address arg2, uint256 arg3), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
        require arg1 < poolInfo.length
        require ext_code.size(poolInfo[arg1].field_256)
        call poolInfo[arg1].field_256.deposit(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg3), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + userInfo[arg1][address(arg3)] < userInfo[arg1][address(arg3)]:
            revert with 0, 'SafeMath: addition overflow'
        userInfo[arg1][address(arg3)] += ext_call.return_data[0]
    emit Deposit(arg2, arg3, arg1);
    stor1 = 1
}

function resetSingleAllowance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg1 < poolInfo.length
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = approve(address arg1, uint256 arg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
    mem[324 len 0] = 0
    call poolInfo[arg1].field_0 with:
       funct poolInfo[arg1].field_256
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with approve(address arg1, uint256 arg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
        if not approve(address arg1, uint256 arg2), poolInfo[arg1].field_256:
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[424 len 64] = 0, poolInfo[arg1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        call poolInfo[arg1].field_0 with:
           funct poolInfo[arg1].field_256
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, mem[360 len 28], mem[488 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
            if not approve(address arg1, uint256 arg2), poolInfo[arg1].field_256:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
        else:
            mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[456]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 535 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[arg1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 425 len 64] = 0, poolInfo[arg1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        call poolInfo[arg1].field_0 with:
           funct poolInfo[arg1].field_256
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, mem[ceil32(return_data.size) + 361 len 28], mem[ceil32(return_data.size) + 489 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with approve(address arg1, uint256 arg2), poolInfo[arg1].field_256, poolInfo[arg1].field_256, 0
            if not approve(address arg1, uint256 arg2), poolInfo[arg1].field_256:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 535 len 22]
        else:
            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 526 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 457]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
}

function addPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if stor5[address(arg1)]:
        revert with 0, 'Existing strategy'
    require ext_code.size(arg1)
    staticcall arg1.wantAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = arg1
    mem[160] = 1
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = address(ext_call.return_data[12 len 20])
    poolInfo[poolInfo.length].field_256 = arg1
    poolInfo[poolInfo.length].field_416 = 1
    stor5[address(arg1)] = 1
    mem[192] = 30
    mem[224] = 'SafeMath: subtraction overflow'
    if 1 > poolInfo.length:
        revert with 0, 'SafeMath: subtraction overflow'
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require poolInfo.length - 1 < poolInfo.length
    mem[292] = poolInfo[poolInfo.length - 1].field_256
    mem[324] = 0
    mem[256] = 68
    mem[292 len 28] = poolInfo[poolInfo.length - 1].field_256
    mem[288 len 4] = approve(address arg1, uint256 arg2)
    mem[356] = 32
    mem[388] = 'SafeERC20: low-level call failed'
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[420 len 64] = approve(address arg1, uint256 arg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0
    mem[512 len 4] = 0
    mem[484 len 0] = 0
    call poolInfo[poolInfo.length - 1].field_0 with:
       funct poolInfo[poolInfo.length - 1].field_256
         gas gas_remaining wei
        args Mask(480, -256, approve(address arg1, uint256 arg2), poolInfo[poolInfo.length - 1].field_256, poolInfo[poolInfo.length - 1].field_256, 0) << 256, mem[484 len 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[12 len 20]:
                revert with memory
                  from 128
                   len ext_call.return_data[12 len 20]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[12 len 20]:
            require ext_call.return_data[12 len 20] >= 32
            if not arg1:
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[530 len 22]
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[456] = poolInfo[poolInfo.length - 1].field_256
        mem[488] = ext_call.return_data[0] - 1
        mem[420] = 68
        mem[452 len 4] = approve(address arg1, uint256 arg2)
        mem[520] = 32
        mem[552] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[584 len 64] = 0, poolInfo[poolInfo.length - 1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        mem[676 len 4] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct poolInfo[poolInfo.length - 1].field_256
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, 0, mem[648 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[12 len 20]:
                    revert with memory
                      from 128
                       len ext_call.return_data[12 len 20]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[12 len 20]:
                require ext_call.return_data[12 len 20] >= 32
                if not arg1:
                    revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[694 len 22]
        else:
            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[616]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
    else:
        mem[420] = return_data.size
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[452]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 531 len 22]
        require ext_code.size(poolInfo[poolInfo.length - 1].field_0)
        staticcall poolInfo[poolInfo.length - 1].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[poolInfo.length - 1].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(return_data.size) + 457] = poolInfo[poolInfo.length - 1].field_256
        mem[ceil32(return_data.size) + 489] = ext_call.return_data[0] - 1
        mem[ceil32(return_data.size) + 421] = 68
        mem[ceil32(return_data.size) + 453 len 4] = approve(address arg1, uint256 arg2)
        mem[ceil32(return_data.size) + 521] = 32
        mem[ceil32(return_data.size) + 553] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[poolInfo.length - 1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 585 len 64] = 0, poolInfo[poolInfo.length - 1].field_256, Mask(224, 32, ext_call.return_data[0] - 1) >> 32
        mem[ceil32(return_data.size) + 677 len 4] = 0
        call poolInfo[poolInfo.length - 1].field_0 with:
           funct poolInfo[poolInfo.length - 1].field_256
             gas gas_remaining wei
            args ext_call.return_data[0] - 1, 0, mem[ceil32(return_data.size) + 649 len 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[12 len 20]:
                    revert with memory
                      from 128
                       len ext_call.return_data[12 len 20]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[12 len 20]:
                require ext_call.return_data[12 len 20] >= 32
                if not arg1:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 695 len 22]
        else:
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 
                            'SafeERC20: low-level call failed',
                            mem[(2 * ceil32(return_data.size)) + 686 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(return_data.size) + 617]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(2 * ceil32(return_data.size)) + 696 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    emit AddPool(arg1);
    stor1 = 1
}

function resetAllowances() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 3
        _286 = mem[64]
        mem[mem[64] + 36] = poolInfo[idx].field_256
        mem[mem[64] + 68] = 0
        _287 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_287 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_287 + 36 len 28]
        mem[64] = _286 + 164
        mem[_286 + 100] = 32
        mem[_286 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        _293 = mem[_287]
        t = _287 + 32
        u = mem[64]
        s = mem[_287]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_287])] = mem[_287 + floor32(mem[_287]) + -(mem[_287] % 32) + 64 len mem[_287] % 32] or Mask(8 * -(mem[_287] % 32) + 32, -(8 * -(mem[_287] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_287])])
        call poolInfo[idx].field_0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _293 + _286 + -mem[64] + 160]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _572 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_286 + 100]
                _574 = mem[_286 + 100]
                if not mem[_286 + 100]:
                    if not mem[_286 + 100] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_286 + 100] + 32]
                    mem[floor32(mem[_286 + 100]) + mem[64] + 68] = mem[floor32(mem[_286 + 100]) + mem[64] + -(mem[_286 + 100] % 32) + 100 len mem[_286 + 100] % 32]
                else:
                    mem[mem[64] + 68] = mem[_286 + 132]
                    idx = 32
                    while idx < _574:
                        mem[idx + mem[64] + 68] = mem[idx + _286 + 132]
                        idx = idx + 32
                        continue 
                    if not _574 % 32:
                        revert with memory
                          from mem[64]
                           len _574 + _572 + -mem[64] + 68
                    mem[floor32(_574) + _572 + 68] = mem[floor32(_574) + _572 + -(_574 % 32) + 100 len _574 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_574) + _572 + -mem[64] + 100
            if not mem[96]:
                mem[mem[64] + 4] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(this.address), poolInfo[idx].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                _626 = mem[64]
                mem[mem[64] + 36] = poolInfo[idx].field_256
                mem[mem[64] + 68] = ext_call.return_data[0] - 1
                _627 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_627 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_627 + 36 len 28]
                mem[64] = _626 + 164
                mem[_626 + 100] = 32
                mem[_626 + 132] = 'SafeERC20: low-level call failed'
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[idx].field_0):
                    revert with 0, 'Address: call to non-contract'
                _649 = mem[_627]
                t = _627 + 32
                u = mem[64]
                s = mem[_627]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[mem[64] + floor32(mem[_627])] = mem[_627 + floor32(mem[_627]) + -(mem[_627] % 32) + 64 len mem[_627] % 32] or Mask(8 * -(mem[_627] % 32) + 32, -(8 * -(mem[_627] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_627])])
                call poolInfo[idx].field_0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _649 + _626 + -mem[64] + 160]
                if not return_data.size:
                    if ext_call.success:
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[mem[64] + 110 len 22]
                        idx = idx + 1
                        continue 
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    _870 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = mem[_626 + 100]
                    _872 = mem[_626 + 100]
                    if not mem[_626 + 100]:
                        if not mem[_626 + 100] % 32:
                            revert with 0, 32, mem[mem[64] + 36 len mem[_626 + 100] + 32]
                        mem[floor32(mem[_626 + 100]) + mem[64] + 68] = mem[floor32(mem[_626 + 100]) + mem[64] + -(mem[_626 + 100] % 32) + 100 len mem[_626 + 100] % 32]
                    else:
                        mem[mem[64] + 68] = mem[_626 + 132]
                        idx = 32
                        while idx < _872:
                            mem[idx + mem[64] + 68] = mem[idx + _626 + 132]
                            idx = idx + 32
                            continue 
                        if not _872 % 32:
                            revert with memory
                              from mem[64]
                               len _872 + _870 + -mem[64] + 68
                        mem[floor32(_872) + _870 + 68] = mem[floor32(_872) + _870 + -(_872 % 32) + 100 len _872 % 32]
                    revert with memory
                      from mem[64]
                       len floor32(_872) + _870 + -mem[64] + 100
                _854 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size) + 1
                mem[_854] = return_data.size
                mem[_854 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_854 + 32]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                _874 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_626 + 100]
                _876 = mem[_626 + 100]
                if not mem[_626 + 100]:
                    if not mem[_626 + 100] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_626 + 100] + 32]
                    mem[floor32(mem[_626 + 100]) + mem[64] + 68] = mem[floor32(mem[_626 + 100]) + mem[64] + -(mem[_626 + 100] % 32) + 100 len mem[_626 + 100] % 32]
                else:
                    mem[mem[64] + 68] = mem[_626 + 132]
                    idx = 32
                    while idx < _876:
                        mem[idx + mem[64] + 68] = mem[idx + _626 + 132]
                        idx = idx + 32
                        continue 
                    if not _876 % 32:
                        revert with memory
                          from mem[64]
                           len _876 + _874 + -mem[64] + 68
                    mem[floor32(_876) + _874 + 68] = mem[floor32(_876) + _874 + -(_876 % 32) + 100 len _876 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_876) + _874 + -mem[64] + 100
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[mem[64] + 110 len 22]
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), poolInfo[idx].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _638 = mem[64]
            mem[mem[64] + 36] = poolInfo[idx].field_256
            mem[mem[64] + 68] = ext_call.return_data[0] - 1
            _639 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_639 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_639 + 36 len 28]
            mem[64] = _638 + 164
            mem[_638 + 100] = 32
            mem[_638 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            _665 = mem[_639]
            t = _639 + 32
            u = mem[64]
            s = mem[_639]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_639])] = mem[_639 + floor32(mem[_639]) + -(mem[_639] % 32) + 64 len mem[_639] % 32] or Mask(8 * -(mem[_639] % 32) + 32, -(8 * -(mem[_639] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_639])])
            call poolInfo[idx].field_0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _665 + _638 + -mem[64] + 160]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _878 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_638 + 100]
                _880 = mem[_638 + 100]
                if not mem[_638 + 100]:
                    if not mem[_638 + 100] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_638 + 100] + 32]
                    mem[floor32(mem[_638 + 100]) + mem[64] + 68] = mem[floor32(mem[_638 + 100]) + mem[64] + -(mem[_638 + 100] % 32) + 100 len mem[_638 + 100] % 32]
                    revert with 0, 32, mem[mem[64] + 36 len floor32(_880) + 64]
                mem[mem[64] + 68] = mem[_638 + 132]
                idx = 32
                while idx < _880:
                    mem[idx + mem[64] + 68] = mem[idx + _638 + 132]
                    idx = idx + 32
                    continue 
                if not _880 % 32:
                    revert with memory
                      from mem[64]
                       len _880 + _878 + -mem[64] + 68
                mem[floor32(_880) + _878 + 68] = mem[floor32(_880) + _878 + -(_880 % 32) + 100 len _880 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_880) + _878 + -mem[64] + 100
            _855 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_855] = return_data.size
            mem[_855 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_855 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _882 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_638 + 100]
            _884 = mem[_638 + 100]
            if not mem[_638 + 100]:
                if not mem[_638 + 100] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_638 + 100] + 32]
                mem[floor32(mem[_638 + 100]) + mem[64] + 68] = mem[floor32(mem[_638 + 100]) + mem[64] + -(mem[_638 + 100] % 32) + 100 len mem[_638 + 100] % 32]
                revert with 0, 32, mem[mem[64] + 36 len floor32(_884) + 64]
            mem[mem[64] + 68] = mem[_638 + 132]
            idx = 32
            while idx < _884:
                mem[idx + mem[64] + 68] = mem[idx + _638 + 132]
                idx = idx + 32
                continue 
            if not _884 % 32:
                revert with memory
                  from mem[64]
                   len _884 + _882 + -mem[64] + 68
            mem[floor32(_884) + _882 + 68] = mem[floor32(_884) + _882 + -(_884 % 32) + 100 len _884 % 32]
            revert with memory
              from mem[64]
               len floor32(_884) + _882 + -mem[64] + 100
        _569 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_569] = return_data.size
        mem[_569 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _576 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_286 + 100]
            _578 = mem[_286 + 100]
            if not mem[_286 + 100]:
                if not mem[_286 + 100] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_286 + 100] + 32]
                mem[floor32(mem[_286 + 100]) + mem[64] + 68] = mem[floor32(mem[_286 + 100]) + mem[64] + -(mem[_286 + 100] % 32) + 100 len mem[_286 + 100] % 32]
            else:
                mem[mem[64] + 68] = mem[_286 + 132]
                idx = 32
                while idx < _578:
                    mem[idx + mem[64] + 68] = mem[idx + _286 + 132]
                    idx = idx + 32
                    continue 
                if not _578 % 32:
                    revert with memory
                      from mem[64]
                       len _578 + _576 + -mem[64] + 68
                mem[floor32(_578) + _576 + 68] = mem[floor32(_578) + _576 + -(_578 % 32) + 100 len _578 % 32]
            revert with memory
              from mem[64]
               len floor32(_578) + _576 + -mem[64] + 100
        if not return_data.size:
            mem[mem[64] + 4] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(this.address), poolInfo[idx].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            _629 = mem[64]
            mem[mem[64] + 36] = poolInfo[idx].field_256
            mem[mem[64] + 68] = ext_call.return_data[0] - 1
            _630 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_630 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_630 + 36 len 28]
            mem[64] = _629 + 164
            mem[_629 + 100] = 32
            mem[_629 + 132] = 'SafeERC20: low-level call failed'
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(poolInfo[idx].field_0):
                revert with 0, 'Address: call to non-contract'
            _655 = mem[_630]
            t = _630 + 32
            u = mem[64]
            s = mem[_630]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[_630])] = mem[_630 + floor32(mem[_630]) + -(mem[_630] % 32) + 64 len mem[_630] % 32] or Mask(8 * -(mem[_630] % 32) + 32, -(8 * -(mem[_630] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_630])])
            call poolInfo[idx].field_0.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _655 + _629 + -mem[64] + 160]
            if not return_data.size:
                if ext_call.success:
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[mem[64] + 110 len 22]
                    idx = idx + 1
                    continue 
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                _886 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = mem[_629 + 100]
                _888 = mem[_629 + 100]
                if not mem[_629 + 100]:
                    if not mem[_629 + 100] % 32:
                        revert with 0, 32, mem[mem[64] + 36 len mem[_629 + 100] + 32]
                    mem[floor32(mem[_629 + 100]) + mem[64] + 68] = mem[floor32(mem[_629 + 100]) + mem[64] + -(mem[_629 + 100] % 32) + 100 len mem[_629 + 100] % 32]
                else:
                    mem[mem[64] + 68] = mem[_629 + 132]
                    idx = 32
                    while idx < _888:
                        mem[idx + mem[64] + 68] = mem[idx + _629 + 132]
                        idx = idx + 32
                        continue 
                    if not _888 % 32:
                        revert with memory
                          from mem[64]
                           len _888 + _886 + -mem[64] + 68
                    mem[floor32(_888) + _886 + 68] = mem[floor32(_888) + _886 + -(_888 % 32) + 100 len _888 % 32]
                revert with memory
                  from mem[64]
                   len floor32(_888) + _886 + -mem[64] + 100
            _858 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size) + 1
            mem[_858] = return_data.size
            mem[_858 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_858 + 32]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            _890 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_629 + 100]
            _892 = mem[_629 + 100]
            if not mem[_629 + 100]:
                if not mem[_629 + 100] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_629 + 100] + 32]
                mem[floor32(mem[_629 + 100]) + mem[64] + 68] = mem[floor32(mem[_629 + 100]) + mem[64] + -(mem[_629 + 100] % 32) + 100 len mem[_629 + 100] % 32]
            else:
                mem[mem[64] + 68] = mem[_629 + 132]
                idx = 32
                while idx < _892:
                    mem[idx + mem[64] + 68] = mem[idx + _629 + 132]
                    idx = idx + 32
                    continue 
                if not _892 % 32:
                    revert with memory
                      from mem[64]
                       len _892 + _890 + -mem[64] + 68
                mem[floor32(_892) + _890 + 68] = mem[floor32(_892) + _890 + -(_892 % 32) + 100 len _892 % 32]
            revert with memory
              from mem[64]
               len floor32(_892) + _890 + -mem[64] + 100
        require return_data.size >= 32
        if not mem[_569 + 32]:
            revert with 0, 
                        32,
                        42,
                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[mem[64] + 110 len 22]
        mem[mem[64] + 4] = this.address
        require ext_code.size(poolInfo[idx].field_0)
        staticcall poolInfo[idx].field_0.allowance(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), poolInfo[idx].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] - 1 < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        _641 = mem[64]
        mem[mem[64] + 36] = poolInfo[idx].field_256
        mem[mem[64] + 68] = ext_call.return_data[0] - 1
        _642 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_642 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_642 + 36 len 28]
        mem[64] = _641 + 164
        mem[_641 + 100] = 32
        mem[_641 + 132] = 'SafeERC20: low-level call failed'
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(poolInfo[idx].field_0):
            revert with 0, 'Address: call to non-contract'
        _675 = mem[_642]
        t = _642 + 32
        u = mem[64]
        s = mem[_642]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_642])] = mem[_642 + floor32(mem[_642]) + -(mem[_642] % 32) + 64 len mem[_642] % 32] or Mask(8 * -(mem[_642] % 32) + 32, -(8 * -(mem[_642] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_642])])
        call poolInfo[idx].field_0.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _675 + _641 + -mem[64] + 160]
        if not return_data.size:
            if ext_call.success:
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[mem[64] + 110 len 22]
                idx = idx + 1
                continue 
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            _894 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[_641 + 100]
            _896 = mem[_641 + 100]
            if not mem[_641 + 100]:
                if not mem[_641 + 100] % 32:
                    revert with 0, 32, mem[mem[64] + 36 len mem[_641 + 100] + 32]
                mem[floor32(mem[_641 + 100]) + mem[64] + 68] = mem[floor32(mem[_641 + 100]) + mem[64] + -(mem[_641 + 100] % 32) + 100 len mem[_641 + 100] % 32]
                revert with memory
                  from mem[64]
                   len floor32(_896) + _894 + -mem[64] + 100
            mem[mem[64] + 68] = mem[_641 + 132]
            idx = 32
            while idx < _896:
                mem[idx + mem[64] + 68] = mem[idx + _641 + 132]
                idx = idx + 32
                continue 
            if not _896 % 32:
                revert with 0, 32, mem[mem[64] + 36 len _896 + 32]
            mem[floor32(_896) + mem[64] + 68] = mem[floor32(_896) + mem[64] + -(_896 % 32) + 100 len _896 % 32]
            revert with 0, 32, mem[mem[64] + 36 len floor32(_896) + 64]
        _859 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_859] = return_data.size
        mem[_859 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if ext_call.success:
            if return_data.size:
                require return_data.size >= 32
                if not mem[_859 + 32]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[mem[64] + 110 len 22]
            idx = idx + 1
            continue 
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        _898 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = mem[_641 + 100]
        _900 = mem[_641 + 100]
        if not mem[_641 + 100]:
            if not mem[_641 + 100] % 32:
                revert with 0, 32, mem[mem[64] + 36 len mem[_641 + 100] + 32]
            mem[floor32(mem[_641 + 100]) + mem[64] + 68] = mem[floor32(mem[_641 + 100]) + mem[64] + -(mem[_641 + 100] % 32) + 100 len mem[_641 + 100] % 32]
        else:
            mem[mem[64] + 68] = mem[_641 + 132]
            idx = 32
            while idx < _900:
                mem[idx + mem[64] + 68] = mem[idx + _641 + 132]
                idx = idx + 32
                continue 
            if not _900 % 32:
                revert with memory
                  from mem[64]
                   len _900 + _898 + -mem[64] + 68
            mem[floor32(_900) + _898 + 68] = mem[floor32(_900) + _898 + -(_900 % 32) + 100 len _900 % 32]
        revert with memory
          from mem[64]
           len floor32(_900) + _898 + -mem[64] + 100
}

function withdrawAll(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if -1 <= 0 / ext_call.return_data[0]:
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                userInfo[arg1][msg.sender] = 0
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[388 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[388 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if -1 <= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            require arg1 < poolInfo.length
            require ext_code.size(poolInfo[arg1].field_256)
            call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, -1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[452 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[420]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 499 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
            else:
                userInfo[arg1][msg.sender] = 0
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if not ext_code.hash(poolInfo[arg1].field_0):
                    revert with 0, 'Address: call to non-contract'
                if ext_call.return_data[0] >= -1:
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                    mem[388 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, transfer(address arg1, uint256 arg2), msg.sender, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(-1, msg.sender, arg1);
                else:
                    mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                    mem[388 len 0] = 0
                    call poolInfo[arg1].field_0 with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                    if not return_data.size:
                        require not ext_call.success
                        revert with 'SafeMath: division by zero'
                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[356]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 435 len 22]
                    emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
}

function withdraw(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    if not stor2[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x654f70657261746f723a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[200 len 28]
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= 0 / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), address(arg3) << 64, 0, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor1 == 2:
        revert with 0, 32, 31, 0xfe5265656e7472616e637947756172643a207265656e7472616e742063616c6c
    stor1 = 2
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.wantLockedTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 < poolInfo.length
    require ext_code.size(poolInfo[arg1].field_256)
    staticcall poolInfo[arg1].field_256.sharesTotal() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not userInfo[arg1][msg.sender]:
        revert with 0, 'user.shares is 0'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'sharesTotal is 0'
    if not userInfo[arg1][msg.sender]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= 0 / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not 0 / ext_call.return_data[0]:
                emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= 0 / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((0 / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    else:
        if ext_call.return_data[0] * userInfo[arg1][msg.sender] / userInfo[arg1][msg.sender] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if arg2 <= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
            if not arg2:
                emit Withdraw(arg2, msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= arg2:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, arg2) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(arg2, msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
        else:
            if not ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
            else:
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_256)
                call poolInfo[arg1].field_256.withdraw(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= userInfo[arg1][msg.sender]:
                    userInfo[arg1][msg.sender] -= ext_call.return_data[0]
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[388 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[452 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[452 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[420]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 499 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
                else:
                    userInfo[arg1][msg.sender] = 0
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.balanceOf(address arg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if not ext_code.hash(poolInfo[arg1].field_0):
                        revert with 0, 'Address: call to non-contract'
                    if ext_call.return_data[0] >= ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) >> 32
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]) << 224, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw((ext_call.return_data[0] * userInfo[arg1][msg.sender] / ext_call.return_data[0]), msg.sender, arg1);
                    else:
                        mem[324 len 64] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0 len 28]
                        mem[388 len 0] = 0
                        call poolInfo[arg1].field_0 with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[356]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 435 len 22]
                        emit Withdraw(ext_call.return_data[0], msg.sender, arg1);
    stor1 = 1
}



}
