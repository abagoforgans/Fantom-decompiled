contract main {




// =====================  Runtime code  =====================


#
#  - sub_96060e71(?)
#  - sub_b6732f3d(?)
#  - sub_f0f947c8(?)
#  - sub_f99837e6(?)
#
const sub_02985992(?) = 10^18

const sub_1d58179c(?) = 3

const sub_2265f284(?) = 15 * 10^6

const sub_2709275e(?) = 300000

const minStake = 10^18

const sub_3a0af4d4(?) = (4320 * 24 * 3600)

const sub_3fee10a8(?) = (168 * 24 * 3600)

const sub_53a72586(?) = 1577419000

const sub_54d77ed2(?) = 3

const unbondingPeriod = (16800 * 24 * 3600)

const sub_a7786515(?) = 150000

const sub_ab2273c0(?) = 256

const sub_c4b5dd7e(?) = 10^18

const sub_ec6a7f1c(?) = (168 * 24 * 3600)


address owner;
uint256 sub_7cacb1d6;
mapping of struct sub_1e8a6956;
mapping of struct stakers;
mapping of uint256 sub_63321e27;
uint256 sub_81d9dc7a;
uint256 sub_08728f6e;
uint256 sub_3d0317fe;
uint256 sub_4bd202dc;
uint256 sub_30fa9929;
uint256 sub_a70da4d2;
uint256 sub_0a29180c;
mapping of struct sub_bffe3486;
uint256 sub_3f4ef95f;
array of uint256 sub_98ec2de5;

function sub_08728f6e(?) {
    return sub_08728f6e
}

function sub_0a29180c(?) {
    return sub_0a29180c
}

function sub_1e8a6956(?) {
    require calldata.size - 4 >= 32
    return sub_1e8a6956[arg1].field_256, 
           sub_1e8a6956[arg1].field_512,
           sub_1e8a6956[arg1].field_768,
           sub_1e8a6956[arg1].field_1024,
           sub_1e8a6956[arg1].field_1280,
           sub_1e8a6956[arg1].field_1536,
           sub_1e8a6956[arg1].field_1792,
           sub_1e8a6956[arg1].field_2048,
           sub_1e8a6956[arg1].field_2304
}

function sub_30fa9929(?) {
    return sub_30fa9929
}

function sub_3d0317fe(?) {
    return sub_3d0317fe
}

function sub_3f4ef95f(?) {
    return sub_3f4ef95f
}

function sub_4bd202dc(?) {
    return sub_4bd202dc
}

function sub_63321e27(?) {
    require calldata.size - 4 >= 32
    return sub_63321e27[address(arg1)]
}

function sub_7cacb1d6(?) {
    return sub_7cacb1d6
}

function sub_81d9dc7a(?) {
    return sub_81d9dc7a
}

function owner() {
    return owner
}

function sub_98ec2de5(?) {
    return sub_98ec2de5[arg1][0 len sub_98ec2de5[arg1].length]
}

function sub_a70da4d2(?) {
    return sub_a70da4d2
}

function sub_b9029d50(?) {
    require calldata.size - 4 >= 64
    return sub_1e8a6956[arg1][arg2].field_0, 
           sub_1e8a6956[arg1][arg2].field_256,
           sub_1e8a6956[arg1][arg2].field_512,
           sub_1e8a6956[arg1][arg2].field_768
}

function sub_bffe3486(?) {
    require calldata.size - 4 >= 32
    return sub_bffe3486[arg1].field_0, 
           sub_bffe3486[arg1].field_256,
           sub_bffe3486[arg1].field_512,
           sub_bffe3486[arg1].field_768,
           sub_bffe3486[arg1].field_1024,
           sub_bffe3486[arg1].field_1280,
           sub_bffe3486[arg1].field_1536
}

function stakers(uint256 arg1) {
    require calldata.size - 4 >= 32
    return stakers[arg1].field_0, 
           stakers[arg1].field_256,
           stakers[arg1].field_512,
           stakers[arg1].field_768,
           stakers[arg1].field_1024,
           stakers[arg1].field_1280,
           stakers[arg1].field_1536,
           stakers[arg1].field_1792,
           stakers[arg1].field_2048
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function currentEpoch() {
    return (sub_7cacb1d6 + 1)
}

function rewardsAllowed() {
    if sub_3f4ef95f:
        return block.timestamp >= sub_3f4ef95f + (4320 * 24 * 3600)
    else:
        return 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_1b593d8a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x8cd9dae1: arg1
}

function sub_119e351a(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x95ae5488: arg1, arg2
}

function sub_c41b6405(?) {
    if not stakers[stor33[address(msg.sender)]].field_1280:
        revert with 0, 'staker doesn't exist'
    if stakers[stor33[address(msg.sender)]].field_1024:
        revert with 0, 'staker is deactivated'
    stakers[stor33[address(msg.sender)]].field_768 = sub_7cacb1d6 + 1
    stakers[stor33[address(msg.sender)]].field_1024 = block.timestamp
    emit 0x84244546: sub_63321e27[address(msg.sender)]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x6e4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_33a14912(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not sub_63321e27[address(msg.sender)]:
        revert with 0, 'staker doesn't exist'
    if arg1.length > 256:
        revert with 0, 'too big metadata'
    sub_98ec2de5[stor33[address(msg.sender)]][] = Array(len=arg1.length, data=arg1[all])
    emit 0xb7a99a0d: sub_63321e27[address(msg.sender)]
}

function sub_6a1cf400(?) {
    if 1577419000 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if (10^6 * block.timestamp) - 1577419 * 10^9 / 10^6 != block.timestamp - 1577419000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600 <= 10^6:
        return (-((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6)
    else:
        return 0
}

function sub_1c333318(?) {
    if not sub_bffe3486[address(msg.sender)].field_1024:
        revert with 0, 'delegation doesn't exist'
    if sub_bffe3486[address(msg.sender)].field_768:
        revert with 0, 'delegation is deactivated'
    sub_bffe3486[address(msg.sender)].field_512 = sub_7cacb1d6 + 1
    sub_bffe3486[address(msg.sender)].field_768 = block.timestamp
    if stakers[stor41[address(msg.sender)].field_1536].field_1280:
        if sub_bffe3486[address(msg.sender)].field_1024 > stakers[stor41[address(msg.sender)].field_1536].field_1792:
            revert with 0, 'SafeMath: subtraction overflow'
        stakers[stor41[address(msg.sender)].field_1536].field_1792 -= sub_bffe3486[address(msg.sender)].field_1024
    emit 0x5b1eea49: msg.sender, sub_bffe3486[address(msg.sender)].field_1536
}

function increaseStake() payable {
    if msg.value < 10^18:
        revert with 0, 'insufficient amount'
    if not stakers[stor33[address(msg.sender)]].field_1280:
        revert with 0, 'staker doesn't exist'
    if stakers[stor33[address(msg.sender)]].field_1024:
        revert with 0, 'staker is deactivated'
    if stakers[stor33[address(msg.sender)]].field_0:
        revert with 0, 'staker should be active'
    if stakers[stor33[address(msg.sender)]].field_1280 + msg.value < stakers[stor33[address(msg.sender)]].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    stakers[stor33[address(msg.sender)]].field_1280 += msg.value
    if sub_3d0317fe + msg.value < sub_3d0317fe:
        revert with 0, 'SafeMath: addition overflow'
    sub_3d0317fe += msg.value
    emit 0xa1d93e9a: stakers[stor33[address(msg.sender)]].field_1280 + msg.value, msg.value, sub_63321e27[address(msg.sender)]
}

function sub_041d97a3(?) {
    if not sub_1e8a6956[stor30].field_2304:
        return 0
    if sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048 < sub_1e8a6956[stor30].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if not sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048:
        if sub_1e8a6956[stor30].field_2304 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_1e8a6956[stor30].field_2304:
            return (0 / sub_1e8a6956[stor30].field_2304)
    else:
        if sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048:
            if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048 != 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1e8a6956[stor30].field_2304 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_1e8a6956[stor30].field_2304:
                return ((10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_2304)
    revert
}

function sub_cc8c2120(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if sub_63321e27[address(msg.sender)]:
        revert with 0, 'staker already exists'
    if sub_bffe3486[address(msg.sender)].field_1024:
        revert with 0, 'already delegating'
    if msg.value < 10^18:
        revert with 0, 'insufficient amount'
    sub_81d9dc7a++
    sub_63321e27[address(msg.sender)] = sub_81d9dc7a + 1
    stakers[stor34 + 1].field_1280 = msg.value
    stakers[stor34 + 1].field_256 = sub_7cacb1d6 + 1
    stakers[stor34 + 1].field_512 = block.timestamp
    stakers[stor34 + 1].field_2048 = msg.sender
    stakers[stor34 + 1].field_1536 = sub_7cacb1d6
    sub_08728f6e++
    if sub_3d0317fe + msg.value < sub_3d0317fe:
        revert with 0, 'SafeMath: addition overflow'
    sub_3d0317fe += msg.value
    mem[ceil32(arg1.length) + 128] = msg.value
    emit 0x697dfe50: Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], sub_81d9dc7a + 1, msg.sender
    if arg1.length:
        if not sub_63321e27[address(msg.sender)]:
            revert with 0, 'staker doesn't exist'
        if arg1.length > 256:
            revert with 0, 'too big metadata'
        sub_98ec2de5[stor33[address(msg.sender)]][] = Array(len=arg1.length, data=arg1[all])
        emit 0xb7a99a0d: sub_63321e27[address(msg.sender)]
}

function withdrawDelegation() {
    if not sub_bffe3486[address(msg.sender)].field_768:
        revert with 0, 'delegation wasn't deactivated'
    if block.timestamp < sub_bffe3486[address(msg.sender)].field_768 + (168 * 24 * 3600):
        revert with 0, 'not enough time passed'
    if sub_7cacb1d6 + 1 < sub_bffe3486[address(msg.sender)].field_512 + 3:
        revert with 0, 'not enough epochs passed'
    sub_bffe3486[address(msg.sender)].field_0 = 0
    sub_bffe3486[address(msg.sender)].field_256 = 0
    sub_bffe3486[address(msg.sender)].field_512 = 0
    sub_bffe3486[address(msg.sender)].field_768 = 0
    sub_bffe3486[address(msg.sender)].field_1024 = 0
    sub_bffe3486[address(msg.sender)].field_1280 = 0
    sub_bffe3486[address(msg.sender)].field_1536 = 0
    sub_4bd202dc--
    if sub_bffe3486[address(msg.sender)].field_1024 > sub_30fa9929:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_30fa9929 -= sub_bffe3486[address(msg.sender)].field_1024
    if stakers[stor41[address(msg.sender)].field_1536].field_0:
        if sub_a70da4d2 + sub_bffe3486[address(msg.sender)].field_1024 < sub_a70da4d2:
            revert with 0, 'SafeMath: addition overflow'
        sub_a70da4d2 += sub_bffe3486[address(msg.sender)].field_1024
        emit 0x87e86b37: sub_bffe3486[address(msg.sender)].field_1024, msg.sender, sub_bffe3486[address(msg.sender)].field_1536
    else:
        call msg.sender with:
           value sub_bffe3486[address(msg.sender)].field_1024 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_a70da4d2 < sub_a70da4d2:
            revert with 0, 'SafeMath: addition overflow'
        emit 0x87e86b37: 0, msg.sender, sub_bffe3486[address(msg.sender)].field_1536
}

function withdrawStake() {
    if not stakers[stor33[address(msg.sender)]].field_1024:
        revert with 0, 'staker wasn't deactivated'
    if block.timestamp < stakers[stor33[address(msg.sender)]].field_1024 + (168 * 24 * 3600):
        revert with 0, 'not enough time passed'
    if sub_7cacb1d6 + 1 < stakers[stor33[address(msg.sender)]].field_768 + 3:
        revert with 0, 'not enough epochs passed'
    stakers[stor33[address(msg.sender)]].field_0 = 0
    stakers[stor33[address(msg.sender)]].field_256 = 0
    stakers[stor33[address(msg.sender)]].field_512 = 0
    stakers[stor33[address(msg.sender)]].field_768 = 0
    stakers[stor33[address(msg.sender)]].field_1024 = 0
    stakers[stor33[address(msg.sender)]].field_1280 = 0
    stakers[stor33[address(msg.sender)]].field_1536 = 0
    stakers[stor33[address(msg.sender)]].field_1792 = 0
    stakers[stor33[address(msg.sender)]].field_2048 = 0
    sub_98ec2de5[stor33[address(msg.sender)]] = 0
    if 31 < sub_98ec2de5[stor33[address(msg.sender)]].length:
        idx = 0
        while sub_98ec2de5[stor33[address(msg.sender)]].length + 31 / 32 > idx:
            sub_98ec2de5[stor33[address(msg.sender)]][idx] = 0
            idx = idx + 1
            continue 
    sub_63321e27[address(msg.sender)] = 0
    sub_08728f6e--
    if stakers[stor33[address(msg.sender)]].field_1280 > sub_3d0317fe:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_3d0317fe -= stakers[stor33[address(msg.sender)]].field_1280
    if stakers[stor33[address(msg.sender)]].field_0:
        if sub_0a29180c + stakers[stor33[address(msg.sender)]].field_1280 < sub_0a29180c:
            revert with 0, 'SafeMath: addition overflow'
        sub_0a29180c += stakers[stor33[address(msg.sender)]].field_1280
        emit 0x8c654825: stakers[stor33[address(msg.sender)]].field_1280, sub_63321e27[address(msg.sender)]
    else:
        call msg.sender with:
           value stakers[stor33[address(msg.sender)]].field_1280 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_0a29180c < sub_0a29180c:
            revert with 0, 'SafeMath: addition overflow'
        emit 0x8c654825: 0, sub_63321e27[address(msg.sender)]
}

function sub_c312eb07(?) payable {
    require calldata.size - 4 >= 32
    if not stakers[arg1].field_1280:
        revert with 0, 'staker doesn't exist'
    if stakers[arg1].field_0:
        revert with 0, 'staker should be active'
    if stakers[arg1].field_1024:
        revert with 0, 'staker is deactivated'
    if msg.value < 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe696e73756666696369656e7420616d6f756e7420666f722064656c65676174696f,
                    mem[198 len 30]
    if sub_bffe3486[address(msg.sender)].field_1024:
        revert with 0, 'delegation already exists'
    if sub_63321e27[address(msg.sender)]:
        revert with 0, 'already staking'
    if stakers[arg1].field_1792 + msg.value < stakers[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    if not stakers[arg1].field_1280:
        if 0 < stakers[arg1].field_1792 + msg.value:
            revert with 0, 'staker's limit is exceeded'
    else:
        require stakers[arg1].field_1280
        if 15 * 10^6 * stakers[arg1].field_1280 / stakers[arg1].field_1280 != 15 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 15 * 10^6 * stakers[arg1].field_1280 / 10^6 < stakers[arg1].field_1792 + msg.value:
            revert with 0, 'staker's limit is exceeded'
    sub_bffe3486[address(msg.sender)].field_0 = sub_7cacb1d6 + 1
    sub_bffe3486[address(msg.sender)].field_256 = block.timestamp
    sub_bffe3486[address(msg.sender)].field_512 = 0
    sub_bffe3486[address(msg.sender)].field_768 = 0
    sub_bffe3486[address(msg.sender)].field_1024 = msg.value
    sub_bffe3486[address(msg.sender)].field_1280 = sub_7cacb1d6
    sub_bffe3486[address(msg.sender)].field_1536 = arg1
    if stakers[arg1].field_1792 + msg.value < stakers[arg1].field_1792:
        revert with 0, 'SafeMath: addition overflow'
    stakers[arg1].field_1792 += msg.value
    sub_4bd202dc++
    if sub_30fa9929 + msg.value < sub_30fa9929:
        revert with 0, 'SafeMath: addition overflow'
    sub_30fa9929 += msg.value
    emit 0xfd8c857f: msg.value, msg.sender, arg1
}

function sub_39190939(?) {
    if not sub_1e8a6956[stor30].field_2304:
        if 1577419000 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if (10^6 * block.timestamp) - 1577419 * 10^9 / 10^6 != block.timestamp - 1577419000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if (10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600 > 10^6:
            if sub_3f4ef95f:
                revert with 0, 'not updated'
            if sub_3f4ef95f != block.timestamp:
                sub_3f4ef95f = block.timestamp
                emit 0xe1470d87: block.timestamp
        else:
            if 0 < -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                if not sub_3f4ef95f:
                    revert with 0, 'not updated'
                sub_3f4ef95f = 0
                emit 0xe1470d87: 0
            else:
                if not sub_3f4ef95f:
                    if sub_3f4ef95f != block.timestamp:
                        sub_3f4ef95f = block.timestamp
                        emit 0xe1470d87: block.timestamp
                else:
                    if 0 >= -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                        revert with 0, 'not updated'
                    if not sub_3f4ef95f:
                        revert with 0, 'not updated'
                    sub_3f4ef95f = 0
                    emit 0xe1470d87: 0
    else:
        if sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048 < sub_1e8a6956[stor30].field_1792:
            revert with 0, 'SafeMath: addition overflow'
        if not sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048:
            if sub_1e8a6956[stor30].field_2304 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_1e8a6956[stor30].field_2304
            if 1577419000 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if (10^6 * block.timestamp) - 1577419 * 10^9 / 10^6 != block.timestamp - 1577419000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600 <= 10^6:
                if 0 / sub_1e8a6956[stor30].field_2304 < -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                    if not sub_3f4ef95f:
                        revert with 0, 'not updated'
                    sub_3f4ef95f = 0
                    emit 0xe1470d87: 0
                else:
                    if not sub_3f4ef95f:
                        if sub_3f4ef95f != block.timestamp:
                            sub_3f4ef95f = block.timestamp
                            emit 0xe1470d87: block.timestamp
                    else:
                        if 0 / sub_1e8a6956[stor30].field_2304 >= -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                            revert with 0, 'not updated'
                        if not sub_3f4ef95f:
                            revert with 0, 'not updated'
                        sub_3f4ef95f = 0
                        emit 0xe1470d87: 0
            else:
                if 0 / sub_1e8a6956[stor30].field_2304 < 0:
                    if not sub_3f4ef95f:
                        revert with 0, 'not updated'
                    sub_3f4ef95f = 0
                    emit 0xe1470d87: 0
                else:
                    if not sub_3f4ef95f:
                        if sub_3f4ef95f != block.timestamp:
                            sub_3f4ef95f = block.timestamp
                            emit 0xe1470d87: block.timestamp
                    else:
                        if 0 / sub_1e8a6956[stor30].field_2304 >= 0:
                            revert with 0, 'not updated'
                        if not sub_3f4ef95f:
                            revert with 0, 'not updated'
                        sub_3f4ef95f = 0
                        emit 0xe1470d87: 0
        else:
            require sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048
            if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_1792 + sub_1e8a6956[stor30].field_2048 != 10^6:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_1e8a6956[stor30].field_2304 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_1e8a6956[stor30].field_2304
            if 1577419000 > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if (10^6 * block.timestamp) - 1577419 * 10^9 / 10^6 != block.timestamp - 1577419000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600 <= 10^6:
                if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_2304 < -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                    if not sub_3f4ef95f:
                        revert with 0, 'not updated'
                    sub_3f4ef95f = 0
                    emit 0xe1470d87: 0
                else:
                    if not sub_3f4ef95f:
                        if sub_3f4ef95f != block.timestamp:
                            sub_3f4ef95f = block.timestamp
                            emit 0xe1470d87: block.timestamp
                    else:
                        if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_2304 >= -((10^6 * block.timestamp) - 1577419 * 10^9 / 16800 * 24 * 3600) + 10^6:
                            revert with 0, 'not updated'
                        if not sub_3f4ef95f:
                            revert with 0, 'not updated'
                        sub_3f4ef95f = 0
                        emit 0xe1470d87: 0
            else:
                if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_2304 < 0:
                    if not sub_3f4ef95f:
                        revert with 0, 'not updated'
                    sub_3f4ef95f = 0
                    emit 0xe1470d87: 0
                else:
                    if not sub_3f4ef95f:
                        if sub_3f4ef95f != block.timestamp:
                            sub_3f4ef95f = block.timestamp
                            emit 0xe1470d87: block.timestamp
                    else:
                        if (10^6 * sub_1e8a6956[stor30].field_1792) + (10^6 * sub_1e8a6956[stor30].field_2048) / sub_1e8a6956[stor30].field_2304 >= 0:
                            revert with 0, 'not updated'
                        if not sub_3f4ef95f:
                            revert with 0, 'not updated'
                        sub_3f4ef95f = 0
                        emit 0xe1470d87: 0
}

function sub_3594a5d2(?) {
    require calldata.size - 4 >= 64
    if not sub_1e8a6956[arg2][arg1].field_512:
        if not sub_1e8a6956[arg2][arg1].field_768:
            return 0
        if not sub_1e8a6956[arg2].field_768:
            if sub_1e8a6956[arg2].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_1e8a6956[arg2].field_1280
            if not 0 / sub_1e8a6956[arg2].field_1280:
                return 0
            require 0 / sub_1e8a6956[arg2].field_1280
            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6)
        require sub_1e8a6956[arg2].field_768
        if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_1e8a6956[arg2].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1280
        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
            return 0
        require sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280
        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6)
    if not sub_1e8a6956[arg2].field_512:
        if sub_1e8a6956[arg2].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1024
        if not sub_1e8a6956[arg2][arg1].field_768:
            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_1e8a6956[arg2].field_1024)
        if not sub_1e8a6956[arg2].field_768:
            if sub_1e8a6956[arg2].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_1e8a6956[arg2].field_1280
            if not 0 / sub_1e8a6956[arg2].field_1280:
                if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / sub_1e8a6956[arg2].field_1024)
            require 0 / sub_1e8a6956[arg2].field_1280
            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6))
        require sub_1e8a6956[arg2].field_768
        if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_1e8a6956[arg2].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1280
        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_1e8a6956[arg2].field_1024)
        require sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280
        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6))
    require sub_1e8a6956[arg2].field_512
    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 / sub_1e8a6956[arg2].field_512 != sub_1e8a6956[arg2].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536:
        if sub_1e8a6956[arg2].field_1024 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1024
        if not sub_1e8a6956[arg2][arg1].field_768:
            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_1e8a6956[arg2].field_1024)
        if not sub_1e8a6956[arg2].field_768:
            if sub_1e8a6956[arg2].field_1280 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_1e8a6956[arg2].field_1280
            if not 0 / sub_1e8a6956[arg2].field_1280:
                if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                return (0 / sub_1e8a6956[arg2].field_1024)
            require 0 / sub_1e8a6956[arg2].field_1280
            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6))
        require sub_1e8a6956[arg2].field_768
        if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if sub_1e8a6956[arg2].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1280
        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return (0 / sub_1e8a6956[arg2].field_1024)
        require sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280
        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6))
    require sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536
    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 != sub_1e8a6956[arg2][arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if sub_1e8a6956[arg2].field_1024 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_1e8a6956[arg2].field_1024
    if not sub_1e8a6956[arg2][arg1].field_768:
        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024)
    if not sub_1e8a6956[arg2].field_768:
        if sub_1e8a6956[arg2].field_1280 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_1e8a6956[arg2].field_1280
        if not 0 / sub_1e8a6956[arg2].field_1280:
            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024)
        require 0 / sub_1e8a6956[arg2].field_1280
        if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6))
    require sub_1e8a6956[arg2].field_768
    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if sub_1e8a6956[arg2].field_1280 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require sub_1e8a6956[arg2].field_1280
    if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024)
    require sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280
    if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6))
}

