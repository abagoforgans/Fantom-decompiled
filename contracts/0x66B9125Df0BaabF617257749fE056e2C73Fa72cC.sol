contract main {




// =====================  Runtime code  =====================


#
#  - sub_08c36874(?)
#  - claimRewards(uint256 arg1)
#  - sub_18f628d4(?)
#  - sub_1d3ac42c(?)
#  - sub_4f864df4(?)
#  - pendingRewards(address arg1, uint256 arg2)
#  - sub_8cddb015(?)
#  - delegate(uint256 arg1)
#  - sub_a5a470ad(?)
#  - sub_de67f215(?)
#  - sub_ebdf104c(?)
#
const maxLockupDuration = (8760 * 24 * 3600)

const minLockupDuration = (336 * 24 * 3600)

const sub_2265f284(?) = 16 * 10^18

const sub_2709275e(?) = 3 * 10^17

const version = 300

const sub_5e2308d2(?) = 3 * 10^17

const sub_650acd66(?) = 3

const sub_a7786515(?) = 15 * 10^16

const sub_b82b8427(?) = (168 * 24 * 3600)

const sub_c5f530af(?) = 3175000 * 10^18


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
uint256 sub_7cacb1d6;
mapping of struct validator;
mapping of uint256 sub_0135b1db;
array of struct sub_854873e1;
uint256 sub_c7be95de;
uint256 totalStake;
uint256 totalActiveStake;
uint256 sub_5fab23a8;
mapping of struct stor111;
mapping of uint256 sub_a86a056f;
mapping of struct sub_1f270152;
mapping of uint256 sub_5601fe01;
mapping of struct sub_96c7ee46;
mapping of struct sub_b810e411;
uint256 sub_d9a7c1f9;
uint256 totalSupply;
array of struct sub_39b80c00;
uint256 stor120;
uint256 stor121;
mapping of uint256 sub_c65ee0e1;
address sub_0e559d82Address;

function sub_0135b1db(?) {
    require calldata.size - 4 >= 32
    return sub_0135b1db[arg1]
}

function sub_0e559d82(?) {
    return sub_0e559d82Address
}

function totalSupply() {
    return totalSupply
}

function sub_1f270152(?) {
    require calldata.size - 4 >= 96
    return sub_1f270152[arg1][arg2][arg3].field_0, 
           sub_1f270152[arg1][arg2][arg3].field_256,
           sub_1f270152[arg1][arg2][arg3].field_512
}

function totalActiveStake() {
    return totalActiveStake
}

function sub_39b80c00(?) {
    require calldata.size - 4 >= 32
    return sub_39b80c00[arg1].field_1792, 
           sub_39b80c00[arg1].field_2048,
           sub_39b80c00[arg1].field_2304,
           sub_39b80c00[arg1].field_2560,
           sub_39b80c00[arg1].field_2816,
           sub_39b80c00[arg1].field_3072,
           sub_39b80c00[arg1].field_3328
}

function sub_5601fe01(?) {
    require calldata.size - 4 >= 32
    return sub_5601fe01[stor104[arg1].field_1536][arg1]
}

function sub_58f95b80(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][arg2].field_0
}

function sub_5fab23a8(?) {
    return sub_5fab23a8
}

function sub_61e53fcc(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][1][arg2].field_0
}

function sub_63321e27(?) {
    require calldata.size - 4 >= 32
    return sub_0135b1db[address(arg1)]
}

function sub_7cacb1d6(?) {
    return sub_7cacb1d6
}

function sub_854873e1(?) {
    return sub_854873e1[arg1][0 len sub_854873e1[arg1].length].field_0
}

function totalStake() {
    return totalStake
}

function owner() {
    return owner
}

function sub_96c7ee46(?) {
    require calldata.size - 4 >= 64
    return sub_96c7ee46[arg1][arg2].field_0, 
           sub_96c7ee46[arg1][arg2].field_256,
           sub_96c7ee46[arg1][arg2].field_512,
           sub_96c7ee46[arg1][arg2].field_768
}

function sub_a198d229(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][5][arg2].field_0
}

function sub_a86a056f(?) {
    require calldata.size - 4 >= 64
    return sub_a86a056f[arg1][arg2]
}

