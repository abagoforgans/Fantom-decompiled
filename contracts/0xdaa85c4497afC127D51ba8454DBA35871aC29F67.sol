contract main {




// =====================  Runtime code  =====================


#
#  - claimRewards(address arg1, address arg2)
#
const EIP712_REVISION = '1', 0

const REVISION = 1


uint256 stor0;
uint8 stor1;
address REWARD_TOKENAddress;
address REWARDS_VAULTAddress;
uint256 sub_390b0ff6;
uint256 sub_445e243a;
address GOVERNANCEAddress;
mapping of uint256 sub_7c7c1942;
mapping of uint256 sub_d9e7135d;
mapping of struct vestingAmount;
uint256 DOMAIN_SEPARATOR;

function GOVERNANCE() payable {
    return GOVERNANCEAddress
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function sub_390b0ff6(?) payable {
    return sub_390b0ff6
}

function sub_445e243a(?) payable {
    return sub_445e243a
}

function sub_7c7c1942(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_7c7c1942[arg1][arg2]
}

function REWARDS_VAULT() payable {
    return REWARDS_VAULTAddress
}

function vestingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return vestingAmount[arg1].field_0, vestingAmount[arg1].field_256
}

function REWARD_TOKEN() payable {
    return REWARD_TOKENAddress
}

function sub_d9e7135d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_d9e7135d[address(arg2)][address(arg1)]
}

function sub_e5d72cb5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_d9e7135d[arg1][arg2]
}

function sub_e8a22a8a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_7c7c1942[address(arg2)][address(arg1)]
}

function _fallback() payable {
    revert
}

function setGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    GOVERNANCEAddress = arg1
}

function setRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    REWARD_TOKENAddress = arg1
}

function sub_8125dd10(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    REWARDS_VAULTAddress = address(arg1)
}

function sub_327d96ec(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    sub_390b0ff6 = arg1
    sub_445e243a = arg2
}

function sub_3dc1674d(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    vestingAmount[address(arg1)].field_0 = arg2
    vestingAmount[address(arg1)].field_256 = arg3
}

function initialize() payable {
    if not stor1:
        if ext_code.size(this.address):
            if 1 <= stor0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not stor1:
            stor1 = 1
            stor0 = 1
            stor1 = 0
}

function sub_497495d2(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (64 * ('cd', 36).length) + 36 <= calldata.size
    if GOVERNANCEAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((64 * idx) + cd[36] + 36)] == address(cd[((64 * idx) + cd[36] + 36)])
        mem[0] = address(cd[((64 * idx) + cd[36] + 36)])
        mem[32] = sha3(address(cd[4]), 57)
        sub_7c7c1942[address(cd[4])][address(cd[((64 * idx) + cd[36] + 36)])] = cd[((64 * idx) + cd[36] + 68)]
        idx = idx + 1
        continue 
}

function sub_37f2c3a0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not sub_7c7c1942[address(arg2)][address(arg1)]:
        if sub_445e243a <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_445e243a
        if not sub_7c7c1942[address(arg2)][address(arg1)]:
            if 0 / sub_445e243a > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -(0 / sub_445e243a)
        require sub_7c7c1942[address(arg2)][address(arg1)]
        if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 / sub_445e243a > sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100) - (0 / sub_445e243a))
    require sub_7c7c1942[address(arg2)][address(arg1)]
    if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256:
        if sub_445e243a <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_445e243a
        if not sub_7c7c1942[address(arg2)][address(arg1)]:
            if 0 / sub_445e243a > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return -(0 / sub_445e243a)
        require sub_7c7c1942[address(arg2)][address(arg1)]
        if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        if 0 / sub_445e243a > sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100) - (0 / sub_445e243a))
    require sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256
    if (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 != block.timestamp - sub_390b0ff6:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if sub_445e243a <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sub_445e243a
    if not sub_7c7c1942[address(arg2)][address(arg1)]:
        if (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return -((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a)
    require sub_7c7c1942[address(arg2)][address(arg1)]
    if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a > sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / 100) - ((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a))
}

function getClaimableReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, block.timestamp, 17, 'block.timestamp: ', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, sub_390b0ff6, 17, 'START_TIME_CLAIM ', 0
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args 0, 0, sub_445e243a, 23, 'VESTING_TIME_INTERVAL: ', 0
    if not sub_7c7c1942[address(arg2)][address(arg1)]:
        if sub_445e243a <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_445e243a
        if not sub_7c7c1942[address(arg2)][address(arg1)]:
            if 0 / sub_445e243a < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d9e7135d[address(arg2)][address(arg1)] > 0 / sub_445e243a:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
        require sub_7c7c1942[address(arg2)][address(arg1)]
        if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a) < sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d9e7135d[address(arg2)][address(arg1)] > (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
    require sub_7c7c1942[address(arg2)][address(arg1)]
    if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256:
        if sub_445e243a <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        require sub_445e243a
        if not sub_7c7c1942[address(arg2)][address(arg1)]:
            if 0 / sub_445e243a < 0:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d9e7135d[address(arg2)][address(arg1)] > 0 / sub_445e243a:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return ((0 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
        require sub_7c7c1942[address(arg2)][address(arg1)]
        if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_0:
            revert with 0, 'SafeMath: multiplication overflow'
        if (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a) < sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d9e7135d[address(arg2)][address(arg1)] > (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a):
            revert with 0, 'SafeMath: subtraction overflow', 0
        return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + (0 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
    require sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256
    if (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256 != block.timestamp - sub_390b0ff6:
        revert with 0, 'SafeMath: multiplication overflow'
    if sub_445e243a <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    require sub_445e243a
    if not sub_7c7c1942[address(arg2)][address(arg1)]:
        if (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a < 0:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d9e7135d[address(arg2)][address(arg1)] > (block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
    require sub_7c7c1942[address(arg2)][address(arg1)]
    if sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / sub_7c7c1942[address(arg2)][address(arg1)] != vestingAmount[address(arg2)].field_0:
        revert with 0, 'SafeMath: multiplication overflow'
    if (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + ((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a) < sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100:
        revert with 0, 'SafeMath: addition overflow'
    if sub_d9e7135d[address(arg2)][address(arg1)] > (sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + ((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a):
        revert with 0, 'SafeMath: subtraction overflow', 0
    return ((sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_0 / 100) + ((block.timestamp * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) - (sub_390b0ff6 * sub_7c7c1942[address(arg2)][address(arg1)] * vestingAmount[address(arg2)].field_256) / 100 / sub_445e243a) - sub_d9e7135d[address(arg2)][address(arg1)])
}



}
