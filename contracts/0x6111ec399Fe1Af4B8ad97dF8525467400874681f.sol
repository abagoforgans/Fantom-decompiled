contract main {




// =====================  Runtime code  =====================


#
#  - sub_33603d7a(?)
#  - recoverWrongTokens(address arg1, uint256 arg2)
#  - sub_65ac5b7b(?)
#  - cancelBattle()
#  - withdrawPrizePool()
#
const BURN_ADDRESS = 57005


uint8 paused;
uint256 stor1;
address owner;
mapping of struct sub_4770b4f9;
array of address sub_687f2dc1;
uint256 _burnFee;
uint256 _marketingFee;
uint256 marketingFees;
uint256 prizePool;
uint256 burnedAmount;
uint256 sub_195bc697;
uint256 _cancelFee;
address sub_439cf6ddAddress;

function sub_195bc697(?) {
    return sub_195bc697
}

function _marketingFee() {
    return _marketingFee
}

function _cancelFee() {
    return _cancelFee
}

function marketingFees() {
    return marketingFees
}

function sub_439cf6dd(?) {
    return sub_439cf6ddAddress
}

function sub_4770b4f9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4770b4f9[arg1].field_0, 
           sub_4770b4f9[arg1].field_256,
           sub_4770b4f9[arg1].field_512,
           sub_4770b4f9[arg1].field_768,
           sub_4770b4f9[arg1].field_1024
}

function burnedAmount() {
    return burnedAmount
}

function paused() {
    return bool(paused)
}

function countBattles() {
    return sub_687f2dc1.length
}

function sub_687f2dc1(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < sub_687f2dc1.length
    return sub_687f2dc1[arg1]
}

function prizePool() {
    return prizePool
}

function owner() {
    return owner
}

function _burnFee() {
    return _burnFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setBurnFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey chef! don't be greedy, max 5%'
    _burnFee = arg1
    emit NewBurnFee(_burnFee);
    stor1 = 1
}

function setPrizeFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 500:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey chef! don't be greedy, max 5%'
    sub_195bc697 = arg1
    emit NewPrizeFee(sub_195bc697);
    stor1 = 1
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 1000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'hey chef! don't be greedy, max 10%'
    _marketingFee = arg1
    emit NewMarketingFee(_marketingFee);
    stor1 = 1
}

function sub_e44e7936(?) {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(sub_439cf6ddAddress)
    staticcall sub_439cf6ddAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= prizePool:
        revert with 0, 'We dont have PTLKX to withdraw'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(sub_439cf6ddAddress)
    staticcall sub_439cf6ddAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < prizePool:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
    mem[(2 * ceil32(return_data.size)) + 164] = ext_call.return_data[0] - prizePool
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = transfer(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeBEP20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if ext_code.size(sub_439cf6ddAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - prizePool, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call sub_439cf6ddAddress with:
       funct Mask(32, 224, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - prizePool, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, transfer(address arg1, uint256 arg2), msg.sender, ext_call.return_data[0] - prizePool, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0] > 0:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeBEP20: low-level call failed'
        if ext_call.return_data[0] > 0:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeBEP20: BEP20 operation did not succeed'
    emit 0xaceb7d6b: (ext_call.return_data[0] - prizePool)
    stor1 = 1
}



}