function getValidator(uint256 arg1) {
    require calldata.size - 4 >= 32
    return validator[arg1].field_0, 
           validator[arg1].field_256,
           validator[arg1].field_512,
           validator[arg1].field_768,
           validator[arg1].field_1024,
           validator[arg1].field_1280,
           validator[arg1].field_1536
}

function sub_b810e411(?) {
    require calldata.size - 4 >= 64
    return sub_b810e411[arg1][arg2].field_0, sub_b810e411[arg1][arg2].field_256, sub_b810e411[arg1][arg2].field_512
}

function sub_c65ee0e1(?) {
    require calldata.size - 4 >= 32
    return sub_c65ee0e1[arg1]
}

function sub_c7be95de(?) {
    return sub_c7be95de
}

function getStake(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    return sub_5601fe01[arg1][arg2]
}

function sub_d9a7c1f9(?) {
    return sub_d9a7c1f9
}

function sub_dc31e1af(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][3][arg2].field_0
}

function sub_dd099bb6(?) {
    require calldata.size - 4 >= 64
    return sub_96c7ee46[address(arg1)][arg2].field_256, 
           sub_96c7ee46[address(arg1)][arg2].field_512,
           sub_96c7ee46[address(arg1)][arg2].field_768
}

function sub_df00c922(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][2][arg2].field_0
}

function sub_df4f49d4(?) {
    require calldata.size - 4 >= 32
    return sub_96c7ee46[stor104[arg1].field_1536][arg1].field_256, 
           sub_96c7ee46[stor104[arg1].field_1536][arg1].field_512,
           sub_96c7ee46[stor104[arg1].field_1536][arg1].field_768
}

