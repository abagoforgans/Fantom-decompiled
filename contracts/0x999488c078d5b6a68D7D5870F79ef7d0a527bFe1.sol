contract main {




// =====================  Runtime code  =====================


#
#  - sub_101df8b5(?)
#
const sub_04b62f29(?) = 4101

const sub_0a19dd33(?) = 3843

const sub_0aff90bb(?) = 4096

const sub_1ac919b0(?) = 4098

const sub_20a0a0e9(?) = (24 * 3600)

const sub_2bfcc373(?) = 4102

const sub_372ce3df(?) = 4105

const sub_4846e345(?) = 4107

const sub_64631d9b(?) = 10^18

const sub_67fc176b(?) = 3841

const sub_69d1cb27(?) = 4104

const sub_73a93af6(?) = 4106

const sub_8c7b9980(?) = 4103

const sub_911fc3f1(?) = 4099

const sub_b76361c2(?) = 4100

const sub_bc99d6ae(?) = 2560

const sub_c0464d45(?) = 3600

const sub_c7222c72(?) = 3842

const sub_c7ea4889(?) = 4097

const ERR_NO_ERROR = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 rewardRate;
uint256 sub_3ce9b316;
uint256 sub_6e718e04;
uint256 sub_544bb473;
mapping of uint256 sub_653a8da1;
mapping of struct sub_f2392c8d;
address addressProvider;
uint256 sub_a664150a;
uint256 rewardPerSecond;

function addressProvider() payable {
    return addressProvider
}

function sub_3ce9b316(?) payable {
    return sub_3ce9b316
}

function sub_544bb473(?) payable {
    return sub_544bb473
}

function sub_653a8da1(?) payable {
    require calldata.size - 4 >= 32
    return sub_653a8da1[arg1]
}

function sub_6e718e04(?) payable {
    return sub_6e718e04
}

function rewardRate() payable {
    return rewardRate
}

function owner() payable {
    return owner
}

function rewardPerSecond() payable {
    return rewardPerSecond
}

function sub_a664150a(?) payable {
    return sub_a664150a
}

function sub_f2392c8d(?) payable {
    require calldata.size - 4 >= 32
    return sub_f2392c8d[arg1].field_0
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function sub_db16e0b5(?) payable {
    if block.timestamp < sub_3ce9b316:
        return block.timestamp
    return sub_3ce9b316
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function rewardTokenAddress() payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x69940d79 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
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

function sub_a83e53ac(?) payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_6aee9c13(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x44969711 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_da0a0432(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x44969711 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xda0a0432 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function principalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            owner = arg1
            emit OwnershipTransferred(0, arg1);
            uint8(stor0.field_8) = 0
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        addressProvider = arg2
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            addressProvider = arg2
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            addressProvider = arg2
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function sub_c759df4e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x69940d79 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'SafeERC20: call to non-contract'
    if not ext_code.hash(address(ext_call.return_data[0])):
        revert with 0, 'SafeERC20: call to non-contract'
    mem[196 len 64] = transfer(address rg1, uint256 rg2), address(arg1) << 64, 0, ext_call.return_data[0 len 28]
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
        if not transfer(address rg1, uint256 rg2), address(arg1) << 64:
            revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                            0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 307 len 22]
}

function rewardPerToken() payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_544bb473
    if block.timestamp < sub_3ce9b316:
        if sub_6e718e04 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_6e718e04:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + sub_544bb473)
        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + sub_544bb473)
        if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        return (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473)
    if sub_6e718e04 > sub_3ce9b316:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_3ce9b316 - sub_6e718e04:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + sub_544bb473)
    if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + sub_544bb473)
    if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473)
}

function sub_64dd213f(?) payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if block.timestamp < sub_3ce9b316:
            if sub_6e718e04 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
        else:
            if sub_6e718e04 > sub_3ce9b316:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3ce9b316 - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
    if block.timestamp < sub_3ce9b316:
        sub_6e718e04 = block.timestamp
    else:
        sub_6e718e04 = sub_3ce9b316
}

