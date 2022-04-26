contract main {




// =====================  Runtime code  =====================


#
#  - doHardWork()
#  - withdrawAllToVault()
#
const sub_9d1af3c1(?) = 0x16327e3fbdaca3bcf7e38f5af2599d2ddc33ae52

const depositArbCheck = 1


address storeAddress;
uint256 profitSharingNumerator;
uint256 profitSharingDenominator;
address rewardTokenAddress;
address underlyingAddress;
address uniLPComponentToken0Address;
address uniLPComponentToken1Address;
uint8 stor7; offset 160
uint32 stor7;
address vaultAddress;
uint256 stor7;
uint8 sell; offset 160
uint128 stor8; offset 160
address rewardPoolAddress;
uint256 sellFloor;
uint256 poolID;
array of address uniswapRoutes;
mapping of uint8 stor12;

function uniswapRoutes(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < uint256(uniswapRoutes[arg1])
    return address(uniswapRoutes[arg1][arg2])
}

function profitSharingDenominator() payable {
    return profitSharingDenominator
}

function uniLPComponentToken1() payable {
    return uniLPComponentToken1Address
}

function sell() payable {
    return bool(sell)
}

function unsalvagableTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function uniLPComponentToken0() payable {
    return uniLPComponentToken0Address
}

function rewardPool() payable {
    return rewardPoolAddress
}

function underlying() payable {
    return underlyingAddress
}

function poolID() payable {
    return poolID
}

function store() payable {
    return storeAddress
}

function sellFloor() payable {
    return sellFloor
}

function profitSharingNumerator() payable {
    return profitSharingNumerator
}

function rewardToken() payable {
    return rewardTokenAddress
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function governance() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0x5aa6e675 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function controller() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xf77c4791 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function continueInvesting() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    uint8(stor7.field_160) = 0
}

function setSellFloor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    sellFloor = arg1
}

function setSell(bool arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    stor8 = Mask(96, 0, arg1)
}

function setStorage(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    if not arg1:
        revert with 0, 'new storage shouldn't be empty'
    storeAddress = arg1
}

function investedUnderlyingBalance() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not rewardPoolAddress:
        return ext_call.return_data[0]
    require ext_code.size(rewardPoolAddress)
    staticcall rewardPoolAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function emergencyExit() payable {
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    require ext_code.size(rewardPoolAddress)
    staticcall rewardPoolAddress.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args poolID, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0]:
        require ext_code.size(rewardPoolAddress)
        call rewardPoolAddress.withdraw(uint256 rg1, uint256 rg2) with:
             gas gas_remaining wei
            args poolID, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    uint8(stor7.field_160) = 1
}

function setLiquidationPaths(address[] arg1, address[] arg2) payable {
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
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xdee1f0e4 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Not governance'
    uint256(uniswapRoutes[stor5]) = arg1.length
    if not arg1.length:
        idx = 0
        while uint256(uniswapRoutes[stor5]) > idx:
            address(uniswapRoutes[stor5][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(uniswapRoutes[stor5][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while uint256(uniswapRoutes[stor5]) > idx:
            address(uniswapRoutes[stor5][idx]) = 0
            idx = idx + 1
            continue 
    uint256(uniswapRoutes[stor6]) = arg2.length
    if not arg2.length:
        idx = 0
        while uint256(uniswapRoutes[stor6]) > idx:
            address(uniswapRoutes[stor6][idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg1.length) + 160
        while (32 * arg1.length) + (32 * arg2.length) + 160 > idx:
            address(uniswapRoutes[stor6][s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while uint256(uniswapRoutes[stor6]) > idx:
            address(uniswapRoutes[stor6][idx]) = 0
            idx = idx + 1
            continue 
}

function salvage(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(storeAddress)
    staticcall storeAddress.0xb429afeb with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xdee1f0e4 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        43,
                        0xfe5468652063616c6c6572206d75737420626520636f6e74726f6c6c6572206f7220676f7665726e616e63,
                        mem[207 len 21]
    if stor12[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x65746f6b656e20697320646566696e6564206173206e6f742073616c76616761626c,
                    mem[198 len 30]
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(arg2):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg3) >> 32
    call arg2 with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 224, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[228]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function withdrawToVault(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if vaultAddress != msg.sender:
        require ext_code.size(storeAddress)
        staticcall storeAddress.0xf77c4791 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(storeAddress)
            staticcall storeAddress.0x5aa6e675 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            0x655468652073656e6465722068617320746f2062652074686520636f6e74726f6c6c65722c20676f7665726e616e63652c206f72207661756c,
                            mem[221 len 7]
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 <= ext_call.return_data[0]:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(underlyingAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7.field_0), uint32(stor7.field_0), Mask(224, 32, arg1) >> 32
        call underlyingAddress with:
           funct uint32(stor7.field_0)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor7.field_0):
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(rewardPoolAddress)
        staticcall rewardPoolAddress.userInfo(uint256 rg1, address rg2) with:
                gas gas_remaining wei
               args poolID, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        require ext_code.size(rewardPoolAddress)
        if ext_call.return_data[0] < arg1 - ext_call.return_data[0]:
            call rewardPoolAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args poolID, ext_call.return_data[0]
        else:
            call rewardPoolAddress.withdraw(uint256 rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args poolID, arg1 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(underlyingAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        if not ext_code.hash(underlyingAddress):
            revert with 0, 'SafeERC20: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor7.field_0), uint32(stor7.field_0), Mask(224, 32, arg1) >> 32
        call underlyingAddress with:
           funct uint32(stor7.field_0)
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 224, mem[324 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 0, 'SafeERC20: low-level call failed'
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}



}
