contract main {




// =====================  Runtime code  =====================


const available = eth.balance(this.address)


address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 sub_a9ee7825;
mapping of uint256 sub_2322444f;
array of address user;

function totalAllocPoints() {
    return totalShares
}

function sub_2322444f(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= user.length:
        revert with 'NH{q', 50
    return sub_2322444f[stor5[arg1]]
}

function totalShares() {
    return totalShares
}

function owner() {
    return owner
}

function userAddress(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= user.length:
        revert with 'NH{q', 50
    return user[arg1]
}

function sub_a9ee7825(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= user.length:
        revert with 'NH{q', 50
    return sub_a9ee7825[stor5[arg1]]
}

function totalReleased() {
    return totalReleased
}

function _fallback() payable {
    revert
}

function sub_9b1d9980(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 / 10^18)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_5cd23fca(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^17 > -1 / arg1:
        revert with 'NH{q', 17
    return (10^17 * arg1)
}

function sub_cf94ee96(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 and 10^18 > -1 / arg1:
        revert with 'NH{q', 17
    return (10^18 * arg1)
}

function refill() payable {
    call this.address with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'TransferHelper: FTM_TRANSFER_FAILED'
    emit PaymentReceived(msg.sender, msg.value);
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

function sub_24fb413c(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= user.length:
        revert with 'NH{q', 50
    if sub_a9ee7825[stor5[arg1]] < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'updateAllocation: user does not exist'
    if totalShares < sub_a9ee7825[stor5[arg1]]:
        revert with 'NH{q', 17
    totalShares -= sub_a9ee7825[stor5[arg1]]
    sub_a9ee7825[stor5[arg1]] = arg2
    if totalShares > -arg2 - 1:
        revert with 'NH{q', 17
    totalShares += arg2
    emit 0xe2175d2f: arg1, user[arg1], arg2
}

function addUser(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addUser: account is the zero address'
    if arg2 <= 0:
        revert with 0, 'addUser: allocation are 0'
    if sub_a9ee7825[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'addUser: account already has allocation'
    user.length++
    user[user.length] = arg1
    sub_a9ee7825[address(arg1)] = arg2
    if totalShares > -arg2 - 1:
        revert with 'NH{q', 17
    totalShares += arg2
    emit 0x25ddd06f: address(arg1), arg2
}

function sub_d17106e9(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= user.length:
        revert with 'NH{q', 50
    if sub_a9ee7825[stor5[arg1]] < 0:
        revert with 0, 'userBalance: user does not exist'
    if eth.balance(this.address) > -totalReleased - 1:
        revert with 'NH{q', 17
    if sub_a9ee7825[stor5[arg1]] and 10^18 > -1 / sub_a9ee7825[stor5[arg1]]:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (10^18 * eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (10^18 * totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares / 10^18 < sub_2322444f[stor5[arg1]]:
        revert with 'NH{q', 17
    return (((10^18 * eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (10^18 * totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares / 10^18) - sub_2322444f[stor5[arg1]])
}

function release(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= user.length:
        revert with 'NH{q', 50
    if sub_a9ee7825[stor5[arg1]] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'release: account has no allocation'
    if eth.balance(this.address) > -totalReleased - 1:
        revert with 'NH{q', 17
    if eth.balance(this.address) + totalReleased and sub_a9ee7825[stor5[arg1]] > -1 / eth.balance(this.address) + totalReleased:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if (eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares < sub_2322444f[stor5[arg1]]:
        revert with 'NH{q', 17
    if not ((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) - sub_2322444f[stor5[arg1]]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'release: account is not due payment'
    if sub_2322444f[stor5[arg1]] > -((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) + sub_2322444f[stor5[arg1]] - 1:
        revert with 'NH{q', 17
    sub_2322444f[stor5[arg1]] = (eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares
    if totalReleased > -((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) + sub_2322444f[stor5[arg1]] - 1:
        revert with 'NH{q', 17
    totalReleased = totalReleased + ((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) - sub_2322444f[stor5[arg1]]
    if eth.balance(this.address) < ((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) - sub_2322444f[stor5[arg1]]:
        revert with 0, 'Address: insufficient balance'
    call user[arg1] with:
       value ((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) - sub_2322444f[stor5[arg1]] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(user[arg1], ((eth.balance(this.address) * sub_a9ee7825[stor5[arg1]]) + (totalReleased * sub_a9ee7825[stor5[arg1]]) / totalShares) - sub_2322444f[stor5[arg1]]);
}



}