function sub_e261641a(?) {
    require calldata.size - 4 >= 64
    return sub_39b80c00[arg1][4][arg2].field_0
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_2cedb097(?) {
    return stor120, stor121
}

function currentEpoch() {
    return (sub_7cacb1d6 + 1)
}

function sub_3d0317fe(?) {
    return (24 * totalStake / 100)
}

function sub_30fa9929(?) {
    return (totalStake - (24 * totalStake / 100))
}

function sub_c3de580e(?) {
    require calldata.size - 4 >= 32
    return bool(Mask(1, 7, validator[arg1].field_0))
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_a2f6e6bc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0e559d82Address = arg1
}

function sub_223fae09(?) {
    require calldata.size - 4 >= 64
    if sub_5601fe01[address(arg1)][arg2]:
        return 1, 1, 0, 0, sub_5601fe01[address(arg1)][arg2], 1, arg2
    else:
        return 0
}

function sub_8b1a0d11(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor121 = arg2
    stor120 = arg1
    emit 0x702756a0: arg1, arg2
}

function sub_cfd5fa0c(?) {
    require calldata.size - 4 >= 64
    if not sub_96c7ee46[address(arg1)][arg2].field_512:
        return bool(sub_96c7ee46[address(arg1)][arg2].field_512)
    return block.timestamp <= sub_96c7ee46[address(arg1)][arg2].field_512
}

function sub_cfdbb7cd(?) {
    require calldata.size - 4 >= 64
    if not sub_96c7ee46[address(arg1)][arg2].field_512:
        return bool(sub_96c7ee46[address(arg1)][arg2].field_512)
    return block.timestamp <= sub_96c7ee46[address(arg1)][arg2].field_512
}

function sub_2ce1a124(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > validator[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    validator[arg1].field_768 -= arg2
}

function sub_b6d9edd5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 32967977168935185184:
        revert with 0, 'too large reward per second'
    sub_d9a7c1f9 = arg1
    emit 0x8cd9dae1: arg1
}

function sub_7f664d87(?) {
    require calldata.size - 4 >= 32
    if not sub_96c7ee46[stor104[arg1].field_1536][arg1].field_512:
        return bool(sub_96c7ee46[stor104[arg1].field_1536][arg1].field_512)
    return block.timestamp <= sub_96c7ee46[stor104[arg1].field_1536][arg1].field_512
}

function sub_670322f8(?) {
    require calldata.size - 4 >= 64
    if sub_96c7ee46[address(arg1)][arg2].field_512:
        if block.timestamp <= sub_96c7ee46[address(arg1)][arg2].field_512:
            return sub_96c7ee46[address(arg1)][arg2].field_0
        else:
            return 0
    else:
        return 0
}

function sub_6f498663(?) {
    require calldata.size - 4 >= 64
    if stor111[address(arg1)][arg2].field_0 + stor111[address(arg1)][arg2].field_256 < stor111[address(arg1)][arg2].field_256:
        revert with 0, 'SafeMath: addition overflow'
    if stor111[address(arg1)][arg2].field_512 < 0:
        revert with 0, 'SafeMath: addition overflow'
    return (stor111[address(arg1)][arg2].field_512 + stor111[address(arg1)][arg2].field_0 + stor111[address(arg1)][arg2].field_256)
}

function sub_d69e83c6(?) {
    idx = 1
    s = 0
    t = 0
    while idx <= sub_c7be95de:
        mem[0] = idx
        mem[32] = 104
        if validator[idx].field_0:
            idx = idx + 1
            s = s
            t = t + validator[idx].field_768
            continue 
        mem[0] = idx
        mem[32] = 104
        idx = idx + 1
        s = validator[idx].field_768 + s
        t = t + validator[idx].field_768
        continue 
    totalStake = t
    totalActiveStake = s
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

function sub_12622d0e(?) {
    require calldata.size - 4 >= 64
    if not sub_96c7ee46[address(arg1)][arg2].field_512:
        return sub_5601fe01[address(arg1)][arg2]
    if block.timestamp > sub_96c7ee46[address(arg1)][arg2].field_512:
        return sub_5601fe01[address(arg1)][arg2]
    if sub_96c7ee46[address(arg1)][arg2].field_0 > sub_5601fe01[address(arg1)][arg2]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_5601fe01[address(arg1)][arg2] - sub_96c7ee46[address(arg1)][arg2].field_0)
}

function sub_4f7c4efb(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not Mask(1, 7, validator[arg1].field_0):
        revert with 0, 'validator isn't slashed'
    if arg2 > 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x646d757374206265206c657373207468616e206f7220657175616c20746f20312e,
                    mem[197 len 31]
    sub_c65ee0e1[arg1] = arg2
    emit 0x47575f43: arg2, arg1
}

function sub_f532d796(?) {
    require calldata.size - 4 >= 64
    if sub_96c7ee46[address(arg1)][arg2].field_512:
        require block.timestamp > sub_96c7ee46[address(arg1)][arg2].field_512
    require sub_96c7ee46[address(arg1)][arg2].field_0 > sub_5601fe01[address(arg1)][arg2]
    sub_96c7ee46[address(arg1)][arg2].field_0 = 0
    sub_96c7ee46[address(arg1)][arg2].field_256 = 0
    sub_96c7ee46[address(arg1)][arg2].field_512 = 0
    sub_96c7ee46[address(arg1)][arg2].field_768 = 0
    sub_b810e411[address(arg1)][arg2].field_0 = 0
    sub_b810e411[address(arg1)][arg2].field_256 = 0
    sub_b810e411[address(arg1)][arg2].field_512 = 0
}

function sub_b88a37e2(?) {
    require calldata.size - 4 >= 32
    if not sub_39b80c00[arg1].field_1536:
        mem[(32 * sub_39b80c00[arg1].field_1536) + 128] = 32
        mem[(32 * sub_39b80c00[arg1].field_1536) + 160] = sub_39b80c00[arg1].field_1536
        mem[(32 * sub_39b80c00[arg1].field_1536) + 192 len floor32(sub_39b80c00[arg1].field_1536)] = mem[128 len floor32(sub_39b80c00[arg1].field_1536)]
        return memory
          from (32 * sub_39b80c00[arg1].field_1536) + 128
           len (96 * sub_39b80c00[arg1].field_1536) + 64
    mem[128] = sub_39b80c00[arg1][6].field_0
    idx = 128
    s = 0
    while (32 * sub_39b80c00[arg1].field_1536) + 96 > idx:
        mem[idx + 32] = sub_39b80c00[arg1][s + 6].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_39b80c00[arg1].field_1536) + 192 len floor32(sub_39b80c00[arg1].field_1536)] = mem[128 len floor32(sub_39b80c00[arg1].field_1536)]
    return Array(len=sub_39b80c00[arg1].field_1536, data=mem[128 len floor32(sub_39b80c00[arg1].field_1536)], mem[(32 * sub_39b80c00[arg1].field_1536) + floor32(sub_39b80c00[arg1].field_1536) + 192 len (32 * sub_39b80c00[arg1].field_1536) - floor32(sub_39b80c00[arg1].field_1536)]), 
}