function sub_185463a4(?) payable {
    if sub_a664150a + 3600 < sub_a664150a:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < sub_a664150a + 3600:
        return 3841
    if 0 == sub_a664150a:
        sub_a664150a = block.timestamp
    else:
        if sub_a664150a > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_a664150a:
            return 3842
        if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / block.timestamp - sub_a664150a != rewardPerSecond:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond):
            return 3842
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x69940d79 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) > ext_call.return_data[0]:
            return 3843
        sub_a664150a = block.timestamp
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp >= sub_3ce9b316:
                sub_6e718e04 = sub_3ce9b316
                rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                if block.timestamp + (24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3ce9b316 = block.timestamp + (24 * 3600)
                sub_6e718e04 = block.timestamp
                emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
            else:
                sub_6e718e04 = block.timestamp
                if block.timestamp > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - block.timestamp:
                    rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                else:
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
        else:
            if block.timestamp < sub_3ce9b316:
                if sub_6e718e04 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - sub_6e718e04:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += 0 / ext_call.return_data[0]
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
            else:
                if sub_6e718e04 > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - sub_6e718e04:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += 0 / ext_call.return_data[0]
                    else:
                        if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
            if block.timestamp >= sub_3ce9b316:
                sub_6e718e04 = sub_3ce9b316
                rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                if block.timestamp + (24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3ce9b316 = block.timestamp + (24 * 3600)
                sub_6e718e04 = block.timestamp
                emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
            else:
                sub_6e718e04 = block.timestamp
                if block.timestamp > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - block.timestamp:
                    rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                else:
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
    return 0
}

function sub_9b7ea007(?) payable {
    if sub_a664150a + 3600 < sub_a664150a:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp < sub_a664150a + 3600:
        revert with 0, 'too early for a rewards push'
    if 0 == sub_a664150a:
        sub_a664150a = block.timestamp
    else:
        if sub_a664150a > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_a664150a:
            revert with 0, 'no rewards unlocked'
        if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / block.timestamp - sub_a664150a != rewardPerSecond:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond):
            revert with 0, 'no rewards unlocked'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x69940d79 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) > ext_call.return_data[0]:
            revert with 0, 'rewards depleted'
        sub_a664150a = block.timestamp
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if block.timestamp >= sub_3ce9b316:
                sub_6e718e04 = sub_3ce9b316
                rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                if block.timestamp + (24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3ce9b316 = block.timestamp + (24 * 3600)
                sub_6e718e04 = block.timestamp
                emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
            else:
                sub_6e718e04 = block.timestamp
                if block.timestamp > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - block.timestamp:
                    rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                else:
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
        else:
            if block.timestamp < sub_3ce9b316:
                if sub_6e718e04 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not block.timestamp - sub_6e718e04:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += 0 / ext_call.return_data[0]
                    else:
                        if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
            else:
                if sub_6e718e04 > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - sub_6e718e04:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += 0 / ext_call.return_data[0]
                    else:
                        if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
            if block.timestamp >= sub_3ce9b316:
                sub_6e718e04 = sub_3ce9b316
                rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                if block.timestamp + (24 * 3600) < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                sub_3ce9b316 = block.timestamp + (24 * 3600)
                sub_6e718e04 = block.timestamp
                emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
            else:
                sub_6e718e04 = block.timestamp
                if block.timestamp > sub_3ce9b316:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_3ce9b316 - block.timestamp:
                    rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                else:
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                    if block.timestamp + (24 * 3600) < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_3ce9b316 = block.timestamp + (24 * 3600)
                    sub_6e718e04 = block.timestamp
                    emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
}

