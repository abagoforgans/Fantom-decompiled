contract main {




// =====================  Runtime code  =====================


const DECIMAL_PRECISION = 10^18

const NAME = 'MensaStaking'


address owner;
mapping of uint256 stakes;
uint256 sub_682a2b08;
address sub_0ea195bcAddress;
address troveManagerAddress;
address borrowerOperationsAddress;
address activePoolAddress;
mapping of struct sub_d8e5eb16;
mapping of uint256 sub_bcda4da1;
array of address sub_a6df16d7;

function sub_0ea195bc(?) {
    return sub_0ea195bcAddress
}

function stakes(address arg1) {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function troveManagerAddress() {
    return troveManagerAddress
}

function sub_682a2b08(?) {
    return sub_682a2b08
}

function owner() {
    return owner
}

function sub_a6df16d7(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_a6df16d7.length
    return sub_a6df16d7[arg1]
}

function activePoolAddress() {
    return activePoolAddress
}

function borrowerOperationsAddress() {
    return borrowerOperationsAddress
}

function sub_bcda4da1(?) {
    require calldata.size - 4 >= 64
    return sub_bcda4da1[arg1][arg2]
}

function sub_d8e5eb16(?) {
    require calldata.size - 4 >= 32
    return sub_d8e5eb16[arg1].field_0, sub_d8e5eb16[arg1].field_256, sub_d8e5eb16[arg1].field_512, sub_d8e5eb16[arg1].field_768
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function addAsset(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 64 <= sub_a6df16d7.length:
        revert with 0, 'Too many asset.'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if sub_d8e5eb16[address(arg1)].field_0:
        revert with 0, 'asset add conlicted.'
    require 0 < sub_a6df16d7.length
    if sub_a6df16d7 == arg1:
        revert with 0, 'asset add conlicted.'
    sub_a6df16d7.length++
    sub_a6df16d7[sub_a6df16d7.length] = arg1
    sub_d8e5eb16[address(arg1)].field_0 = sub_a6df16d7.length - 1
}

function sub_f45f0539(?) {
    require calldata.size - 4 >= 32
    if not sub_d8e5eb16[address(arg1)].field_0:
        require 0 < sub_a6df16d7.length
        if sub_a6df16d7 != arg1:
            revert with 0, 'Unknown asset.'
        if not sub_d8e5eb16[address(arg1)].field_0:
            if sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) <= sub_d8e5eb16[address(arg1)].field_256:
                return 0
            if sub_d8e5eb16[address(arg1)].field_256 > sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            return (sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) - sub_d8e5eb16[address(arg1)].field_256)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[address(arg1)].field_256:
        return 0
    if sub_d8e5eb16[address(arg1)].field_256 > sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] - sub_d8e5eb16[address(arg1)].field_256)
}

