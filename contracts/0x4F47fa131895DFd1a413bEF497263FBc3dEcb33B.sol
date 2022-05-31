contract main {




// =====================  Runtime code  =====================


#
#  - sub_06690ccb(?)
#
const sub_86782813(?) = (720 * 24 * 3600)


address owner;
address sub_593a48c1Address;
uint256 lastClaimedTime;
uint256 claimedAmount;
uint256 startTime;

function lastClaimedTime() payable {
    return lastClaimedTime
}

function sub_593a48c1(?) payable {
    return sub_593a48c1Address
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function claimedAmount() payable {
    return claimedAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function balance() payable {
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function fundBalance() payable {
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pending() payable {
    if block.timestamp <= lastClaimedTime:
        return 0
    if block.timestamp < lastClaimedTime:
        revert with 0, 17
    if block.timestamp - lastClaimedTime > 0x577aab490a9f615df17a652daf74f2ab2a2fce3d7973d4786c:
        revert with 0, 17
    return ((210870116692034500 * block.timestamp) - (210870116692034500 * lastClaimedTime))
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_593a48c1Address)
    staticcall sub_593a48c1Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_593a48c1Address)
    if ext_call.return_data[0] >= arg2:
        call sub_593a48c1Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call sub_593a48c1Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function claim() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp > lastClaimedTime:
        if block.timestamp < lastClaimedTime:
            revert with 0, 17
        if block.timestamp - lastClaimedTime > 0x577aab490a9f615df17a652daf74f2ab2a2fce3d7973d4786c:
            revert with 0, 17
        if (210870116692034500 * block.timestamp) - (210870116692034500 * lastClaimedTime):
            require ext_code.size(sub_593a48c1Address)
            call sub_593a48c1Address.0xb4f56b26 with:
                 gas gas_remaining wei
                args this.address, (210870116692034500 * block.timestamp) - (210870116692034500 * lastClaimedTime)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if claimedAmount > !((210870116692034500 * block.timestamp) - (210870116692034500 * lastClaimedTime)):
                revert with 0, 17
            claimedAmount = claimedAmount + (210870116692034500 * block.timestamp) - (210870116692034500 * lastClaimedTime)
            lastClaimedTime = block.timestamp
}



}