function sub_ef24d9a1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= 0:
        revert with 0, 'invalid reward rate'
    if 0 == sub_a664150a:
        sub_a664150a = block.timestamp
    else:
        if sub_a664150a > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if block.timestamp - sub_a664150a:
            if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / block.timestamp - sub_a664150a != rewardPerSecond:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond):
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) > ext_call.return_data[0]:
                    revert with 0, 'balance too low'
                sub_a664150a = block.timestamp
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if block.timestamp >= sub_3ce9b316:
                        sub_6e718e04 = sub_3ce9b316
                        rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_3ce9b316 = block.timestamp + (24 * 3600)
                        sub_6e718e04 = block.timestamp
                        emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                    else:
                        sub_6e718e04 = block.timestamp
                        if block.timestamp > sub_3ce9b316:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_3ce9b316 - block.timestamp:
                            rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_3ce9b316 = block.timestamp + (24 * 3600)
                            sub_6e718e04 = block.timestamp
                            emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                        else:
                            if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_3ce9b316 = block.timestamp + (24 * 3600)
                            sub_6e718e04 = block.timestamp
                            emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                else:
                    if block.timestamp < sub_3ce9b316:
                        if sub_6e718e04 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.timestamp - sub_6e718e04:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_544bb473 += 0 / ext_call.return_data[0]
                        else:
                            if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_544bb473 += 0 / ext_call.return_data[0]
                            else:
                                if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
                    else:
                        if sub_6e718e04 > sub_3ce9b316:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_3ce9b316 - sub_6e718e04:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_544bb473 += 0 / ext_call.return_data[0]
                        else:
                            if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_544bb473 += 0 / ext_call.return_data[0]
                            else:
                                if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: division by zero'
                                if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
                    if block.timestamp >= sub_3ce9b316:
                        sub_6e718e04 = sub_3ce9b316
                        rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                        if block.timestamp + (24 * 3600) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_3ce9b316 = block.timestamp + (24 * 3600)
                        sub_6e718e04 = block.timestamp
                        emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                    else:
                        sub_6e718e04 = block.timestamp
                        if block.timestamp > sub_3ce9b316:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_3ce9b316 - block.timestamp:
                            rewardRate = (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_3ce9b316 = block.timestamp + (24 * 3600)
                            sub_6e718e04 = block.timestamp
                            emit RewardAdded(((block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
                        else:
                            if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) / sub_3ce9b316 - block.timestamp != rewardRate:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            rewardRate = (sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond) / 24 * 3600
                            if block.timestamp + (24 * 3600) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_3ce9b316 = block.timestamp + (24 * 3600)
                            sub_6e718e04 = block.timestamp
                            emit RewardAdded(((sub_3ce9b316 * rewardRate) - (block.timestamp * rewardRate) + (block.timestamp * rewardPerSecond) - (sub_a664150a * rewardPerSecond)));
    rewardPerSecond = arg1
    emit RateUpdated(arg1);
}

function rewardEarned(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x44969711 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return sub_f2392c8d[address(arg1)].field_0
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_653a8da1[address(arg1)] > sub_544bb473:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_f2392c8d[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_f2392c8d[address(arg1)].field_0
        if (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_544bb473 - sub_653a8da1[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_f2392c8d[address(arg1)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f2392c8d[address(arg1)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
    if block.timestamp < sub_3ce9b316:
        if sub_6e718e04 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - sub_6e718e04:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                revert with 0, 'SafeMath: addition overflow'
            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_f2392c8d[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_f2392c8d[address(arg1)].field_0
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                revert with 0, 'SafeMath: addition overflow'
            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_f2392c8d[address(arg1)].field_0 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_f2392c8d[address(arg1)].field_0
            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
        if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        if sub_653a8da1[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_f2392c8d[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_f2392c8d[address(arg1)].field_0
        if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f2392c8d[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
    if sub_6e718e04 > sub_3ce9b316:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_3ce9b316 - sub_6e718e04:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_f2392c8d[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_f2392c8d[address(arg1)].field_0
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
    if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
            revert with 0, 'SafeMath: addition overflow'
        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x3ec357f with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if sub_f2392c8d[address(arg1)].field_0 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return sub_f2392c8d[address(arg1)].field_0
        if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
    if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
        revert with 0, 'SafeMath: addition overflow'
    if sub_653a8da1[address(arg1)] > ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x912c2673 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if sub_f2392c8d[address(arg1)].field_0 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return sub_f2392c8d[address(arg1)].field_0
    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_f2392c8d[address(arg1)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18))
}

function rewardUpdate(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_3ce9b316:
            sub_6e718e04 = block.timestamp
        else:
            sub_6e718e04 = sub_3ce9b316
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x44969711 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_653a8da1[address(arg1)] > sub_544bb473:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if sub_f2392c8d[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_544bb473 - sub_653a8da1[address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_f2392c8d[address(arg1)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f2392c8d[address(arg1)].field_0 += (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
            else:
                if block.timestamp < sub_3ce9b316:
                    if sub_6e718e04 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                else:
                    if sub_6e718e04 > sub_3ce9b316:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3ce9b316 - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
    else:
        if block.timestamp < sub_3ce9b316:
            if sub_6e718e04 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
        else:
            if sub_6e718e04 > sub_3ce9b316:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3ce9b316 - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
        if block.timestamp < sub_3ce9b316:
            sub_6e718e04 = block.timestamp
        else:
            sub_6e718e04 = sub_3ce9b316
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x44969711 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_653a8da1[address(arg1)] > sub_544bb473:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if sub_f2392c8d[address(arg1)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_544bb473 - sub_653a8da1[address(arg1)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if sub_f2392c8d[address(arg1)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f2392c8d[address(arg1)].field_0 += (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
            else:
                if block.timestamp < sub_3ce9b316:
                    if sub_6e718e04 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                else:
                    if sub_6e718e04 > sub_3ce9b316:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3ce9b316 - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(arg1)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(arg1)] > ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(arg1)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(arg1)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(arg1)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18) < ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(arg1)].field_0 += ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(arg1)] * ext_call.return_data[0]) / 10^18
    sub_653a8da1[address(arg1)] = sub_544bb473
}

function rewardClaim() payable {
    require ext_code.size(addressProvider)
    staticcall addressProvider.0x3ec357f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp < sub_3ce9b316:
            sub_6e718e04 = block.timestamp
        else:
            sub_6e718e04 = sub_3ce9b316
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x44969711 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_653a8da1[address(msg.sender)] = sub_544bb473
            if not sub_f2392c8d[msg.sender].field_0:
                return 4106
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x44969711 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 4107
            sub_f2392c8d[msg.sender].field_0 = 0
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x69940d79 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args sub_f2392c8d[msg.sender].field_0, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not transfer(address rg1, uint256 rg2), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
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
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
        else:
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_653a8da1[address(msg.sender)] > sub_544bb473:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_f2392c8d[address(msg.sender)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f2392c8d[address(msg.sender)].field_0 += (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                sub_653a8da1[address(msg.sender)] = sub_544bb473
                if not sub_f2392c8d[msg.sender].field_0:
                    return 4106
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x44969711 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 4107
                sub_f2392c8d[msg.sender].field_0 = 0
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args sub_f2392c8d[msg.sender].field_0, mem[388 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[356]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 435 len 22]
            else:
                if block.timestamp < sub_3ce9b316:
                    if sub_6e718e04 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                else:
                    if sub_6e718e04 > sub_3ce9b316:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3ce9b316 - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                sub_653a8da1[address(msg.sender)] = sub_544bb473
                if not sub_f2392c8d[msg.sender].field_0:
                    return 4106
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x44969711 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 4107
                sub_f2392c8d[msg.sender].field_0 = 0
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args sub_f2392c8d[msg.sender].field_0, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
    else:
        if block.timestamp < sub_3ce9b316:
            if sub_6e718e04 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if not block.timestamp - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
        else:
            if sub_6e718e04 > sub_3ce9b316:
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_3ce9b316 - sub_6e718e04:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                    revert with 0, 'SafeMath: addition overflow'
                sub_544bb473 += 0 / ext_call.return_data[0]
            else:
                if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += 0 / ext_call.return_data[0]
                else:
                    if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_544bb473 += (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]
        if block.timestamp < sub_3ce9b316:
            sub_6e718e04 = block.timestamp
        else:
            sub_6e718e04 = sub_3ce9b316
        require ext_code.size(addressProvider)
        staticcall addressProvider.0x44969711 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x6aee9c13 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            sub_653a8da1[address(msg.sender)] = sub_544bb473
            if not sub_f2392c8d[msg.sender].field_0:
                return 4106
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x44969711 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                return 4107
            sub_f2392c8d[msg.sender].field_0 = 0
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x69940d79 with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(address(ext_call.return_data[0])):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[324 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
            call address(ext_call.return_data[0]) with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args sub_f2392c8d[msg.sender].field_0, mem[388 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 0, 'SafeERC20: low-level call failed'
            mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[356]:
                    revert with 0, 
                                32,
                                42,
                                0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 435 len 22]
        else:
            require ext_code.size(addressProvider)
            staticcall addressProvider.0x3ec357f with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x2ddbd13a with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if sub_653a8da1[address(msg.sender)] > sub_544bb473:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x3ec357f with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0x912c2673 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if sub_f2392c8d[address(msg.sender)].field_0 + ((sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f2392c8d[address(msg.sender)].field_0 += (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                sub_653a8da1[address(msg.sender)] = sub_544bb473
                if not sub_f2392c8d[msg.sender].field_0:
                    return 4106
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x44969711 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 4107
                sub_f2392c8d[msg.sender].field_0 = 0
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[452 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args sub_f2392c8d[msg.sender].field_0, mem[516 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[484]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 563 len 22]
            else:
                if block.timestamp < sub_3ce9b316:
                    if sub_6e718e04 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) / block.timestamp - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (block.timestamp * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + (((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += ((10^18 * block.timestamp * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                else:
                    if sub_6e718e04 > sub_3ce9b316:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not sub_3ce9b316 - sub_6e718e04:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                            revert with 0, 'SafeMath: subtraction overflow'
                        require ext_code.size(addressProvider)
                        staticcall addressProvider.0x3ec357f with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(ext_call.return_data[0]))
                        staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        else:
                            if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                    else:
                        if (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) / sub_3ce9b316 - sub_6e718e04 != rewardRate:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate):
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > (0 / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != (0 / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + ((0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += (0 / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                        else:
                            if (10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / (sub_3ce9b316 * rewardRate) - (sub_6e718e04 * rewardRate) != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 < sub_544bb473:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_653a8da1[address(msg.sender)] > ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473:
                                revert with 0, 'SafeMath: subtraction overflow'
                            require ext_code.size(addressProvider)
                            staticcall addressProvider.0x3ec357f with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(address(ext_call.return_data[0]))
                            staticcall address(ext_call.return_data[0]).0x912c2673 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                if sub_f2392c8d[address(msg.sender)].field_0 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            else:
                                if ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / ext_call.return_data[0] != ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0]) + sub_544bb473 - sub_653a8da1[address(msg.sender)]:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                if sub_f2392c8d[address(msg.sender)].field_0 + (((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18) < ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_f2392c8d[address(msg.sender)].field_0 += ((10^18 * sub_3ce9b316 * rewardRate) - (10^18 * sub_6e718e04 * rewardRate) / ext_call.return_data[0] * ext_call.return_data[0]) + (sub_544bb473 * ext_call.return_data[0]) - (sub_653a8da1[address(msg.sender)] * ext_call.return_data[0]) / 10^18
                sub_653a8da1[address(msg.sender)] = sub_544bb473
                if not sub_f2392c8d[msg.sender].field_0:
                    return 4106
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x44969711 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xda0a0432 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    return 4107
                sub_f2392c8d[msg.sender].field_0 = 0
                require ext_code.size(addressProvider)
                staticcall addressProvider.0x69940d79 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                if not ext_code.hash(address(ext_call.return_data[0])):
                    revert with 0, 'SafeERC20: call to non-contract'
                mem[580 len 64] = transfer(address rg1, uint256 rg2), msg.sender, sub_f2392c8d[msg.sender].field_32
                call address(ext_call.return_data[0]) with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args sub_f2392c8d[msg.sender].field_0, mem[644 len 4]
                if not return_data.size:
                    require not ext_call.success
                    revert with 0, 'SafeERC20: low-level call failed'
                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[612]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x645361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 691 len 22]
    emit RewardPaid(sub_f2392c8d[msg.sender].field_0, msg.sender);
    return 0
}



}
