contract main {




// =====================  Runtime code  =====================


#
#  - harvestTokens()
#  - harvestRefund()
#  - harvestAll()
#  - withdrawToken(address arg1, uint256 arg2)
#
address owner;
uint256 stor1;
address paymentTokenAddress;
address offeringTokenAddress;
uint256 startTime;
uint256 endTime;
uint256 raisingAmount;
uint256 offeringAmount;
uint256 sub_053f424d;
uint256 sub_3e581842;
address votingTokenAddress;
uint256 sub_f46cf319;
uint8 paused;
uint8 finalized; offset 8
uint256 stor12; offset 8
uint256 stor12;
uint256 totalAmount;
mapping of struct userInfo;
array of address addressList;

function sub_053f424d(?) payable {
    return sub_053f424d
}

function userInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userInfo[arg1].field_0, bool(userInfo[arg1].field_256), bool(userInfo[arg1].field_264)
}

function totalAmount() payable {
    return totalAmount
}

function paymentToken() payable {
    return paymentTokenAddress
}

function endTime() payable {
    return endTime
}

function sub_3e581842(?) payable {
    return sub_3e581842
}

function paused() payable {
    return bool(paused)
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function raisingAmount() payable {
    return raisingAmount
}

function votingToken() payable {
    return votingTokenAddress
}

function finalized() payable {
    return bool(finalized)
}

function offeringToken() payable {
    return offeringTokenAddress
}

function addressList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < addressList.length
    return addressList[arg1]
}

function offeringAmount() payable {
    return offeringAmount
}

function sub_f46cf319(?) payable {
    return sub_f46cf319
}

function getAddressListLength() payable {
    return addressList.length
}

function _fallback() payable {
    revert
}

function getVotingParams() payable {
    return sub_3e581842, votingTokenAddress, sub_f46cf319
}

function getParams() payable {
    return startTime, endTime, raisingAmount, offeringAmount, sub_053f424d, totalAmount, bool(paused), bool(finalized)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function togglePaused() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor12.field_0) = not bool(paused) or Mask(248, 8, uint256(stor12.field_0))
}

function finalize() payable {
    if owner != msg.sender:
        if endTime > -1209601:
            revert with 'NH{q', 17
        if block.timestamp <= endTime + (336 * 24 * 3600):
            revert with 0, 'not allowed'
    Mask(248, 0, stor12.field_8) = 1
}

function sub_11ecf1d5(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0, 'sale started'
    if totalAmount:
        revert with 0, 'sale started'
    sub_053f424d = arg1
}

function setRaisingAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0, 'sale started'
    if totalAmount:
        revert with 0, 'sale started'
    raisingAmount = arg1
}

function configureVotingToken(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3e581842 = arg1
    votingTokenAddress = arg2
    sub_f46cf319 = arg3
}

function getUserAllocation(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if userInfo[address(arg1)].field_0 and 10^12 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    return (10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getRefundingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        return 0
    if userInfo[address(arg1)].field_0 and 10^12 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    if raisingAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 > -1 / raisingAmount:
        revert with 'NH{q', 17
    if userInfo[address(arg1)].field_0 < raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6:
        revert with 'NH{q', 17
    return (userInfo[address(arg1)].field_0 - (raisingAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6))
}

function getOfferingAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalAmount <= raisingAmount:
        if userInfo[address(arg1)].field_0 and offeringAmount > -1 / userInfo[address(arg1)].field_0:
            revert with 'NH{q', 17
        if not raisingAmount:
            revert with 'NH{q', 18
        return (userInfo[address(arg1)].field_0 * offeringAmount / raisingAmount)
    if userInfo[address(arg1)].field_0 and 10^12 > -1 / userInfo[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not totalAmount:
        revert with 'NH{q', 18
    if offeringAmount and 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 > -1 / offeringAmount:
        revert with 'NH{q', 17
    return (offeringAmount * 10^12 * userInfo[address(arg1)].field_0 / totalAmount / 10^6 / 10^6)
}

function onTokenTransfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if paymentTokenAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'onTokenTransfer: not paymentToken'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'paused'
    if block.timestamp < startTime:
        revert with 0, 'sale not active'
    if block.timestamp > endTime:
        revert with 0, 'sale not active'
    if arg2 <= 0:
        revert with 0, 'need amount > 0'
    if sub_053f424d:
        if userInfo[address(arg1)].field_0 > -arg2 - 1:
            revert with 'NH{q', 17
        if userInfo[address(arg1)].field_0 + arg2 > sub_053f424d:
            revert with 0, 'over per user cap'
    if sub_3e581842 > 0:
        require ext_code.size(votingTokenAddress)
        if sub_f46cf319:
            staticcall votingTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args address(arg1), sub_f46cf319
        else:
            staticcall votingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_3e581842:
            revert with 0, 'under minimum locked'
    if not userInfo[address(arg1)].field_0:
        addressList.length++
        addressList[addressList.length] = arg1
    if userInfo[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    userInfo[address(arg1)].field_0 += arg2
    if totalAmount > -arg2 - 1:
        revert with 'NH{q', 17
    totalAmount += arg2
    emit Deposit(arg2, arg1);
    stor1 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(paymentTokenAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call paymentTokenAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if arg1 != 0:
        revert with 0, '_transferFrom: balance change does not match amount'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'paused'
    if block.timestamp < startTime:
        revert with 0, 'sale not active'
    if block.timestamp > endTime:
        revert with 0, 'sale not active'
    if arg1 <= 0:
        revert with 0, 'need amount > 0'
    if sub_053f424d:
        if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
            revert with 'NH{q', 17
        if userInfo[address(msg.sender)].field_0 + arg1 > sub_053f424d:
            revert with 0, 'over per user cap'
    if sub_3e581842 > 0:
        require ext_code.size(votingTokenAddress)
        if sub_f46cf319:
            staticcall votingTokenAddress.balanceOfAt(address arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args msg.sender, sub_f46cf319
        else:
            staticcall votingTokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < sub_3e581842:
            revert with 0, 'under minimum locked'
    if not userInfo[address(msg.sender)].field_0:
        addressList.length++
        addressList[addressList.length] = msg.sender
    if userInfo[address(msg.sender)].field_0 > -arg1 - 1:
        revert with 'NH{q', 17
    userInfo[address(msg.sender)].field_0 += arg1
    if totalAmount > -arg1 - 1:
        revert with 'NH{q', 17
    totalAmount += arg1
    emit Deposit(arg1, msg.sender);
    stor1 = 1
}



}
