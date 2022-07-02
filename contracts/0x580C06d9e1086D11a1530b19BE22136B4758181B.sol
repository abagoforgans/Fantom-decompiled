contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, address arg2)
#  - harvest()
#
const getHarvestable = ext_call.return_data[0]

const balanceOfPool = ext_call.return_data[0]

const devFundMax = 100000

const treasuryMax = 100000

const getName = 'StrategyCrv3cryptoV1'

const sub_2b9d5cc9(?) = 0x58e57ca18b7a47112b877e31929798cd3d703b0f

const sub_34c0d442(?) = 0x702bbdead24c40647f235f15971db0867f6bdb

const fUSDT = 0x49d68029688eabf473097a2fc38ef61633a3c7a

const sub_403bf6a9(?) = 0x1e4f97b9f9f913c46f1632781732927b9019c68b

const performanceMax = 100000

const sub_c8968f75(?) = 0x3a1659ddcf2339be3aea159ca010979fb49155ff

const WFTM = 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83


mapping of uint8 stor0;
mapping of uint8 stor1;
uint256 performanceFee;
uint256 treasuryFee;
uint256 devFundFee;
uint256 sub_5d158350;
uint256 sub_14b74d9a;
uint256 sub_7b756553;
uint8 buybackEnabled;
address mmTokenAddress; offset 8
address masterChefAddress;
address wantAddress;
address governanceAddress;
uint32 stor12;
address controllerAddress;
uint256 stor12;
address strategistAddress;
address timelockAddress;
address univ2Router2Address;
uint8 emergencyExit; offset 160
uint128 stor16; offset 160
address sushiRouterAddress;

function sub_14b74d9a(?) payable {
    return sub_14b74d9a
}

function buybackEnabled() payable {
    return bool(buybackEnabled)
}

function want() payable {
    return wantAddress
}

function strategist() payable {
    return strategistAddress
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function emergencyExit() payable {
    return bool(emergencyExit)
}

function masterChef() payable {
    return masterChefAddress
}

function governance() payable {
    return governanceAddress
}

function sub_5d158350(?) payable {
    return sub_5d158350
}

function sushiRouter() payable {
    return sushiRouterAddress
}

function sub_7b756553(?) payable {
    return sub_7b756553
}

function performanceFee() payable {
    return performanceFee
}

function mmToken() payable {
    return mmTokenAddress
}

function devFundFee() payable {
    return devFundFee
}

function univ2Router2() payable {
    return univ2Router2Address
}

function treasuryFee() payable {
    return treasuryFee
}

function timelock() payable {
    return timelockAddress
}

function sub_e13f8513(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function controller() payable {
    return address(controllerAddress)
}

function _fallback() payable {
    revert
}

function setDevFundFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    devFundFee = arg1
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    treasuryFee = arg1
}

function setTimelock(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    timelockAddress = arg1
}

function setMmToken(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    mmTokenAddress = arg1
}

function setPerformanceFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    performanceFee = arg1
}

function setUniRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    univ2Router2Address = arg1
}

function setMasterChef(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    masterChefAddress = arg1
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    governanceAddress = arg1
}

function setStrategist(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    strategistAddress = arg1
}

function setSushiRoute(address arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sushiRouterAddress = arg1
}

function setEmergencyExit(bool arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor16 = Mask(96, 0, arg1)
}

function setDelayBlockRequired(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    sub_5d158350 = arg1
}

function setController(address arg1) payable {
    require calldata.size - 4 >= 32
    if timelockAddress != msg.sender:
        revert with 0, '!timelock'
    address(controllerAddress) = arg1
}

function setBuybackEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    buybackEnabled = uint8(arg1)
}

function setWhiteList(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor0[address(arg1)] = uint8(arg2)
}

function setBenignCallers(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if governanceAddress != msg.sender:
        revert with 0, '!governance'
    stor1[address(arg1)] = uint8(arg2)
}