function sub_f43132b9(?) {
    require calldata.size - 4 >= 32
    if not sub_d8e5eb16[address(arg1)].field_0:
        require 0 < sub_a6df16d7.length
        if sub_a6df16d7 != arg1:
            revert with 0, 'Unknown asset.'
        if not sub_d8e5eb16[address(arg1)].field_0:
            if sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) <= sub_d8e5eb16[address(arg1)].field_256:
                if not sub_682a2b08:
                    if sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    return sub_d8e5eb16[address(arg1)].field_768
                if not sub_682a2b08:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
            if sub_d8e5eb16[address(arg1)].field_256 > sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_682a2b08:
                if sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return sub_d8e5eb16[address(arg1)].field_768
            if not sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) - sub_d8e5eb16[address(arg1)].field_256:
                if not sub_682a2b08:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
            if (10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_d8e5eb16[address(arg1)].field_512 + eth.balance(this.address) - sub_d8e5eb16[address(arg1)].field_256 != 10^18:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_682a2b08:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return (((10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[address(arg1)].field_256:
        if not sub_682a2b08:
            if sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            return sub_d8e5eb16[address(arg1)].field_768
        if not sub_682a2b08:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
    if sub_d8e5eb16[address(arg1)].field_256 > sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_682a2b08:
        if sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return sub_d8e5eb16[address(arg1)].field_768
    if not sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] - sub_d8e5eb16[address(arg1)].field_256:
        if not sub_682a2b08:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
    if (10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_d8e5eb16[address(arg1)].field_512 + ext_call.return_data[0] - sub_d8e5eb16[address(arg1)].field_256 != 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_682a2b08:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768 < sub_d8e5eb16[address(arg1)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    return (((10^18 * sub_d8e5eb16[address(arg1)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg1)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg1)].field_768)
}

function getPendingGain(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not sub_d8e5eb16[address(arg2)].field_0:
        require 0 < sub_a6df16d7.length
        if sub_a6df16d7 != arg2:
            revert with 0, 'Unknown asset.'
        if not sub_d8e5eb16[address(arg2)].field_0:
            if sub_d8e5eb16[address(arg2)].field_512 + eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 'SafeMath: addition overflow'
            if sub_d8e5eb16[address(arg2)].field_512 + eth.balance(this.address) <= sub_d8e5eb16[address(arg2)].field_256:
                if not sub_682a2b08:
                    if sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                        return 0
                    if sub_bcda4da1[address(arg2)][address(arg1)] > sub_d8e5eb16[address(arg2)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not stakes[address(arg1)]:
                        return 0
                    if (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    return ((sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
                if not sub_682a2b08:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                    return 0
                if sub_bcda4da1[address(arg2)][address(arg1)] > (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stakes[address(arg1)]:
                    return 0
                if (0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                return ((0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
            if sub_d8e5eb16[address(arg2)].field_256 > sub_d8e5eb16[address(arg2)].field_512 + eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow'
            if not sub_682a2b08:
                if sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                    return 0
                if sub_bcda4da1[address(arg2)][address(arg1)] > sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stakes[address(arg1)]:
                    return 0
                if (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                return ((sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
            if not sub_d8e5eb16[address(arg2)].field_512 + eth.balance(this.address) - sub_d8e5eb16[address(arg2)].field_256:
                if not sub_682a2b08:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                    return 0
                if sub_bcda4da1[address(arg2)][address(arg1)] > (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not stakes[address(arg1)]:
                    return 0
                if (0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                return ((0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
            if (10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_d8e5eb16[address(arg2)].field_512 + eth.balance(this.address) - sub_d8e5eb16[address(arg2)].field_256 != 10^18:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not sub_682a2b08:
                revert with 0, 'SafeMath: division by zero'
            if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                return 0
            if sub_bcda4da1[address(arg2)][address(arg1)] > ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakes[address(arg1)]:
                return 0
            if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            return (((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_d8e5eb16[address(arg2)].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if sub_d8e5eb16[address(arg2)].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[address(arg2)].field_256:
        if not sub_682a2b08:
            if sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
                return 0
            if sub_bcda4da1[address(arg2)][address(arg1)] > sub_d8e5eb16[address(arg2)].field_768:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stakes[address(arg1)]:
                return 0
            if (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            return ((sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
        if not sub_682a2b08:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
            return 0
        if sub_bcda4da1[address(arg2)][address(arg1)] > (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(arg1)]:
            return 0
        if (0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
    if sub_d8e5eb16[address(arg2)].field_256 > sub_d8e5eb16[address(arg2)].field_512 + ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not sub_682a2b08:
        if sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
            return 0
        if sub_bcda4da1[address(arg2)][address(arg1)] > sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(arg1)]:
            return 0
        if (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        return ((sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
    if not sub_d8e5eb16[address(arg2)].field_512 + ext_call.return_data[0] - sub_d8e5eb16[address(arg2)].field_256:
        if not sub_682a2b08:
            revert with 0, 'SafeMath: division by zero'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
            return 0
        if sub_bcda4da1[address(arg2)][address(arg1)] > (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
            revert with 0, 'SafeMath: subtraction overflow'
        if not stakes[address(arg1)]:
            return 0
        if (0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != (0 / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        return ((0 / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
    if (10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_d8e5eb16[address(arg2)].field_512 + ext_call.return_data[0] - sub_d8e5eb16[address(arg2)].field_256 != 10^18:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not sub_682a2b08:
        revert with 0, 'SafeMath: division by zero'
    if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 < sub_d8e5eb16[address(arg2)].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 <= sub_bcda4da1[address(arg2)][address(arg1)]:
        return 0
    if sub_bcda4da1[address(arg2)][address(arg1)] > ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stakes[address(arg1)]:
        return 0
    if ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / stakes[address(arg1)] != ((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08) + sub_d8e5eb16[address(arg2)].field_768 - sub_bcda4da1[address(arg2)][address(arg1)]:
        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    return (((10^18 * sub_d8e5eb16[address(arg2)].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[address(arg2)].field_256) / sub_682a2b08 * stakes[address(arg1)]) + (sub_d8e5eb16[address(arg2)].field_768 * stakes[address(arg1)]) - (sub_bcda4da1[address(arg2)][address(arg1)] * stakes[address(arg1)]) / 10^18)
}

function stake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xe24d656e73615374616b696e673a20416d6f756e74206d757374206265206e6f6e2d7a6572,
                    mem[201 len 27]
    mem[0] = msg.sender
    mem[32] = 1
    mem[64] = 2144
    mem[96 len 2048] = code.data[6688 len 2048]
    if not stakes[msg.sender]:
        idx = 0
        while idx < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[idx]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[idx])
                staticcall sub_a6df16d7[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[idx]
                mem[32] = 7
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[idx]].field_256:
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    _949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_949] = 30
                    mem[_949 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                        _978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _978 + 68] = mem[idx + _949 + 32]
                            idx = idx + 32
                            continue 
                        mem[_978 + 68] = mem[_978 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _978 + -mem[64] + 100
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            mem[mem[64]] = sub_a6df16d7[idx]
                            mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                            emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                _1190 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1190] = 26
                                mem[_1190 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1190 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1244 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1244] = 26
                                mem[_1244 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1244 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[idx]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[idx]].field_0:
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) > sub_d8e5eb16[stor9[idx]].field_256:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _940 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_940] = 30
                        mem[_940 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address):
                            _962 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _962 + 68] = mem[idx + _940 + 32]
                                idx = idx + 32
                                continue 
                            mem[_962 + 68] = mem[_962 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _962 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                                    _1167 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1167] = 26
                                    mem[_1167 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1167 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1218 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1218] = 26
                                    mem[_1218 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1218 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[idx])
                    staticcall sub_a6df16d7[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[idx]].field_256:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _981 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_981] = 30
                        mem[_981 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                            _1001 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1001 + 68] = mem[idx + _981 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1001 + 68] = mem[_1001 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1001 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                    _1248 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1248] = 26
                                    mem[_1248 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1248 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1319 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1319] = 26
                                    mem[_1319 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _1319 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_a6df16d7.length:
            mem[0] = msg.sender
            mem[32] = sha3(sub_a6df16d7[idx], 8)
            sub_bcda4da1[stor9[idx]][msg.sender] = sub_d8e5eb16[stor9[idx]].field_768
            idx = idx + 1
            continue 
        if arg1 + stakes[msg.sender] < stakes[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        stakes[msg.sender] += arg1
        if arg1 + sub_682a2b08 < sub_682a2b08:
            revert with 0, 'SafeMath: addition overflow'
        sub_682a2b08 += arg1
        emit 0xfe080935: (arg1 + sub_682a2b08)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg1
        require ext_code.size(sub_0ea195bcAddress)
        call sub_0ea195bcAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer from failed.'
        mem[0] = msg.sender
        emit 0x1339df0e: (arg1 + stakes[msg.sender]), msg.sender
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = block.timestamp
        emit Stake(arg1, block.timestamp, msg.sender);
        if stakes[msg.sender]:
            if not mem[96]:
                idx = 1
                s = ext_call.return_data[0]
                while idx < sub_a6df16d7.length:
                    require idx < 64
                    if mem[(32 * idx) + 96] <= 0:
                        idx = idx + 1
                        s = s
                        continue 
                    require idx < sub_a6df16d7.length
                    require idx < 64
                    _2584 = mem[(32 * idx) + 96]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2584
                    require ext_code.size(sub_a6df16d7[idx])
                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2584
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require idx < 64
                    require idx < sub_a6df16d7.length
                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require idx < sub_a6df16d7.length
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                    idx = idx + 1
                    s = ext_call.return_data[0]
                    continue 
                _2511 = mem[192]
                _2512 = mem[224]
                mem[mem[64] + 96] = mem[160]
                emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2511, _2512
            else:
                _2130 = mem[96]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _2130
                emit EtherSent(msg.sender, _2130);
                call msg.sender with:
                   value _2130 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    s = ext_call.return_data[0]
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _2587 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2587
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2587
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _2520 = mem[192]
                    _2521 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2520, _2521
                else:
                    _2159 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2159] = return_data.size
                    mem[_2159 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    s = ext_call.return_data[0]
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _2590 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2590
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2590
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _2529 = mem[192]
                    _2530 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2529, _2530
    else:
        idx = 0
        while idx < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[idx]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[idx])
                staticcall sub_a6df16d7[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[idx]
                mem[32] = 7
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[stor9[idx]].field_256:
                    if not sub_682a2b08:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _1110 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1110] = 30
                            mem[_1110 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                _1148 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1148 + 68] = mem[idx + _1110 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1148 + 68] = mem[_1148 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1148 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _1429 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1429] = 26
                                mem[_1429 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1519 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1519] = 26
                                mem[_1519 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        _1065 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1065] = 26
                        mem[_1065 + 32] = 'SafeMath: division by zero' << 48
                        if not sub_682a2b08:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _1065 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _1520 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1520] = 30
                            mem[_1520 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                _1611 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1611 + 68] = mem[idx + _1520 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1611 + 68] = mem[_1611 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1611 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _1802 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1802] = 26
                                mem[_1802 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1842 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1842] = 26
                                mem[_1842 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                else:
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    _974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_974] = 30
                    mem[_974 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                        _993 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _993 + 68] = mem[idx + _974 + 32]
                            idx = idx + 32
                            continue 
                        mem[_993 + 68] = mem[_993 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _993 + -mem[64] + 100
                    if not sub_682a2b08:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _1262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1262] = 30
                            mem[_1262 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                _1333 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _1333 + 68] = mem[idx + _1262 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1333 + 68] = mem[_1333 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _1333 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _1669 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1669] = 26
                                mem[_1669 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1721 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1721] = 26
                                mem[_1721 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                            _1201 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1201] = 26
                            mem[_1201 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1201 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1722 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1722] = 30
                                mem[_1722 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _1762 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1762 + 68] = mem[idx + _1722 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1762 + 68] = mem[_1762 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1762 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1891 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1891] = 26
                                    mem[_1891 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1906 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1906] = 26
                                    mem[_1906 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _1263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1263] = 26
                            mem[_1263 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1263 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1761 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1761] = 30
                                mem[_1761 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _1803 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1803 + 68] = mem[idx + _1761 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1803 + 68] = mem[_1803 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1803 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1905 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1905] = 26
                                    mem[_1905 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1911 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1911] = 26
                                    mem[_1911 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[idx]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[idx]].field_0:
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) <= sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1086 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1086] = 30
                                mem[_1086 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _1132 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1132 + 68] = mem[idx + _1086 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1132 + 68] = mem[_1132 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1132 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1381 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1381] = 26
                                    mem[_1381 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1490 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1490] = 26
                                    mem[_1490 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _1059 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1059] = 26
                            mem[_1059 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1059 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1491 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1491] = 30
                                mem[_1491 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _1566 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1566 + 68] = mem[idx + _1491 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1566 + 68] = mem[_1566 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1566 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1788 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1788] = 26
                                    mem[_1788 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1832 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1832] = 26
                                    mem[_1832 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_952] = 30
                        mem[_952 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address):
                            _986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _986 + 68] = mem[idx + _952 + 32]
                                idx = idx + 32
                                continue 
                            mem[_986 + 68] = mem[_986 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _986 + -mem[64] + 100
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1237 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1237] = 30
                                mem[_1237 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _1304 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1304 + 68] = mem[idx + _1237 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1304 + 68] = mem[_1304 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1304 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1652 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1652] = 26
                                    mem[_1652 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1702 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1702] = 26
                                    mem[_1702 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                                _1185 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1185] = 26
                                mem[_1185 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1185 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _1703 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1703] = 30
                                    mem[_1703 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _1746 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1746 + 68] = mem[idx + _1703 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1746 + 68] = mem[_1746 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1746 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _1890 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1890] = 26
                                        mem[_1890 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1904 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1904] = 26
                                        mem[_1904 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1238 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1238] = 26
                                mem[_1238 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1238 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _1745 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1745] = 30
                                    mem[_1745 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _1789 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1789 + 68] = mem[idx + _1745 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1789 + 68] = mem[_1789 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1789 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _1903 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1903] = 26
                                        mem[_1903 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1910 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1910] = 26
                                        mem[_1910 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[idx])
                    staticcall sub_a6df16d7[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1153 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1153] = 30
                                mem[_1153 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _1202 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1202 + 68] = mem[idx + _1153 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1202 + 68] = mem[_1202 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1202 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1524 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1524] = 26
                                    mem[_1524 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1614 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1614] = 26
                                    mem[_1614 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _1114 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1114] = 26
                            mem[_1114 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1114 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1615 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1615] = 30
                                mem[_1615 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _1670 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    s = 0
                                    while s < 30:
                                        mem[s + _1670 + 68] = mem[s + _1615 + 32]
                                        s = s + 32
                                        continue 
                                    mem[_1670 + 68] = mem[_1670 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1670 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1845 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1845] = 26
                                    mem[_1845 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1877 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1877] = 26
                                    mem[_1877 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_996] = 30
                        mem[_996 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                            _1041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1041 + 68] = mem[idx + _996 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1041 + 68] = mem[_1041 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1041 + -mem[64] + 100
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _1342 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1342] = 30
                                mem[_1342 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _1435 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _1435 + 68] = mem[idx + _1342 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1435 + 68] = mem[_1435 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _1435 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _1724 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1724] = 26
                                    mem[_1724 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _1766 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1766] = 26
                                    mem[_1766 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                _1270 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1270] = 26
                                mem[_1270 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1270 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _1767 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1767] = 30
                                    mem[_1767 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _1808 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1808 + 68] = mem[idx + _1767 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1808 + 68] = mem[_1808 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1808 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _1907 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1907] = 26
                                        mem[_1907 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1913 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1913] = 26
                                        mem[_1913 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _1343 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1343] = 26
                                mem[_1343 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _1343 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _1807 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1807] = 30
                                    mem[_1807 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _1846 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _1846 + 68] = mem[idx + _1807 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_1846 + 68] = mem[_1846 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _1846 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _1912 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1912] = 26
                                        mem[_1912 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _1914 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1914] = 26
                                        mem[_1914 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
            idx = idx + 1
            continue 
        s = 0
        while s < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[s]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[s])
                staticcall sub_a6df16d7[s].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[s]
                mem[32] = 7
                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[s]].field_256:
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    _2132 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2132] = 30
                    mem[_2132 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]:
                        _2161 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2161 + 68] = mem[idx + _2132 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2161 + 68] = mem[_2161 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2161 + -mem[64] + 100
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                        if not sub_682a2b08:
                            if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                            if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_a6df16d7[s]
                            mem[32] = 7
                            mem[mem[64]] = sub_a6df16d7[s]
                            mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                            emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                        else:
                            if not sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                                _2260 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2260] = 26
                                mem[_2260 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2260 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2293 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2293] = 26
                                mem[_2293 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2293 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[s]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[s]].field_0:
                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) > sub_d8e5eb16[stor9[s]].field_256:
                        mem[0] = sub_a6df16d7[s]
                        mem[32] = 7
                        _2129 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2129] = 30
                        mem[_2129 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address):
                            _2155 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2155 + 68] = mem[idx + _2129 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2155 + 68] = mem[_2155 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2155 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256:
                                    _2253 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2253] = 26
                                    mem[_2253 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2253 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2269 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2269] = 26
                                    mem[_2269 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2269 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                    if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[s])
                    staticcall sub_a6df16d7[s].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[s]].field_256:
                        mem[0] = sub_a6df16d7[s]
                        mem[32] = 7
                        _2164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2164] = 30
                        mem[_2164 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]:
                            _2173 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2173 + 68] = mem[idx + _2164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2173 + 68] = mem[_2173 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2173 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                                    _2297 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2297] = 26
                                    mem[_2297 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2297 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2328 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2328] = 26
                                    mem[_2328 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _2328 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                    if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
            s = s + 1
            continue 
        s = 0
        while s < sub_a6df16d7.length:
            mem[0] = msg.sender
            mem[32] = sha3(sub_a6df16d7[s], 8)
            sub_bcda4da1[stor9[s]][msg.sender] = sub_d8e5eb16[stor9[s]].field_768
            s = s + 1
            continue 
        if arg1 + stakes[msg.sender] < stakes[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        stakes[msg.sender] += arg1
        if arg1 + sub_682a2b08 < sub_682a2b08:
            revert with 0, 'SafeMath: addition overflow'
        sub_682a2b08 += arg1
        emit 0xfe080935: (arg1 + sub_682a2b08)
        mem[mem[64] + 36] = this.address
        mem[mem[64] + 68] = arg1
        require ext_code.size(sub_0ea195bcAddress)
        call sub_0ea195bcAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer from failed.'
        mem[0] = msg.sender
        emit 0x1339df0e: (arg1 + stakes[msg.sender]), msg.sender
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = block.timestamp
        emit Stake(arg1, block.timestamp, msg.sender);
        if stakes[msg.sender]:
            if not mem[96]:
                s = 1
                t = ext_call.return_data[0]
                while s < sub_a6df16d7.length:
                    require s < 64
                    if mem[(32 * s) + 96] <= 0:
                        s = s + 1
                        t = t
                        continue 
                    require s < sub_a6df16d7.length
                    require s < 64
                    _2765 = mem[(32 * s) + 96]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = _2765
                    require ext_code.size(sub_a6df16d7[s])
                    call sub_a6df16d7[s].transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, _2765
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    require s < 64
                    require s < sub_a6df16d7.length
                    if mem[(32 * s) + 96] + sub_d8e5eb16[stor9[s]].field_512 < sub_d8e5eb16[stor9[s]].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require s < sub_a6df16d7.length
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    sub_d8e5eb16[stor9[s]].field_512 += mem[(32 * s) + 96]
                    s = s + 1
                    t = ext_call.return_data[0]
                    continue 
                _2735 = mem[192]
                _2736 = mem[224]
                mem[mem[64] + 96] = mem[160]
                emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2735, _2736
            else:
                _2640 = mem[96]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _2640
                emit EtherSent(msg.sender, _2640);
                call msg.sender with:
                   value _2640 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    s = ext_call.return_data[0]
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _2768 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2768
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2768
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _2744 = mem[192]
                    _2745 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2744, _2745
                else:
                    _2654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_2654] = return_data.size
                    mem[_2654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    s = ext_call.return_data[0]
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] <= 0:
                            idx = idx + 1
                            s = s
                            continue 
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _2771 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _2771
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _2771
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        s = ext_call.return_data[0]
                        continue 
                    _2753 = mem[192]
                    _2754 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _2753, _2754
}

function unstake(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 1
    if stakes[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x6e4d656e73615374616b696e673a2055736572206d75737420686176652061206e6f6e2d7a65726f207374616b,
                    mem[209 len 19]
    mem[64] = 2144
    mem[96 len 2048] = code.data[6688 len 2048]
    if not stakes[msg.sender]:
        idx = 0
        while idx < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[idx]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[idx])
                staticcall sub_a6df16d7[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[idx]
                mem[32] = 7
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[idx]].field_256:
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    _1845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1845] = 30
                    mem[_1845 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                        _1884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1884 + 68] = mem[idx + _1845 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1884 + 68] = mem[_1884 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1884 + -mem[64] + 100
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            mem[mem[64]] = sub_a6df16d7[idx]
                            mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                            emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                _2257 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2257] = 26
                                mem[_2257 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2257 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2347 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2347] = 26
                                mem[_2347 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2347 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[idx]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[idx]].field_0:
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) > sub_d8e5eb16[stor9[idx]].field_256:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _1835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1835] = 30
                        mem[_1835 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address):
                            _1866 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1866 + 68] = mem[idx + _1835 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1866 + 68] = mem[_1866 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1866 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                                    _2214 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2214] = 26
                                    mem[_2214 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2214 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2291 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2291] = 26
                                    mem[_2291 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2291 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address)
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[idx])
                    staticcall sub_a6df16d7[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[idx]].field_256:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _1887 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1887] = 30
                        mem[_1887 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                            _1929 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1929 + 68] = mem[idx + _1887 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1929 + 68] = mem[_1929 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1929 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[idx]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[idx]].field_768
                                emit 0x875df46e: sub_a6df16d7[idx], sub_d8e5eb16[stor9[idx]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                    _2351 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2351] = 26
                                    mem[_2351 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2351 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2471 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2471] = 26
                                    mem[_2471 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _2471 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[idx]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[idx]].field_256 = sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_768 += (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[idx]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
                                    emit 0x875df46e: sub_a6df16d7[idx], ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768
            idx = idx + 1
            continue 
        idx = 0
        while idx < sub_a6df16d7.length:
            mem[0] = msg.sender
            mem[32] = sha3(sub_a6df16d7[idx], 8)
            sub_bcda4da1[stor9[idx]][msg.sender] = sub_d8e5eb16[stor9[idx]].field_768
            idx = idx + 1
            continue 
        if not arg1:
            if not mem[96]:
                idx = 1
                while idx < sub_a6df16d7.length:
                    require idx < 64
                    if mem[(32 * idx) + 96] > 0:
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _5281 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _5281
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _5281
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                    idx = idx + 1
                    continue 
                _5061 = mem[192]
                _5062 = mem[224]
                mem[mem[64] + 96] = mem[160]
                emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5061, _5062
            else:
                _3767 = mem[96]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _3767
                emit EtherSent(msg.sender, _3767);
                call msg.sender with:
                   value _3767 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] > 0:
                            require idx < sub_a6df16d7.length
                            require idx < 64
                            _5284 = mem[(32 * idx) + 96]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5284
                            require ext_code.size(sub_a6df16d7[idx])
                            call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _5284
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 64
                            require idx < sub_a6df16d7.length
                            if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < sub_a6df16d7.length
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        continue 
                    _5070 = mem[192]
                    _5071 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5070, _5071
                else:
                    _3784 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_3784] = return_data.size
                    mem[_3784 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] > 0:
                            require idx < sub_a6df16d7.length
                            require idx < 64
                            _5287 = mem[(32 * idx) + 96]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5287
                            require ext_code.size(sub_a6df16d7[idx])
                            call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _5287
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 64
                            require idx < sub_a6df16d7.length
                            if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < sub_a6df16d7.length
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        continue 
                    _5079 = mem[192]
                    _5080 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5079, _5080
        else:
            if arg1 < stakes[msg.sender]:
                _3785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3785] = 30
                mem[_3785 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > stakes[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                stakes[msg.sender] -= arg1
                _3850 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3850] = 30
                mem[_3850 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > sub_682a2b08:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_682a2b08 -= arg1
                emit 0xfe080935: (sub_682a2b08 - arg1)
                if not arg1:
                    mem[0] = msg.sender
                    emit 0x1339df0e: (stakes[msg.sender] - arg1), msg.sender
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(arg1, block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _5290 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5290
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _5290
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _5088 = mem[192]
                        _5089 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5088, _5089
                    else:
                        _4010 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _4010
                        emit EtherSent(msg.sender, _4010);
                        call msg.sender with:
                           value _4010 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5293 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5293
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5293
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5097 = mem[192]
                            _5098 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5097, _5098
                        else:
                            _4058 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4058] = return_data.size
                            mem[_4058 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5296 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5296
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5296
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5106 = mem[192]
                            _5107 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5106, _5107
                else:
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_0ea195bcAddress)
                    call sub_0ea195bcAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = msg.sender
                    emit 0x1339df0e: (stakes[msg.sender] - arg1), msg.sender
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(arg1, block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _5299 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5299
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _5299
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _5115 = mem[192]
                        _5116 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5115, _5116
                    else:
                        _4149 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _4149
                        emit EtherSent(msg.sender, _4149);
                        call msg.sender with:
                           value _4149 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5302 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5302
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5302
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5124 = mem[192]
                            _5125 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5124, _5125
                        else:
                            _4215 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4215] = return_data.size
                            mem[_4215 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5305 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5305
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5305
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5133 = mem[192]
                            _5134 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5133, _5134
            else:
                _3803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3803] = 30
                mem[_3803 + 32] = 'SafeMath: subtraction overflow'
                if stakes[msg.sender] > stakes[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                stakes[msg.sender] = 0
                _3879 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3879] = 30
                mem[_3879 + 32] = 'SafeMath: subtraction overflow'
                if stakes[msg.sender] > sub_682a2b08:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_682a2b08 -= stakes[msg.sender]
                emit 0xfe080935: (sub_682a2b08 - stakes[msg.sender])
                if not stakes[msg.sender]:
                    mem[0] = msg.sender
                    emit 0x1339df0e: 0, msg.sender
                    mem[mem[64]] = stakes[msg.sender]
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(stakes[msg.sender], block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _5308 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5308
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _5308
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _5144 = mem[192]
                        _5145 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5144, _5145
                    else:
                        _4065 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _4065
                        emit EtherSent(msg.sender, _4065);
                        call msg.sender with:
                           value _4065 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5311 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5311
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5311
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5153 = mem[192]
                            _5154 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5153, _5154
                        else:
                            _4132 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4132] = return_data.size
                            mem[_4132 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5314 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5314
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5314
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5162 = mem[192]
                            _5163 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5162, _5163
                else:
                    mem[mem[64] + 36] = stakes[msg.sender]
                    require ext_code.size(sub_0ea195bcAddress)
                    call sub_0ea195bcAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = msg.sender
                    emit 0x1339df0e: 0, msg.sender
                    mem[mem[64]] = stakes[msg.sender]
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(stakes[msg.sender], block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _5317 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5317
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _5317
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _5171 = mem[192]
                        _5172 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5171, _5172
                    else:
                        _4219 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _4219
                        emit EtherSent(msg.sender, _4219);
                        call msg.sender with:
                           value _4219 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5320 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5320
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5320
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5180 = mem[192]
                            _5181 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5180, _5181
                        else:
                            _4291 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_4291] = return_data.size
                            mem[_4291 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _5323 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _5323
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _5323
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _5189 = mem[192]
                            _5190 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _5189, _5190
    else:
        idx = 0
        while idx < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[idx]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[idx])
                staticcall sub_a6df16d7[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[idx]
                mem[32] = 7
                if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[stor9[idx]].field_256:
                    if not sub_682a2b08:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _2088 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2088] = 30
                            mem[_2088 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                _2183 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2183 + 68] = mem[idx + _2088 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2183 + 68] = mem[_2183 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2183 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _2622 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2622] = 26
                                mem[_2622 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2760 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2760] = 26
                                mem[_2760 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        _2031 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2031] = 26
                        mem[_2031 + 32] = 'SafeMath: division by zero' << 48
                        if not sub_682a2b08:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2031 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _2761 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2761] = 30
                            mem[_2761 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                _2875 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2875 + 68] = mem[idx + _2761 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2875 + 68] = mem[_2875 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2875 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _3280 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3280] = 26
                                mem[_3280 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3364 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3364] = 26
                                mem[_3364 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                else:
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    _1875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1875] = 30
                    mem[_1875 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                        _1914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1914 + 68] = mem[idx + _1875 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1914 + 68] = mem[_1914 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1914 + -mem[64] + 100
                    if not sub_682a2b08:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                            require idx < 64
                            mem[(32 * idx) + 96] = 0
                        else:
                            _2376 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2376] = 30
                            mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                            if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                _2496 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2496 + 68] = mem[idx + _2376 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2496 + 68] = mem[_2496 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2496 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            if not stakes[address(msg.sender)]:
                                _2985 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2985] = 26
                                mem[_2985 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _3084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3084] = 26
                                mem[_3084 + 32] = 'SafeMath: division by zero' << 48
                                require idx < 64
                                mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                            _2268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2268] = 26
                            mem[_2268 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2268 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _3085 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3085] = 30
                                mem[_3085 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _3181 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3181 + 68] = mem[idx + _3085 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3181 + 68] = mem[_3181 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3181 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _3483 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3483] = 26
                                    mem[_3483 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3526 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3526] = 26
                                    mem[_3526 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _2377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2377] = 26
                            mem[_2377 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2377 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _3180 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3180] = 30
                                mem[_3180 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _3281 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _3281 + 68] = mem[idx + _3180 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3281 + 68] = mem[_3281 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3281 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _3525 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3525] = 26
                                    mem[_3525 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3557 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3557] = 26
                                    mem[_3557 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[idx]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[idx]].field_0:
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) <= sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2068 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2068] = 30
                                mem[_2068 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _2131 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2131 + 68] = mem[idx + _2068 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2131 + 68] = mem[_2131 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2131 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _2566 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2566] = 26
                                    mem[_2566 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2701 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2701] = 26
                                    mem[_2701 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _1998 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1998] = 26
                            mem[_1998 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _1998 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2702 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2702] = 30
                                mem[_2702 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _2832 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2832 + 68] = mem[idx + _2702 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2832 + 68] = mem[_2832 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2832 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _3240 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3240] = 26
                                    mem[_3240 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3326 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3326] = 26
                                    mem[_3326 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _1857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1857] = 30
                        mem[_1857 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address):
                            _1898 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1898 + 68] = mem[idx + _1857 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1898 + 68] = mem[_1898 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1898 + -mem[64] + 100
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2323 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2323] = 30
                                mem[_2323 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _2439 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2439 + 68] = mem[idx + _2323 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2439 + 68] = mem[_2439 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2439 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _2947 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2947] = 26
                                    mem[_2947 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3048] = 26
                                    mem[_3048 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256:
                                _2241 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2241] = 26
                                mem[_2241 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2241 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _3049 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3049] = 30
                                    mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _3139 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3139 + 68] = mem[idx + _3049 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3139 + 68] = mem[_3139 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _3139 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _3470 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3470] = 26
                                        mem[_3470 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3506 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3506] = 26
                                        mem[_3506 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2324 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2324] = 26
                                mem[_2324 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2324 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _3138 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3138] = 30
                                    mem[_3138 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _3241 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3241 + 68] = mem[idx + _3138 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3241 + 68] = mem[_3241 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _3241 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _3505 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3505] = 26
                                        mem[_3505 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3542 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3542] = 26
                                        mem[_3542 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[idx])
                    staticcall sub_a6df16d7[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[idx]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] <= sub_d8e5eb16[stor9[idx]].field_256:
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2188 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2188] = 30
                                mem[_2188 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _2269 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2269 + 68] = mem[idx + _2188 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2269 + 68] = mem[_2269 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2269 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _2765 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2765] = 26
                                    mem[_2765 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _2878 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_2878] = 26
                                    mem[_2878 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            _2092 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2092] = 26
                            mem[_2092 + 32] = 'SafeMath: division by zero' << 48
                            if not sub_682a2b08:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _2092 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2879 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2879] = 30
                                mem[_2879 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                    _2986 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    s = 0
                                    while s < 30:
                                        mem[s + _2986 + 68] = mem[s + _2879 + 32]
                                        s = s + 32
                                        continue 
                                    mem[_2986 + 68] = mem[_2986 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2986 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _3367 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3367] = 26
                                    mem[_3367 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3439 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3439] = 26
                                    mem[_3439 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                    else:
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        _1917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1917] = 30
                        mem[_1917 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[idx]].field_256 > sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0]:
                            _1967 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1967 + 68] = mem[idx + _1917 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1967 + 68] = mem[_1967 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _1967 + -mem[64] + 100
                        if not sub_682a2b08:
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            if sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                require idx < 64
                                mem[(32 * idx) + 96] = 0
                            else:
                                _2505 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2505] = 30
                                mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                                if sub_bcda4da1[stor9[idx]][address(msg.sender)] > sub_d8e5eb16[stor9[idx]].field_768:
                                    _2628 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2628 + 68] = mem[idx + _2505 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2628 + 68] = mem[_2628 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _2628 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 1
                                if not stakes[address(msg.sender)]:
                                    _3087 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3087] = 26
                                    mem[_3087 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    if (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _3185 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3185] = 26
                                    mem[_3185 + 32] = 'SafeMath: division by zero' << 48
                                    require idx < 64
                                    mem[(32 * idx) + 96] = (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                        else:
                            if not sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256:
                                _2384 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2384] = 26
                                mem[_2384 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2384 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _3186 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3186] = 30
                                    mem[_3186 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _3286 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3286 + 68] = mem[idx + _3186 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3286 + 68] = mem[_3286 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _3286 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _3527 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3527] = 26
                                        mem[_3527 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != (0 / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3559 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3559] = 26
                                        mem[_3559 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = (0 / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_d8e5eb16[stor9[idx]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[idx]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _2506 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2506] = 26
                                mem[_2506 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _2506 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 < sub_d8e5eb16[stor9[idx]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 <= sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                    require idx < 64
                                    mem[(32 * idx) + 96] = 0
                                else:
                                    _3285 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_3285] = 30
                                    mem[_3285 + 32] = 'SafeMath: subtraction overflow'
                                    if sub_bcda4da1[stor9[idx]][address(msg.sender)] > ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768:
                                        _3368 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _3368 + 68] = mem[idx + _3285 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_3368 + 68] = mem[_3368 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _3368 + -mem[64] + 100
                                    mem[0] = msg.sender
                                    mem[32] = 1
                                    if not stakes[address(msg.sender)]:
                                        _3558 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3558] = 26
                                        mem[_3558 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = 0
                                    else:
                                        if ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / stakes[address(msg.sender)] != ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[idx]].field_768 - sub_bcda4da1[stor9[idx]][address(msg.sender)]:
                                            revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                        _3580 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_3580] = 26
                                        mem[_3580 + 32] = 'SafeMath: division by zero' << 48
                                        require idx < 64
                                        mem[(32 * idx) + 96] = ((10^18 * sub_d8e5eb16[stor9[idx]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[idx]].field_256) / sub_682a2b08 * stakes[address(msg.sender)]) + (sub_d8e5eb16[stor9[idx]].field_768 * stakes[address(msg.sender)]) - (sub_bcda4da1[stor9[idx]][address(msg.sender)] * stakes[address(msg.sender)]) / 10^18
            idx = idx + 1
            continue 
        s = 0
        while s < sub_a6df16d7.length:
            if sub_d8e5eb16[stor9[s]].field_0:
                mem[mem[64] + 4] = this.address
                require ext_code.size(sub_a6df16d7[s])
                staticcall sub_a6df16d7[s].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                mem[0] = sub_a6df16d7[s]
                mem[32] = 7
                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[s]].field_256:
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    _3913 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3913] = 30
                    mem[_3913 + 32] = 'SafeMath: subtraction overflow'
                    if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]:
                        _3950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3950 + 68] = mem[idx + _3913 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3950 + 68] = mem[_3950 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3950 + -mem[64] + 100
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                        if not sub_682a2b08:
                            if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                            if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = sub_a6df16d7[s]
                            mem[32] = 7
                            mem[mem[64]] = sub_a6df16d7[s]
                            mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                            emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                        else:
                            if not sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                                _4273 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4273] = 26
                                mem[_4273 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4273 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                    revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _4336 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_4336] = 26
                                mem[_4336 + 32] = 'SafeMath: division by zero' << 48
                                if not sub_682a2b08:
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                    idx = 32
                                    while idx < 26:
                                        mem[idx + mem[64] + 68] = mem[idx + _4336 + 32]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
            else:
                require 0 < sub_a6df16d7.length
                if sub_a6df16d7 != sub_a6df16d7[s]:
                    revert with 0, 'Unknown asset.'
                if not sub_d8e5eb16[stor9[s]].field_0:
                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) > sub_d8e5eb16[stor9[s]].field_256:
                        mem[0] = sub_a6df16d7[s]
                        mem[32] = 7
                        _3900 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3900] = 30
                        mem[_3900 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address):
                            _3931 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3931 + 68] = mem[idx + _3900 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3931 + 68] = mem[_3931 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3931 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256:
                                    _4238 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4238] = 26
                                    mem[_4238 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4238 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4304 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4304] = 26
                                    mem[_4304 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4304 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address) < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + eth.balance(this.address)
                                    if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * eth.balance(this.address)) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                else:
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(sub_a6df16d7[s])
                    staticcall sub_a6df16d7[s].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[0] = sub_a6df16d7[s]
                    mem[32] = 7
                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] > sub_d8e5eb16[stor9[s]].field_256:
                        mem[0] = sub_a6df16d7[s]
                        mem[32] = 7
                        _3953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3953] = 30
                        mem[_3953 + 32] = 'SafeMath: subtraction overflow'
                        if sub_d8e5eb16[stor9[s]].field_256 > sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]:
                            _4005 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4005 + 68] = mem[idx + _3953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4005 + 68] = mem[_4005 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4005 + -mem[64] + 100
                        if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                            if not sub_682a2b08:
                                if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                if sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = sub_a6df16d7[s]
                                mem[32] = 7
                                mem[mem[64]] = sub_a6df16d7[s]
                                mem[mem[64] + 32] = sub_d8e5eb16[stor9[s]].field_768
                                emit 0x875df46e: sub_a6df16d7[s], sub_d8e5eb16[stor9[s]].field_768
                            else:
                                if not sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256:
                                    _4340 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4340] = 26
                                    mem[_4340 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        idx = 32
                                        while idx < 26:
                                            mem[idx + mem[64] + 68] = mem[idx + _4340 + 32]
                                            idx = idx + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                    if (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += 0 / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], (0 / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                else:
                                    if (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] - sub_d8e5eb16[stor9[s]].field_256 != 10^18:
                                        revert with 0, 32, 33, 0x6f536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _4419 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_4419] = 26
                                    mem[_4419 + 32] = 'SafeMath: division by zero' << 48
                                    if not sub_682a2b08:
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        mem[mem[64] + 68] = 'SafeMath: division by zero' << 48
                                        s = 32
                                        while s < 26:
                                            mem[s + mem[64] + 68] = mem[s + _4419 + 32]
                                            s = s + 32
                                            continue 
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0] < sub_d8e5eb16[stor9[s]].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_d8e5eb16[stor9[s]].field_256 = sub_d8e5eb16[stor9[s]].field_512 + ext_call.return_data[0]
                                    if ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768 < sub_d8e5eb16[stor9[s]].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = sub_a6df16d7[s]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[s]].field_768 += (10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08
                                    mem[mem[64]] = sub_a6df16d7[s]
                                    mem[mem[64] + 32] = ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
                                    emit 0x875df46e: sub_a6df16d7[s], ((10^18 * sub_d8e5eb16[stor9[s]].field_512) + (10^18 * ext_call.return_data[0]) - (10^18 * sub_d8e5eb16[stor9[s]].field_256) / sub_682a2b08) + sub_d8e5eb16[stor9[s]].field_768
            s = s + 1
            continue 
        idx = 0
        while idx < sub_a6df16d7.length:
            mem[0] = msg.sender
            mem[32] = sha3(sub_a6df16d7[idx], 8)
            sub_bcda4da1[stor9[idx]][msg.sender] = sub_d8e5eb16[stor9[idx]].field_768
            idx = idx + 1
            continue 
        if not arg1:
            if not mem[96]:
                idx = 1
                while idx < sub_a6df16d7.length:
                    require idx < 64
                    if mem[(32 * idx) + 96] > 0:
                        require idx < sub_a6df16d7.length
                        require idx < 64
                        _6180 = mem[(32 * idx) + 96]
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = _6180
                        require ext_code.size(sub_a6df16d7[idx])
                        call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, _6180
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0]
                        require idx < 64
                        require idx < sub_a6df16d7.length
                        if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        require idx < sub_a6df16d7.length
                        mem[0] = sub_a6df16d7[idx]
                        mem[32] = 7
                        sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                    idx = idx + 1
                    continue 
                _6002 = mem[192]
                _6003 = mem[224]
                mem[mem[64] + 96] = mem[160]
                emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6002, _6003
            else:
                _5326 = mem[96]
                mem[mem[64]] = msg.sender
                mem[mem[64] + 32] = _5326
                emit EtherSent(msg.sender, _5326);
                call msg.sender with:
                   value _5326 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] > 0:
                            require idx < sub_a6df16d7.length
                            require idx < 64
                            _6183 = mem[(32 * idx) + 96]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _6183
                            require ext_code.size(sub_a6df16d7[idx])
                            call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _6183
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 64
                            require idx < sub_a6df16d7.length
                            if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < sub_a6df16d7.length
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        continue 
                    _6011 = mem[192]
                    _6012 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6011, _6012
                else:
                    _5355 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_5355] = return_data.size
                    mem[_5355 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    47,
                                    0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                    mem[mem[64] + 115 len 17]
                    require 0 < sub_a6df16d7.length
                    if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    require 0 < sub_a6df16d7.length
                    sub_d8e5eb16[stor9].field_512 += mem[96]
                    idx = 1
                    while idx < sub_a6df16d7.length:
                        require idx < 64
                        if mem[(32 * idx) + 96] > 0:
                            require idx < sub_a6df16d7.length
                            require idx < 64
                            _6186 = mem[(32 * idx) + 96]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _6186
                            require ext_code.size(sub_a6df16d7[idx])
                            call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, _6186
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0]
                            require idx < 64
                            require idx < sub_a6df16d7.length
                            if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require idx < sub_a6df16d7.length
                            mem[0] = sub_a6df16d7[idx]
                            mem[32] = 7
                            sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                        idx = idx + 1
                        continue 
                    _6020 = mem[192]
                    _6021 = mem[224]
                    mem[mem[64] + 96] = mem[160]
                    emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6020, _6021
        else:
            if arg1 < stakes[msg.sender]:
                _5356 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5356] = 30
                mem[_5356 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > stakes[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                stakes[msg.sender] -= arg1
                _5474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5474] = 30
                mem[_5474 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > sub_682a2b08:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_682a2b08 -= arg1
                emit 0xfe080935: (sub_682a2b08 - arg1)
                if not arg1:
                    mem[0] = msg.sender
                    emit 0x1339df0e: (stakes[msg.sender] - arg1), msg.sender
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(arg1, block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _6189 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _6189
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _6189
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _6029 = mem[192]
                        _6030 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6029, _6030
                    else:
                        _5587 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _5587
                        emit EtherSent(msg.sender, _5587);
                        call msg.sender with:
                           value _5587 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6192 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6192
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6192
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6038 = mem[192]
                            _6039 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6038, _6039
                        else:
                            _5612 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5612] = return_data.size
                            mem[_5612 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6195 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6195
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6195
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6047 = mem[192]
                            _6048 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6047, _6048
                else:
                    mem[mem[64] + 36] = arg1
                    require ext_code.size(sub_0ea195bcAddress)
                    call sub_0ea195bcAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = msg.sender
                    emit 0x1339df0e: (stakes[msg.sender] - arg1), msg.sender
                    mem[mem[64]] = arg1
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(arg1, block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _6198 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _6198
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _6198
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _6056 = mem[192]
                        _6057 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6056, _6057
                    else:
                        _5654 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _5654
                        emit EtherSent(msg.sender, _5654);
                        call msg.sender with:
                           value _5654 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6201 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6201
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6201
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6065 = mem[192]
                            _6066 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6065, _6066
                        else:
                            _5683 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5683] = return_data.size
                            mem[_5683 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6204 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6204
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6204
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6074 = mem[192]
                            _6075 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6074, _6075
            else:
                _5380 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5380] = 30
                mem[_5380 + 32] = 'SafeMath: subtraction overflow'
                if stakes[msg.sender] > stakes[msg.sender]:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                stakes[msg.sender] = 0
                _5488 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5488] = 30
                mem[_5488 + 32] = 'SafeMath: subtraction overflow'
                if stakes[msg.sender] > sub_682a2b08:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_682a2b08 -= stakes[msg.sender]
                emit 0xfe080935: (sub_682a2b08 - stakes[msg.sender])
                if not stakes[msg.sender]:
                    mem[0] = msg.sender
                    emit 0x1339df0e: 0, msg.sender
                    mem[mem[64]] = stakes[msg.sender]
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(stakes[msg.sender], block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _6207 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _6207
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _6207
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _6085 = mem[192]
                        _6086 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6085, _6086
                    else:
                        _5619 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _5619
                        emit EtherSent(msg.sender, _5619);
                        call msg.sender with:
                           value _5619 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6210 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6210
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6210
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6094 = mem[192]
                            _6095 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6094, _6095
                        else:
                            _5642 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5642] = return_data.size
                            mem[_5642 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6213 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6213
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6213
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6103 = mem[192]
                            _6104 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6103, _6104
                else:
                    mem[mem[64] + 36] = stakes[msg.sender]
                    require ext_code.size(sub_0ea195bcAddress)
                    call sub_0ea195bcAddress.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stakes[msg.sender]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0]
                    mem[0] = msg.sender
                    emit 0x1339df0e: 0, msg.sender
                    mem[mem[64]] = stakes[msg.sender]
                    mem[mem[64] + 32] = block.timestamp
                    emit UnStake(stakes[msg.sender], block.timestamp, msg.sender);
                    if not mem[96]:
                        idx = 1
                        while idx < sub_a6df16d7.length:
                            require idx < 64
                            if mem[(32 * idx) + 96] > 0:
                                require idx < sub_a6df16d7.length
                                require idx < 64
                                _6216 = mem[(32 * idx) + 96]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _6216
                                require ext_code.size(sub_a6df16d7[idx])
                                call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, _6216
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0]
                                require idx < 64
                                require idx < sub_a6df16d7.length
                                if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                    revert with 0, 'SafeMath: addition overflow'
                                require idx < sub_a6df16d7.length
                                mem[0] = sub_a6df16d7[idx]
                                mem[32] = 7
                                sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                            idx = idx + 1
                            continue 
                        _6112 = mem[192]
                        _6113 = mem[224]
                        mem[mem[64] + 96] = mem[160]
                        emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6112, _6113
                    else:
                        _5687 = mem[96]
                        mem[mem[64]] = msg.sender
                        mem[mem[64] + 32] = _5687
                        emit EtherSent(msg.sender, _5687);
                        call msg.sender with:
                           value _5687 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6219 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6219
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6219
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6121 = mem[192]
                            _6122 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6121, _6122
                        else:
                            _5722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                            mem[_5722] = return_data.size
                            mem[_5722 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            47,
                                            0x44d656e736174616b696e673a204661696c656420746f2073656e6420616363756d756c6174656420455448476169,
                                            mem[mem[64] + 115 len 17]
                            require 0 < sub_a6df16d7.length
                            if mem[96] + sub_d8e5eb16[stor9].field_512 < sub_d8e5eb16[stor9].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            require 0 < sub_a6df16d7.length
                            sub_d8e5eb16[stor9].field_512 += mem[96]
                            idx = 1
                            while idx < sub_a6df16d7.length:
                                require idx < 64
                                if mem[(32 * idx) + 96] > 0:
                                    require idx < sub_a6df16d7.length
                                    require idx < 64
                                    _6222 = mem[(32 * idx) + 96]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _6222
                                    require ext_code.size(sub_a6df16d7[idx])
                                    call sub_a6df16d7[idx].transfer(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, _6222
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0]
                                    require idx < 64
                                    require idx < sub_a6df16d7.length
                                    if mem[(32 * idx) + 96] + sub_d8e5eb16[stor9[idx]].field_512 < sub_d8e5eb16[stor9[idx]].field_512:
                                        revert with 0, 'SafeMath: addition overflow'
                                    require idx < sub_a6df16d7.length
                                    mem[0] = sub_a6df16d7[idx]
                                    mem[32] = 7
                                    sub_d8e5eb16[stor9[idx]].field_512 += mem[(32 * idx) + 96]
                                idx = idx + 1
                                continue 
                            _6130 = mem[192]
                            _6131 = mem[224]
                            mem[mem[64] + 96] = mem[160]
                            emit 0x77abe2fa: msg.sender, mem[96], mem[128], mem[160], _6130, _6131
}



}