function sub_e8957988(?) {
    require calldata.size - 4 >= 96
    if not sub_1e8a6956[arg2][arg1].field_512:
        if not sub_1e8a6956[arg2][arg1].field_768:
            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                return 0
            if not arg3:
                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
            else:
                if arg3:
                    if 850000 * arg3 / arg3 != 850000:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
        else:
            if not sub_1e8a6956[arg2].field_768:
                if sub_1e8a6956[arg2].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1e8a6956[arg2].field_1280:
                    if not 0 / sub_1e8a6956[arg2].field_1280:
                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                            return 0
                        if not arg3:
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if arg3:
                                if 850000 * arg3 / arg3 != 850000:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if 0 / sub_1e8a6956[arg2].field_1280:
                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not arg3:
                                if not 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if 0 / 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if arg3:
                                    if 850000 * arg3 / arg3 != 850000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6 / 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 != 850000 * arg3 / 10^6:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
            else:
                if sub_1e8a6956[arg2].field_768:
                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_1e8a6956[arg2].field_1280 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2].field_1280:
                        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not arg3:
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if arg3:
                                    if 850000 * arg3 / arg3 != 850000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not arg3:
                                    if not 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if 0 / 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if arg3:
                                        if 850000 * arg3 / arg3 != 850000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6 / 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 != 850000 * arg3 / 10^6:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
    else:
        if not sub_1e8a6956[arg2].field_512:
            if sub_1e8a6956[arg2].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_1e8a6956[arg2].field_1024:
                if not sub_1e8a6956[arg2][arg1].field_768:
                    if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                        return 0
                    if not arg3:
                        if not 0 / sub_1e8a6956[arg2].field_1024:
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if 0 / sub_1e8a6956[arg2].field_1024:
                                if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if arg3:
                            if 850000 * arg3 / arg3 != 850000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if 0 / sub_1e8a6956[arg2].field_1024:
                                    if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                else:
                    if not sub_1e8a6956[arg2].field_768:
                        if sub_1e8a6956[arg2].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_1e8a6956[arg2].field_1280:
                            if not 0 / sub_1e8a6956[arg2].field_1280:
                                if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not arg3:
                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                            if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if arg3:
                                        if 850000 * arg3 / arg3 != 850000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                        if not 0 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1024:
                                                if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if 0 / sub_1e8a6956[arg2].field_1280:
                                    if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return 0
                                    if not arg3:
                                        if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if 0 / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if arg3:
                                            if 850000 * arg3 / arg3 != 850000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return ((0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if sub_1e8a6956[arg2].field_768:
                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if sub_1e8a6956[arg2].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2].field_1280:
                                if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                    if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return 0
                                    if not arg3:
                                        if not 0 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1024:
                                                if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if arg3:
                                            if 850000 * arg3 / arg3 != 850000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if 0 / sub_1e8a6956[arg2].field_1024:
                                                    if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return 0
                                        if not arg3:
                                            if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if 0 / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if arg3:
                                                if 850000 * arg3 / arg3 != 850000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return ((0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
        else:
            if sub_1e8a6956[arg2].field_512:
                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 / sub_1e8a6956[arg2].field_512 != sub_1e8a6956[arg2].field_1536:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536:
                    if sub_1e8a6956[arg2].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2].field_1024:
                        if not sub_1e8a6956[arg2][arg1].field_768:
                            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not arg3:
                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                        if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if arg3:
                                    if 850000 * arg3 / arg3 != 850000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                            if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if not sub_1e8a6956[arg2].field_768:
                                if sub_1e8a6956[arg2].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2].field_1280:
                                    if not 0 / sub_1e8a6956[arg2].field_1280:
                                        if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return 0
                                        if not arg3:
                                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if 0 / sub_1e8a6956[arg2].field_1024:
                                                    if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if arg3:
                                                if 850000 * arg3 / arg3 != 850000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                                        if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1280:
                                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not arg3:
                                                if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if 0 / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if arg3:
                                                    if 850000 * arg3 / arg3 != 850000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if sub_1e8a6956[arg2].field_768:
                                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if sub_1e8a6956[arg2].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2].field_1280:
                                        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not arg3:
                                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                                        if 0 / 0 / sub_1e8a6956[arg2].field_1024:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if arg3:
                                                    if 850000 * arg3 / arg3 != 850000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                                            if 0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / 0 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not arg3:
                                                    if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if 0 / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if arg3:
                                                        if 850000 * arg3 / arg3 != 850000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if (0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((0 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                else:
                    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536:
                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 != sub_1e8a6956[arg2][arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_1e8a6956[arg2].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_1e8a6956[arg2].field_1024:
                            if not sub_1e8a6956[arg2][arg1].field_768:
                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not arg3:
                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                            if 0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if arg3:
                                        if 850000 * arg3 / arg3 != 850000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if not sub_1e8a6956[arg2].field_768:
                                    if sub_1e8a6956[arg2].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2].field_1280:
                                        if not 0 / sub_1e8a6956[arg2].field_1280:
                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not arg3:
                                                if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if 0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if arg3:
                                                    if 850000 * arg3 / arg3 != 850000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1280:
                                                if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not arg3:
                                                    if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if 0 / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if arg3:
                                                        if 850000 * arg3 / arg3 != 850000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2].field_768:
                                        if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if sub_1e8a6956[arg2].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2].field_1280:
                                            if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not arg3:
                                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if 0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if arg3:
                                                        if 850000 * arg3 / arg3 != 850000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != 850000 * arg3 / 10^6:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                    if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                    if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return 0
                                                    if not arg3:
                                                        if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if 0 / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if arg3:
                                                            if 850000 * arg3 / arg3 != 850000:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                            else:
                                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                    if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != 850000 * arg3 / 10^6:
                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                        return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * 850000 * arg3 / 10^6) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * 850000 * arg3 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
    revert
}