function balanceOfWant() payable {
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function deposit() payable {
    require ext_code.size(0x58e57ca18b7a47112b877e31929798cd3d703b0f)
    staticcall 0x58e57ca18b7a47112b877e31929798cd3d703b0f.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        call 0x00702bbdead24c40647f235f15971db0867f6bdb.deposit(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    if 0x49d68029688eabf473097a2fc38ef61633a3c7a == arg1:
        revert with 0, '!fUSDT'
    if 0x58e57ca18b7a47112b877e31929798cd3d703b0f == arg1:
        revert with 0, '!lpToken'
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if wantAddress == arg1:
        revert with 0, 'want'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call arg1 with:
       funct uint32(stor12)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with transfer(address arg1, uint256 arg2), Mask(224, 0, stor12), uint32(stor12), ext_call.return_data[0]
        if not transfer(address arg1, uint256 arg2), Mask(224, 0, stor12):
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    return ext_call.return_data[0]
}

function balanceOf() payable {
    if sub_5d158350 <= 0:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_7b756553 <= 0:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_14b74d9a > block.number:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.number - sub_14b74d9a >= sub_5d158350:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return (2 * ext_call.return_data[0])
    if sub_5d158350 + sub_14b74d9a < sub_14b74d9a:
        revert with 0, 'SafeMath: addition overflow'
    if block.number > sub_5d158350 + sub_14b74d9a:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_7b756553:
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) / sub_7b756553 != sub_5d158350 + sub_14b74d9a - block.number:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553):
        if not sub_5d158350:
            revert with 0, 'SafeMath: division by zero'
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if 0 / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((2 * ext_call.return_data[0]) - (0 / sub_5d158350 / 10^18))
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / (sub_5d158350 * sub_7b756553) + (sub_14b74d9a * sub_7b756553) - (block.number * sub_7b756553) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not sub_5d158350:
        revert with 0, 'SafeMath: division by zero'
    require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
    staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(wantAddress)
    staticcall wantAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if (10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18 > 2 * ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((2 * ext_call.return_data[0]) - ((10^18 * sub_5d158350 * sub_7b756553) + (10^18 * sub_14b74d9a * sub_7b756553) - (10^18 * block.number * sub_7b756553) / sub_5d158350 / 10^18))
}

function withdrawAll() payable {
    if address(controllerAddress) != msg.sender:
        revert with 0, '!controller'
    if emergencyExit:
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(controllerAddress))
        staticcall address(controllerAddress).vaults(address arg1) with:
                gas gas_remaining wei
               args wantAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            revert with 0, '!vault'
        mem[132] = ext_call.return_data[12 len 20]
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        if not ext_code.hash(wantAddress):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
        call wantAddress.mem[160 len 4] with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
            if not 0, mem[132 len 28]:
                revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
    else:
        require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
        staticcall 0x702bbdead24c40647f235f15971db0867f6bdb.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(wantAddress)
        staticcall wantAddress.balanceOf(address arg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            mem[132] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call wantAddress.mem[160 len 4] with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, ext_call.return_data[12 len 20], ext_call.return_data[0]
                if not 0, mem[132 len 28]:
                    revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
        else:
            require ext_code.size(0x702bbdead24c40647f235f15971db0867f6bdb)
            call 0x00702bbdead24c40647f235f15971db0867f6bdb.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(wantAddress)
            staticcall wantAddress.balanceOf(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(controllerAddress))
            staticcall address(controllerAddress).vaults(address arg1) with:
                    gas gas_remaining wei
                   args wantAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[12 len 20]:
                revert with 0, '!vault'
            mem[196] = ext_call.return_data[12 len 20]
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            if not ext_code.hash(wantAddress):
                revert with 0, 'Address: call to non-contract'
            mem[324 len 64] = 0, ext_call.return_data[12 len 20], ext_call.return_data[0 len 28]
            mem[388 len 0] = 0
            call wantAddress.mem[224 len 4] with:
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: subtraction overflow'
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
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
    return ext_call.return_data[0]
}

function figureOutPath(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if mmTokenAddress != arg2:
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 2
            mem[224] = arg1
            mem[256] = arg2
            mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[292] = arg3
            mem[324] = 64
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _735 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _783 = mem[_735 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_735 + 288])] = mem[_735 + 320 len floor32(mem[_735 + 288])]
            require 1 < mem[ceil32(return_data.size) + 288]
            _1271 = mem[ceil32(return_data.size) + 352]
            mem[(32 * _783) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _783) + ceil32(return_data.size) + 324] = arg3
            mem[(32 * _783) + ceil32(return_data.size) + 356] = 64
            mem[(32 * _783) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _783) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _783) + ceil32(return_data.size) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _783) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _783) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _1735 = mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _783) + ceil32(return_data.size) + mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _783) + ceil32(return_data.size) + mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
            mem[(32 * _783) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _783) + ceil32(return_data.size) + mem[(32 * _783) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            _1759 = mem[(32 * _783) + ceil32(return_data.size) + _1735 + 320]
            mem[(32 * _783) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _783) + ceil32(return_data.size) + _1735 + 320])] = mem[(32 * _783) + ceil32(return_data.size) + _1735 + 352 len floor32(mem[(32 * _783) + ceil32(return_data.size) + _1735 + 320])]
            require 1 < mem[(32 * _783) + (2 * ceil32(return_data.size)) + 320]
            mem[(32 * _1759) + (32 * _783) + (2 * ceil32(return_data.size)) + 448 len 0] = None
            if _1271 > mem[(32 * _783) + (2 * ceil32(return_data.size)) + 384]:
                return 1, Array(len=2, data=mem[(32 * _1759) + (32 * _783) + (2 * ceil32(return_data.size)) + 448 len 64])
            return 0, 64, 2, mem[(32 * _1759) + (32 * _783) + (2 * ceil32(return_data.size)) + 448 len 64]
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
            mem[96] = 2
            mem[128] = arg1
            mem[160] = arg2
            mem[192] = 2
            mem[224] = arg1
            mem[256] = arg2
            mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[292] = arg3
            mem[324] = 64
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _743 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _787 = mem[_743 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_743 + 288])] = mem[_743 + 320 len floor32(mem[_743 + 288])]
            require 1 < mem[ceil32(return_data.size) + 288]
            _1275 = mem[ceil32(return_data.size) + 352]
            mem[(32 * _787) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _787) + ceil32(return_data.size) + 324] = arg3
            mem[(32 * _787) + ceil32(return_data.size) + 356] = 64
            mem[(32 * _787) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _787) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _787) + ceil32(return_data.size) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _787) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _787) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _1739 = mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _787) + ceil32(return_data.size) + mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _787) + ceil32(return_data.size) + mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
            mem[(32 * _787) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _787) + ceil32(return_data.size) + mem[(32 * _787) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            _1761 = mem[(32 * _787) + ceil32(return_data.size) + _1739 + 320]
            mem[(32 * _787) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _787) + ceil32(return_data.size) + _1739 + 320])] = mem[(32 * _787) + ceil32(return_data.size) + _1739 + 352 len floor32(mem[(32 * _787) + ceil32(return_data.size) + _1739 + 320])]
            require 1 < mem[(32 * _787) + (2 * ceil32(return_data.size)) + 320]
            mem[(32 * _1761) + (32 * _787) + (2 * ceil32(return_data.size)) + 448 len 0] = None
            if _1275 > mem[(32 * _787) + (2 * ceil32(return_data.size)) + 384]:
                return 1, Array(len=2, data=mem[(32 * _1761) + (32 * _787) + (2 * ceil32(return_data.size)) + 448 len 64])
            return 0, 64, 2, mem[(32 * _1761) + (32 * _787) + (2 * ceil32(return_data.size)) + 448 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _741 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _786 = mem[_741 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_741 + 96])] = mem[_741 + 128 len floor32(mem[_741 + 96])]
            mem[64] = (32 * _786) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _786) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _786) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _786) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _786) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _786) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _786) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _739 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _785 = mem[_739 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_739 + 96])] = mem[_739 + 128 len floor32(mem[_739 + 96])]
        mem[64] = (32 * _785) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1273 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _785) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _785) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _785) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _785) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _785) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _785) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _785) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _785) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _785) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _785) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _785) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _785) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _785) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _785) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1737 = mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _785) + ceil32(return_data.size) + mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _785) + ceil32(return_data.size) + mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _785) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _785) + ceil32(return_data.size) + mem[(32 * _785) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1760 = mem[(32 * _785) + ceil32(return_data.size) + _1737 + 128]
        mem[(32 * _785) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _785) + ceil32(return_data.size) + _1737 + 128])] = mem[(32 * _785) + ceil32(return_data.size) + _1737 + 160 len floor32(mem[(32 * _785) + ceil32(return_data.size) + _1737 + 128])]
        mem[64] = (32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _785) + (2 * ceil32(return_data.size)) + 128]
        if _1273 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _785) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1760) + (32 * _785) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    if 1 == bool(buybackEnabled):
        if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
            mem[256] = arg2
            mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[292] = arg3
            mem[324] = 64
            mem[356] = 2
            mem[388 len 0] = None
            require ext_code.size(sushiRouterAddress)
            staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[388 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 288
            require return_data.size >= 32
            _763 = mem[288 len 4], Mask(224, 32, arg3) >> 32
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
            _797 = mem[_763 + 288]
            mem[ceil32(return_data.size) + 320 len floor32(mem[_763 + 288])] = mem[_763 + 320 len floor32(mem[_763 + 288])]
            require 1 < mem[ceil32(return_data.size) + 288]
            _1285 = mem[ceil32(return_data.size) + 352]
            mem[(32 * _797) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[(32 * _797) + ceil32(return_data.size) + 324] = arg3
            mem[(32 * _797) + ceil32(return_data.size) + 356] = 64
            mem[(32 * _797) + ceil32(return_data.size) + 388] = 2
            mem[(32 * _797) + ceil32(return_data.size) + 420 len 0] = None
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, Array(len=2, data=mem[(32 * _797) + ceil32(return_data.size) + 420 len 64])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(32 * _797) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * _797) + (2 * ceil32(return_data.size)) + 320
            require return_data.size >= 32
            _1749 = mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
            require mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[(32 * _797) + ceil32(return_data.size) + mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _797) + ceil32(return_data.size) + mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
            mem[(32 * _797) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _797) + ceil32(return_data.size) + mem[(32 * _797) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
            _1766 = mem[(32 * _797) + ceil32(return_data.size) + _1749 + 320]
            mem[(32 * _797) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _797) + ceil32(return_data.size) + _1749 + 320])] = mem[(32 * _797) + ceil32(return_data.size) + _1749 + 352 len floor32(mem[(32 * _797) + ceil32(return_data.size) + _1749 + 320])]
            require 1 < mem[(32 * _797) + (2 * ceil32(return_data.size)) + 320]
            mem[(32 * _1766) + (32 * _797) + (2 * ceil32(return_data.size)) + 448 len 0] = None
            if _1285 > mem[(32 * _797) + (2 * ceil32(return_data.size)) + 384]:
                return 1, Array(len=2, data=mem[(32 * _1766) + (32 * _797) + (2 * ceil32(return_data.size)) + 448 len 64])
            return 0, 64, 2, mem[(32 * _1766) + (32 * _797) + (2 * ceil32(return_data.size)) + 448 len 64]
        if mem[96] <= 0:
            if mem[96] <= 0:
                return 0, 64, 0
            mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[100] = arg3
            mem[132] = 64
            mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
            mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
            require ext_code.size(univ2Router2Address)
            staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                    gas gas_remaining wei
                   args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _761 = mem[96 len 4], Mask(224, 32, arg3) >> 32
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
            require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
            mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
            _796 = mem[_761 + 96]
            mem[ceil32(return_data.size) + 128 len floor32(mem[_761 + 96])] = mem[_761 + 128 len floor32(mem[_761 + 96])]
            mem[64] = (32 * _796) + ceil32(return_data.size) + 128
            require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
            if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
                mem[(32 * _796) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _796) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _796) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _796) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _796) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _796) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _759 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _795 = mem[_759 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_759 + 96])] = mem[_759 + 128 len floor32(mem[_759 + 96])]
        mem[64] = (32 * _795) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        _1283 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
        if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
            if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
                mem[(32 * _795) + ceil32(return_data.size) + 128] = 1
            else:
                mem[(32 * _795) + ceil32(return_data.size) + 128] = 0
            mem[(32 * _795) + ceil32(return_data.size) + 160] = 64
            mem[(32 * _795) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
            mem[(32 * _795) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
            return memory
              from (32 * _795) + ceil32(return_data.size) + 128
               len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
        mem[(32 * _795) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _795) + ceil32(return_data.size) + 132] = arg3
        mem[(32 * _795) + ceil32(return_data.size) + 164] = 64
        mem[(32 * _795) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _795) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args mem[(32 * _795) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _795) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _795) + (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _1747 = mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _795) + ceil32(return_data.size) + mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _795) + ceil32(return_data.size) + mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
        mem[(32 * _795) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _795) + ceil32(return_data.size) + mem[(32 * _795) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
        _1765 = mem[(32 * _795) + ceil32(return_data.size) + _1747 + 128]
        mem[(32 * _795) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _795) + ceil32(return_data.size) + _1747 + 128])] = mem[(32 * _795) + ceil32(return_data.size) + _1747 + 160 len floor32(mem[(32 * _795) + ceil32(return_data.size) + _1747 + 128])]
        mem[64] = (32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 160
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _795) + (2 * ceil32(return_data.size)) + 128]
        if _1283 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _795) + (2 * ceil32(return_data.size)) + 160]:
            mem[(32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 160] = 1
        else:
            mem[(32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 160] = 0
        mem[(32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 192] = 64
        mem[(32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _1765) + (32 * _795) + (2 * ceil32(return_data.size)) + 160
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg1:
        mem[96] = 2
        mem[128] = arg1
        mem[160] = arg2
        mem[192] = 2
        mem[224] = arg1
        mem[256] = arg2
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _747 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _789 = mem[_747 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_747 + 288])] = mem[_747 + 320 len floor32(mem[_747 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _1277 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _789) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _789) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _789) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _789) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _789) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _789) + ceil32(return_data.size) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _789) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _789) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _1741 = mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _789) + ceil32(return_data.size) + mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _789) + ceil32(return_data.size) + mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[(32 * _789) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _789) + ceil32(return_data.size) + mem[(32 * _789) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _1762 = mem[(32 * _789) + ceil32(return_data.size) + _1741 + 320]
        mem[(32 * _789) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _789) + ceil32(return_data.size) + _1741 + 320])] = mem[(32 * _789) + ceil32(return_data.size) + _1741 + 352 len floor32(mem[(32 * _789) + ceil32(return_data.size) + _1741 + 320])]
        require 1 < mem[(32 * _789) + (2 * ceil32(return_data.size)) + 320]
        mem[(32 * _1762) + (32 * _789) + (2 * ceil32(return_data.size)) + 448 len 0] = None
        if _1277 > mem[(32 * _789) + (2 * ceil32(return_data.size)) + 384]:
            return 1, Array(len=2, data=mem[(32 * _1762) + (32 * _789) + (2 * ceil32(return_data.size)) + 448 len 64])
        return 0, 64, 2, mem[(32 * _1762) + (32 * _789) + (2 * ceil32(return_data.size)) + 448 len 64]
    if 0x21be370d5312f44cb42ce377bc9b8a0cef1a4c83 == arg2:
        mem[256] = arg2
        mem[288] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[292] = arg3
        mem[324] = 64
        mem[356] = 2
        mem[388 len 0] = None
        require ext_code.size(sushiRouterAddress)
        staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[388 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 288
        require return_data.size >= 32
        _755 = mem[288 len 4], Mask(224, 32, arg3) >> 32
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[288 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288] <= 4294967296 and mem[288 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 288] = mem[mem[288 len 4], Mask(224, 32, arg3) >> 32 + 288]
        _793 = mem[_755 + 288]
        mem[ceil32(return_data.size) + 320 len floor32(mem[_755 + 288])] = mem[_755 + 320 len floor32(mem[_755 + 288])]
        require 1 < mem[ceil32(return_data.size) + 288]
        _1281 = mem[ceil32(return_data.size) + 352]
        mem[(32 * _793) + ceil32(return_data.size) + 320] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[(32 * _793) + ceil32(return_data.size) + 324] = arg3
        mem[(32 * _793) + ceil32(return_data.size) + 356] = 64
        mem[(32 * _793) + ceil32(return_data.size) + 388] = 2
        mem[(32 * _793) + ceil32(return_data.size) + 420 len 0] = None
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, Array(len=2, data=mem[(32 * _793) + ceil32(return_data.size) + 420 len 64])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(32 * _793) + ceil32(return_data.size) + 320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (32 * _793) + (2 * ceil32(return_data.size)) + 320
        require return_data.size >= 32
        _1745 = mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32
        require mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[(32 * _793) + ceil32(return_data.size) + mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320] <= 4294967296 and mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _793) + ceil32(return_data.size) + mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]) + 32 <= return_data.size
        mem[(32 * _793) + (2 * ceil32(return_data.size)) + 320] = mem[(32 * _793) + ceil32(return_data.size) + mem[(32 * _793) + ceil32(return_data.size) + 320 len 4], Mask(224, 32, arg3) >> 32 + 320]
        _1764 = mem[(32 * _793) + ceil32(return_data.size) + _1745 + 320]
        mem[(32 * _793) + (2 * ceil32(return_data.size)) + 352 len floor32(mem[(32 * _793) + ceil32(return_data.size) + _1745 + 320])] = mem[(32 * _793) + ceil32(return_data.size) + _1745 + 352 len floor32(mem[(32 * _793) + ceil32(return_data.size) + _1745 + 320])]
        require 1 < mem[(32 * _793) + (2 * ceil32(return_data.size)) + 320]
        mem[(32 * _1764) + (32 * _793) + (2 * ceil32(return_data.size)) + 448 len 0] = None
        if _1281 > mem[(32 * _793) + (2 * ceil32(return_data.size)) + 384]:
            return 1, Array(len=2, data=mem[(32 * _1764) + (32 * _793) + (2 * ceil32(return_data.size)) + 448 len 64])
        return 0, 64, 2, mem[(32 * _1764) + (32 * _793) + (2 * ceil32(return_data.size)) + 448 len 64]
    if mem[96] <= 0:
        if mem[96] <= 0:
            return 0, 64, 0
        mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[100] = arg3
        mem[132] = 64
        mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
        require ext_code.size(univ2Router2Address)
        staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
                gas gas_remaining wei
               args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _753 = mem[96 len 4], Mask(224, 32, arg3) >> 32
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
        require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
        mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
        _792 = mem[_753 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[_753 + 96])] = mem[_753 + 128 len floor32(mem[_753 + 96])]
        mem[64] = (32 * _792) + ceil32(return_data.size) + 128
        require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
        if 0 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]:
            mem[(32 * _792) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _792) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _792) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _792) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _792) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _792) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[96] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[100] = arg3
    mem[132] = 64
    mem[164] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000] = uint32(arg3), 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3dfffffffffffffffffffffffffffffffffffffffffffffffffffffffbc]
    require ext_code.size(sushiRouterAddress)
    staticcall sushiRouterAddress.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args arg3, 64, 0xd06ca61f00000000000000000000000000000000000000000000000000000000, mem[196 len 0xd94c3e000000000000000000000000000000000000000000000000000000000]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _751 = mem[96 len 4], Mask(224, 32, arg3) >> 32
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96] <= 4294967296 and mem[96 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg3) >> 32 + 96]
    _791 = mem[_751 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_751 + 96])] = mem[_751 + 128 len floor32(mem[_751 + 96])]
    mem[64] = (32 * _791) + ceil32(return_data.size) + 128
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[ceil32(return_data.size) + 96]
    _1279 = mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128]
    if mem[96 len 4], Mask(224, 32, arg3) >> 32 <= 0:
        if mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + ceil32(return_data.size) + 128] > 1:
            mem[(32 * _791) + ceil32(return_data.size) + 128] = 1
        else:
            mem[(32 * _791) + ceil32(return_data.size) + 128] = 0
        mem[(32 * _791) + ceil32(return_data.size) + 160] = 64
        mem[(32 * _791) + ceil32(return_data.size) + 192] = mem[96 len 4], Mask(224, 32, arg3) >> 32
        mem[(32 * _791) + ceil32(return_data.size) + 224 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
        return memory
          from (32 * _791) + ceil32(return_data.size) + 128
           len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
    mem[(32 * _791) + ceil32(return_data.size) + 128] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
    mem[(32 * _791) + ceil32(return_data.size) + 132] = arg3
    mem[(32 * _791) + ceil32(return_data.size) + 164] = 64
    mem[(32 * _791) + ceil32(return_data.size) + 196] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _791) + ceil32(return_data.size) + 228 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    require ext_code.size(univ2Router2Address)
    staticcall univ2Router2Address.getAmountsOut(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args mem[(32 * _791) + ceil32(return_data.size) + 132 len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * _791) + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * _791) + (2 * ceil32(return_data.size)) + 128
    require return_data.size >= 32
    _1743 = mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32
    require mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 <= 4294967296
    require mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 32 <= return_data.size
    require mem[(32 * _791) + ceil32(return_data.size) + mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128] <= 4294967296 and mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + (32 * mem[(32 * _791) + ceil32(return_data.size) + mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]) + 32 <= return_data.size
    mem[(32 * _791) + (2 * ceil32(return_data.size)) + 128] = mem[(32 * _791) + ceil32(return_data.size) + mem[(32 * _791) + ceil32(return_data.size) + 128 len 4], Mask(224, 32, arg3) >> 32 + 128]
    _1763 = mem[(32 * _791) + ceil32(return_data.size) + _1743 + 128]
    mem[(32 * _791) + (2 * ceil32(return_data.size)) + 160 len floor32(mem[(32 * _791) + ceil32(return_data.size) + _1743 + 128])] = mem[(32 * _791) + ceil32(return_data.size) + _1743 + 160 len floor32(mem[(32 * _791) + ceil32(return_data.size) + _1743 + 128])]
    mem[64] = (32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 160
    require mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1 < mem[(32 * _791) + (2 * ceil32(return_data.size)) + 128]
    if _1279 > mem[(32 * mem[96 len 4], Mask(224, 32, arg3) >> 32 - 1) + (32 * _791) + (2 * ceil32(return_data.size)) + 160]:
        mem[(32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 160] = 1
    else:
        mem[(32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 160] = 0
    mem[(32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 192] = 64
    mem[(32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 224] = mem[96 len 4], Mask(224, 32, arg3) >> 32
    mem[(32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 256 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)] = mem[128 len floor32(mem[96 len 4], Mask(224, 32, arg3) >> 32)]
    return memory
      from (32 * _1763) + (32 * _791) + (2 * ceil32(return_data.size)) + 160
       len (32 * mem[96 len 4], Mask(224, 32, arg3) >> 32) + 96
}



}