function sub_cc8343aa(?) {
    require calldata.size - 4 >= 64
    if not validator[arg1].field_1280:
        revert with 0, 'validator doesn't exist'
    require ext_code.size(stor102)
    if validator[arg1].field_0:
        call stor102.0xa4066fbe with:
             gas gas_remaining wei
            args arg1, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call stor102.0xa4066fbe with:
             gas gas_remaining wei
            args arg1, validator[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if arg2:
            if validator[arg1].field_768:
                mem[196] = sub_854873e1[arg1].field_0
                idx = 196
                s = 0
                while sub_854873e1[arg1].length + 196 > idx + 32:
                    mem[idx + 32] = sub_854873e1[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                require ext_code.size(stor102)
                call stor102.'$*n?' with:
                     gas gas_remaining wei
                    args arg1, Array(len=sub_854873e1[arg1].length, data=mem[196 len sub_854873e1[arg1].length + (floor32(sub_854873e1[arg1].length - 1) + -sub_854873e1[arg1].length + 32 % 32)])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function sub_1e702f83(?) {
    require calldata.size - 4 >= 64
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7363616c6c6572206973206e6f7420746865204e6f64654472697665724175746820636f6e74726163,
                    mem[205 len 23]
    if not arg2:
        revert with 0, 'wrong status'
    if not validator[arg1].field_0:
        if arg2:
            if validator[arg1].field_768 > totalActiveStake:
                revert with 0, 'SafeMath: subtraction overflow'
            totalActiveStake -= validator[arg1].field_768
    if arg2 > validator[arg1].field_0:
        validator[arg1].field_0 = arg2
        if not validator[arg1].field_512:
            validator[arg1].field_512 = sub_7cacb1d6 + 1
            validator[arg1].field_256 = block.timestamp
            emit 0xac4801c3: validator[arg1].field_512, block.timestamp, arg1
        emit 0xcd35267e: arg2, arg1
    if not validator[arg1].field_1280:
        revert with 0, 'validator doesn't exist'
    require ext_code.size(stor102)
    if not validator[arg1].field_0:
        call stor102.0xa4066fbe with:
             gas gas_remaining wei
            args arg1, validator[arg1].field_768
    else:
        call stor102.0xa4066fbe with:
             gas gas_remaining wei
            args arg1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4feb92f3(?) {
    require calldata.size - 4 >= 256
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7363616c6c6572206973206e6f7420746865204e6f64654472697665724175746820636f6e74726163,
                    mem[205 len 23]
    if sub_0135b1db[address(arg1)]:
        revert with 0, 'validator already exists'
    sub_0135b1db[address(arg1)] = arg2
    validator[arg2].field_0 = arg4
    validator[arg2].field_1024 = arg5
    validator[arg2].field_1280 = arg6
    validator[arg2].field_256 = arg8
    validator[arg2].field_512 = arg7
    validator[arg2].field_1536 = arg1
    sub_854873e1[arg2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 128] = arg5
    mem[ceil32(arg3.length) + 160] = arg6
    emit 0x49bca1ed: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32], arg2, arg1
    if arg7:
        mem[ceil32(arg3.length) + 128] = arg7
        mem[ceil32(arg3.length) + 160] = arg8
        emit 0xac4801c3: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32], arg2
    if arg4:
        mem[ceil32(arg3.length) + 128] = arg4
        emit 0xcd35267e: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], arg2
    if arg2 > sub_c7be95de:
        sub_c7be95de = arg2
}

function sub_e08d7e66(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7363616c6c6572206973206e6f7420746865204e6f64654472697665724175746820636f6e74726163,
                    mem[205 len 23]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = sha3(sub_7cacb1d6 + 1, 119)
        sub_39b80c00[stor103 + 1][cd[((32 * idx) + cd[4] + 36)]].field_0 = validator[cd[((32 * idx) + cd[4] + 36)]].field_768
        if validator[cd[((32 * idx) + cd[4] + 36)]].field_768 + sub_39b80c00[stor103 + 1].field_3072 < sub_39b80c00[stor103 + 1].field_3072:
            revert with 0, 'SafeMath: addition overflow'
        sub_39b80c00[stor103 + 1].field_3072 += validator[cd[((32 * idx) + cd[4] + 36)]].field_768
        idx = idx + 1
        continue 
    sub_39b80c00[stor103 + 1].field_1536 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_39b80c00[stor103 + 1].field_1536 > idx:
            sub_39b80c00[stor103 + 1][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            sub_39b80c00[stor103 + 1][s + 6].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_39b80c00[stor103 + 1].field_1536 > idx:
            sub_39b80c00[stor103 + 1][idx + 6].field_0 = 0
            idx = idx + 1
            continue 
}

function stakers(uint256 arg1) {
    require calldata.size - 4 >= 32
    if sub_5601fe01[stor104[arg1].field_1536][arg1] > validator[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if 8 == validator[arg1].field_0:
        return Array(len=validator[arg1].field_1536, data=validator[arg1].field_1536), 
               validator[arg1].field_1024,
               validator[arg1].field_1280,
               validator[arg1].field_512,
               validator[arg1].field_256,
               sub_5601fe01[stor104[arg1].field_1536][arg1],
               1,
               validator[arg1].field_768 - sub_5601fe01[stor104[arg1].field_1536][arg1]
    if 128 == validator[arg1].field_0:
        return 1, 
               validator[arg1].field_1024,
               validator[arg1].field_1280,
               validator[arg1].field_512,
               validator[arg1].field_256,
               sub_5601fe01[stor104[arg1].field_1536][arg1],
               1,
               validator[arg1].field_768 - sub_5601fe01[stor104[arg1].field_1536][arg1],
               validator[arg1].field_1536,
               validator[arg1].field_1536
    if validator[arg1].field_0 != 1:
        return validator[arg1].field_0, 
               validator[arg1].field_1024,
               validator[arg1].field_1280,
               validator[arg1].field_512,
               validator[arg1].field_256,
               sub_5601fe01[stor104[arg1].field_1536][arg1],
               1,
               validator[arg1].field_768 - sub_5601fe01[stor104[arg1].field_1536][arg1],
               validator[arg1].field_1536,
               validator[arg1].field_1536
    return 0, 
           validator[arg1].field_1024,
           validator[arg1].field_1280,
           validator[arg1].field_512,
           validator[arg1].field_256,
           sub_5601fe01[stor104[arg1].field_1536][arg1],
           1,
           validator[arg1].field_768 - sub_5601fe01[stor104[arg1].field_1536][arg1],
           validator[arg1].field_1536,
           validator[arg1].field_1536
}

function initialize(uint256 arg1, uint256 arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        owner = arg4
        emit OwnershipTransferred(0, arg4);
        sub_7cacb1d6 = arg1
        stor102 = arg3
        totalSupply = arg2
        sub_d9a7c1f9 = 6183414351851851852
        stor120 = 1000
        stor121 = 72 * 24 * 3600
        sub_39b80c00[arg1].field_1792 = block.timestamp
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg4
            emit OwnershipTransferred(0, arg4);
            sub_7cacb1d6 = arg1
            stor102 = arg3
            totalSupply = arg2
            sub_d9a7c1f9 = 6183414351851851852
            stor120 = 1000
            stor121 = 72 * 24 * 3600
            sub_39b80c00[arg1].field_1792 = block.timestamp
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg4
                emit OwnershipTransferred(0, arg4);
                sub_7cacb1d6 = arg1
                stor102 = arg3
                totalSupply = arg2
                sub_d9a7c1f9 = 6183414351851851852
                stor120 = 1000
                stor121 = 72 * 24 * 3600
                sub_39b80c00[arg1].field_1792 = block.timestamp
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg4
                emit OwnershipTransferred(0, arg4);
                uint8(stor0.field_8) = 0
                sub_7cacb1d6 = arg1
                stor102 = arg3
                totalSupply = arg2
                sub_d9a7c1f9 = 6183414351851851852
                stor120 = 1000
                stor121 = 72 * 24 * 3600
                sub_39b80c00[arg1].field_1792 = block.timestamp
                uint8(stor0.field_8) = 0
}

function withdraw(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not sub_1f270152[address(msg.sender)][arg1][arg2].field_0:
        revert with 0, 'request doesn't exist'
    if sub_0e559d82Address:
        require ext_code.size(sub_0e559d82Address)
        staticcall sub_0e559d82Address.0x21d585c3 with:
                gas gas_remaining wei
               args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'outstanding sFTM balance'
    if not validator[arg1].field_256:
        if block.timestamp < sub_1f270152[address(msg.sender)][arg1][arg2].field_256 + (168 * 24 * 3600):
            revert with 0, 'not enough time passed'
        if sub_7cacb1d6 + 1 < sub_1f270152[address(msg.sender)][arg1][arg2].field_0 + 3:
            revert with 0, 'not enough epochs passed'
    else:
        if sub_1f270152[address(msg.sender)][arg1][arg2].field_256 <= validator[arg1].field_256:
            if block.timestamp < sub_1f270152[address(msg.sender)][arg1][arg2].field_256 + (168 * 24 * 3600):
                revert with 0, 'not enough time passed'
            if sub_7cacb1d6 + 1 < sub_1f270152[address(msg.sender)][arg1][arg2].field_0 + 3:
                revert with 0, 'not enough epochs passed'
        else:
            if block.timestamp < validator[arg1].field_256 + (168 * 24 * 3600):
                revert with 0, 'not enough time passed'
            if sub_7cacb1d6 + 1 < validator[arg1].field_512 + 3:
                revert with 0, 'not enough epochs passed'
    if not Mask(1, 7, validator[arg1].field_0):
        sub_1f270152[address(msg.sender)][arg1][arg2].field_0 = 0
        sub_1f270152[address(msg.sender)][arg1][arg2].field_256 = 0
        sub_1f270152[address(msg.sender)][arg1][arg2].field_512 = 0
        if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= 0:
            revert with 0, 'stake is fully slashed'
        if 0 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        call msg.sender with:
           value sub_1f270152[address(msg.sender)][arg1][arg2].field_512 wei
             gas 2300 * is_zero(value) wei
    else:
        if sub_c65ee0e1[arg1] >= 10^18:
            sub_1f270152[address(msg.sender)][arg1][arg2].field_0 = 0
            sub_1f270152[address(msg.sender)][arg1][arg2].field_256 = 0
            sub_1f270152[address(msg.sender)][arg1][arg2].field_512 = 0
            if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= 0:
                revert with 0, 'stake is fully slashed'
            if 0 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            call msg.sender with:
               value sub_1f270152[address(msg.sender)][arg1][arg2].field_512 wei
                 gas 2300 * is_zero(value) wei
        else:
            if not sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                sub_1f270152[address(msg.sender)][arg1][arg2].field_0 = 0
                sub_1f270152[address(msg.sender)][arg1][arg2].field_256 = 0
                sub_1f270152[address(msg.sender)][arg1][arg2].field_512 = 0
                if 1 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                    sub_5fab23a8 += sub_1f270152[address(msg.sender)][arg1][arg2].field_512
                    if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                        revert with 0, 'stake is fully slashed'
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_5fab23a8++
                if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= 1:
                    revert with 0, 'stake is fully slashed'
                if 1 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value sub_1f270152[address(msg.sender)][arg1][arg2].field_512 - 1 wei
                     gas 2300 * is_zero(value) wei
            else:
                if (10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / sub_1f270152[address(msg.sender)][arg1][arg2].field_512 != -sub_c65ee0e1[arg1] + 10^18:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if ((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) + 1 < (10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                sub_1f270152[address(msg.sender)][arg1][arg2].field_0 = 0
                sub_1f270152[address(msg.sender)][arg1][arg2].field_256 = 0
                sub_1f270152[address(msg.sender)][arg1][arg2].field_512 = 0
                if ((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) + 1 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                    sub_5fab23a8 += sub_1f270152[address(msg.sender)][arg1][arg2].field_512
                    if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                        revert with 0, 'stake is fully slashed'
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_5fab23a8 = ((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) + sub_5fab23a8 + 1
                if sub_1f270152[address(msg.sender)][arg1][arg2].field_512 <= ((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) + 1:
                    revert with 0, 'stake is fully slashed'
                if ((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) + 1 > sub_1f270152[address(msg.sender)][arg1][arg2].field_512:
                    revert with 0, 'SafeMath: subtraction overflow'
                call msg.sender with:
                   value sub_1f270152[address(msg.sender)][arg1][arg2].field_512 + -((10^18 * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) - (sub_c65ee0e1[arg1] * sub_1f270152[address(msg.sender)][arg1][arg2].field_512) / 10^18) - 1 wei
                     gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdrawn(sub_1f270152[address(msg.sender)][arg1][arg2].field_512, msg.sender, arg1, arg2);
}



}