function sub_f70f53e0(?) {
    require calldata.size - 4 >= 64
    if not sub_1e8a6956[arg2][arg1].field_512:
        if not sub_1e8a6956[arg2][arg1].field_768:
            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                revert with 0, 'SafeMath: addition overflow'
            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                return 0
            if not sub_1e8a6956[arg2][arg1].field_256:
                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
            else:
                if sub_1e8a6956[arg2][arg1].field_256:
                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
        else:
            if not sub_1e8a6956[arg2].field_768:
                if sub_1e8a6956[arg2].field_1280 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if sub_1e8a6956[arg2].field_1280:
                    if not 0 / sub_1e8a6956[arg2].field_1280:
                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                            return 0
                        if not sub_1e8a6956[arg2][arg1].field_256:
                            if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if sub_1e8a6956[arg2][arg1].field_256:
                                if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if 0 / sub_1e8a6956[arg2].field_1280:
                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not sub_1e8a6956[arg2][arg1].field_256:
                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0 / 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 != sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if sub_1e8a6956[arg2][arg1].field_256:
                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return ((sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
            else:
                if sub_1e8a6956[arg2].field_768:
                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if sub_1e8a6956[arg2].field_1280 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2].field_1280:
                        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not sub_1e8a6956[arg2][arg1].field_256:
                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if sub_1e8a6956[arg2][arg1].field_256:
                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not sub_1e8a6956[arg2][arg1].field_256:
                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0 / 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 != sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2][arg1].field_256:
                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6:
                                                if (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
    else:
        if not sub_1e8a6956[arg2].field_512:
            if sub_1e8a6956[arg2].field_1024 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_1e8a6956[arg2].field_1024:
                if not sub_1e8a6956[arg2][arg1].field_768:
                    if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                        return 0
                    if not sub_1e8a6956[arg2][arg1].field_256:
                        if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        if not 0 / sub_1e8a6956[arg2].field_1024:
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if 0 / sub_1e8a6956[arg2].field_1024:
                                if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if sub_1e8a6956[arg2][arg1].field_256:
                            if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if 0 / sub_1e8a6956[arg2].field_1024:
                                    if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                else:
                    if not sub_1e8a6956[arg2].field_768:
                        if sub_1e8a6956[arg2].field_1280 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_1e8a6956[arg2].field_1280:
                            if not 0 / sub_1e8a6956[arg2].field_1280:
                                if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not sub_1e8a6956[arg2][arg1].field_256:
                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                            if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2][arg1].field_256:
                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 0 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1024:
                                                if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if 0 / sub_1e8a6956[arg2].field_1280:
                                    if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return 0
                                    if not sub_1e8a6956[arg2][arg1].field_256:
                                        if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return ((0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if sub_1e8a6956[arg2][arg1].field_256:
                                            if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                    else:
                        if sub_1e8a6956[arg2].field_768:
                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                            if sub_1e8a6956[arg2].field_1280 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if sub_1e8a6956[arg2].field_1280:
                                if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                    if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return 0
                                    if not sub_1e8a6956[arg2][arg1].field_256:
                                        if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not 0 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1024:
                                                if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if sub_1e8a6956[arg2][arg1].field_256:
                                            if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if 0 / sub_1e8a6956[arg2].field_1024:
                                                    if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                        if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return 0
                                        if not sub_1e8a6956[arg2][arg1].field_256:
                                            if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return ((0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2][arg1].field_256:
                                                if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
        else:
            if sub_1e8a6956[arg2].field_512:
                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 / sub_1e8a6956[arg2].field_512 != sub_1e8a6956[arg2].field_1536:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536:
                    if sub_1e8a6956[arg2].field_1024 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if sub_1e8a6956[arg2].field_1024:
                        if not sub_1e8a6956[arg2][arg1].field_768:
                            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                return 0
                            if not sub_1e8a6956[arg2][arg1].field_256:
                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                        if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if sub_1e8a6956[arg2][arg1].field_256:
                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                            if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                        else:
                            if not sub_1e8a6956[arg2].field_768:
                                if sub_1e8a6956[arg2].field_1280 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_1e8a6956[arg2].field_1280:
                                    if not 0 / sub_1e8a6956[arg2].field_1280:
                                        if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return 0
                                        if not sub_1e8a6956[arg2][arg1].field_256:
                                            if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not 0 / sub_1e8a6956[arg2].field_1024:
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if 0 / sub_1e8a6956[arg2].field_1024:
                                                    if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2][arg1].field_256:
                                                if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                                        if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if 0 / sub_1e8a6956[arg2].field_1280:
                                            if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not sub_1e8a6956[arg2][arg1].field_256:
                                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return ((0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if sub_1e8a6956[arg2][arg1].field_256:
                                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if sub_1e8a6956[arg2].field_768:
                                    if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if sub_1e8a6956[arg2].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2].field_1280:
                                        if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                            if 0 / sub_1e8a6956[arg2].field_1024 < 0 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not sub_1e8a6956[arg2][arg1].field_256:
                                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not 0 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if 0 / sub_1e8a6956[arg2].field_1024:
                                                        if 0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if sub_1e8a6956[arg2][arg1].field_256:
                                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not 0 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if 0 / sub_1e8a6956[arg2].field_1024:
                                                            if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / 0 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < 0 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not sub_1e8a6956[arg2][arg1].field_256:
                                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if (0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((0 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if sub_1e8a6956[arg2][arg1].field_256:
                                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if (sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / (0 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * 0 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 0 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                else:
                    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536:
                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 != sub_1e8a6956[arg2][arg1].field_512:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if sub_1e8a6956[arg2].field_1024 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if sub_1e8a6956[arg2].field_1024:
                            if not sub_1e8a6956[arg2][arg1].field_768:
                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                    return 0
                                if not sub_1e8a6956[arg2][arg1].field_256:
                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                    else:
                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2][arg1].field_256:
                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                if (sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                            else:
                                if not sub_1e8a6956[arg2].field_768:
                                    if sub_1e8a6956[arg2].field_1280 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_1e8a6956[arg2].field_1280:
                                        if not 0 / sub_1e8a6956[arg2].field_1280:
                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                return 0
                                            if not sub_1e8a6956[arg2][arg1].field_256:
                                                if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if sub_1e8a6956[arg2][arg1].field_256:
                                                    if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                    if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if (sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                        else:
                                            if 0 / sub_1e8a6956[arg2].field_1280:
                                                if 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 0 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not sub_1e8a6956[arg2][arg1].field_256:
                                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if sub_1e8a6956[arg2][arg1].field_256:
                                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if (sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * 0 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                else:
                                    if sub_1e8a6956[arg2].field_768:
                                        if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_768 != sub_1e8a6956[arg2][arg1].field_768:
                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if sub_1e8a6956[arg2].field_1280 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_1e8a6956[arg2].field_1280:
                                            if not sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                    return 0
                                                if not sub_1e8a6956[arg2][arg1].field_256:
                                                    if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                            return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                else:
                                                    if sub_1e8a6956[arg2][arg1].field_256:
                                                        if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                        if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                                if (sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                            else:
                                                if sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280:
                                                    if 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 != 700000:
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                                    if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) < sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 < sub_1e8a6956[arg2][arg1].field_0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    if not sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                        return 0
                                                    if not sub_1e8a6956[arg2][arg1].field_256:
                                                        if sub_1e8a6956[arg2][arg1].field_0 < sub_1e8a6956[arg2][arg1].field_0:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                        else:
                                                            if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0:
                                                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return ((sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024 * sub_1e8a6956[arg2][arg1].field_0) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6 * sub_1e8a6956[arg2][arg1].field_0) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                    else:
                                                        if sub_1e8a6956[arg2][arg1].field_256:
                                                            if 150000 * sub_1e8a6956[arg2][arg1].field_256 / sub_1e8a6956[arg2][arg1].field_256 != 150000:
                                                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                                            if sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6) < sub_1e8a6956[arg2][arg1].field_0:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            if not (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                    return (0 / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
                                                            else:
                                                                if (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6):
                                                                    if (sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / (sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) != sub_1e8a6956[arg2][arg1].field_0 + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6):
                                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256 <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    if sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256:
                                                                        return ((sub_1e8a6956[arg2][arg1].field_0 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * sub_1e8a6956[arg2].field_512 * sub_1e8a6956[arg2].field_1536 * sub_1e8a6956[arg2][arg1].field_512 / sub_1e8a6956[arg2].field_1024) + (sub_1e8a6956[arg2][arg1].field_0 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) + (150000 * sub_1e8a6956[arg2][arg1].field_256 / 10^6 * 700000 * sub_1e8a6956[arg2].field_768 * sub_1e8a6956[arg2][arg1].field_768 / sub_1e8a6956[arg2].field_1280 / 10^6) / sub_1e8a6956[arg2][arg1].field_0 + sub_1e8a6956[arg2][arg1].field_256)
    revert
}



}
