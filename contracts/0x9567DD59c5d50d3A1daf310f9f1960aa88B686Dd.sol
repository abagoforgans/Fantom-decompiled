contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct sub_8e96ad4f;
mapping of uint8 stor2;
uint256 stor4;
address stor5;

function getRegisteredStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_8e96ad4f(?) payable {
    require calldata.size - 4 >= 32
    return sub_8e96ad4f[address(arg1)].field_256
}

function sub_d9a02331(?) payable {
    require calldata.size - 4 >= 32
    return sub_8e96ad4f[address(arg1)].field_0
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

function revoke(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor2[address(arg1)] = 1
    sub_8e96ad4f[address(arg1)].field_768 = 1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 <= 0:
        revert with 0, 'deposit zero wasabi'
    stor4 += arg1
    require ext_code.size(stor5)
    call stor5.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit RewardDeposit(arg1);
}

function addAddressWithAllocation(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Beneficiary cannot be 0 address.'
    stor2[address(arg1)] = 1
    sub_8e96ad4f[address(arg1)].field_0 = arg2
    sub_8e96ad4f[address(arg1)].field_256 = 0
    sub_8e96ad4f[address(arg1)].field_512 = arg3
    sub_8e96ad4f[address(arg1)].field_768 = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_fdae1ec3(?) payable {
    require calldata.size - 4 >= 32
    if bool(sub_8e96ad4f[address(arg1)].field_768) == 1:
        return 0
    if not stor4:
        if 0 < sub_8e96ad4f[address(arg1)].field_0:
            if sub_8e96ad4f[address(arg1)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -sub_8e96ad4f[address(arg1)].field_256
    else:
        if sub_8e96ad4f[address(arg1)].field_512 * stor4 / stor4 != sub_8e96ad4f[address(arg1)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if sub_8e96ad4f[address(arg1)].field_512 * stor4 / 10000 < sub_8e96ad4f[address(arg1)].field_0:
            if sub_8e96ad4f[address(arg1)].field_256 > sub_8e96ad4f[address(arg1)].field_512 * stor4 / 10000:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((sub_8e96ad4f[address(arg1)].field_512 * stor4 / 10000) - sub_8e96ad4f[address(arg1)].field_256)
    if sub_8e96ad4f[address(arg1)].field_256 > sub_8e96ad4f[address(arg1)].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_8e96ad4f[address(arg1)].field_0 - sub_8e96ad4f[address(arg1)].field_256)
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(stor2[msg.sender]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x73596f75206861766520746f20626520612072656769737465726564206164647265737320696e206f7264657220746f2072656c6561736520746f6b656e73,
                    mem[227 len 1]
    if bool(sub_8e96ad4f[address(msg.sender)].field_768) == 1:
        if 0 < arg1:
            revert with 0, 'insufficient avalible balance'
    else:
        if not stor4:
            if 0 < sub_8e96ad4f[address(msg.sender)].field_0:
                if sub_8e96ad4f[address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -sub_8e96ad4f[address(msg.sender)].field_256 < arg1:
                    revert with 0, 'insufficient avalible balance'
            else:
                if sub_8e96ad4f[address(msg.sender)].field_256 > sub_8e96ad4f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8e96ad4f[address(msg.sender)].field_0 - sub_8e96ad4f[address(msg.sender)].field_256 < arg1:
                    revert with 0, 'insufficient avalible balance'
        else:
            if sub_8e96ad4f[address(msg.sender)].field_512 * stor4 / stor4 != sub_8e96ad4f[address(msg.sender)].field_512:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if sub_8e96ad4f[address(msg.sender)].field_512 * stor4 / 10000 < sub_8e96ad4f[address(msg.sender)].field_0:
                if sub_8e96ad4f[address(msg.sender)].field_256 > sub_8e96ad4f[address(msg.sender)].field_512 * stor4 / 10000:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (sub_8e96ad4f[address(msg.sender)].field_512 * stor4 / 10000) - sub_8e96ad4f[address(msg.sender)].field_256 < arg1:
                    revert with 0, 'insufficient avalible balance'
            else:
                if sub_8e96ad4f[address(msg.sender)].field_256 > sub_8e96ad4f[address(msg.sender)].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_8e96ad4f[address(msg.sender)].field_0 - sub_8e96ad4f[address(msg.sender)].field_256 < arg1:
                    revert with 0, 'insufficient avalible balance'
    if arg1 + sub_8e96ad4f[address(msg.sender)].field_256 < sub_8e96ad4f[address(msg.sender)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    sub_8e96ad4f[address(msg.sender)].field_256 += arg1
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit TokensWithdrawal(msg.sender, arg1);
}



}
