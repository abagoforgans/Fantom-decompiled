contract main {




// =====================  Runtime code  =====================


const BURN_ADDRESS = 57005


address owner;
uint256 stor1;
address sub_a341c80fAddress;
address sub_bfcaaf7aAddress;
uint256 startTime;
uint8 stor5;

function hasBurnedUnsoldPresale() payable {
    return bool(stor5)
}

function owner() payable {
    return owner
}

function sub_a341c80f(?) payable {
    return sub_a341c80fAddress
}

function sub_bfcaaf7a(?) payable {
    return sub_bfcaaf7aAddress
}

function StartTime() payable {
    return startTime
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

function setStartBlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp >= startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'cannot change start time if sale has already commenced'
    if block.timestamp >= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cannot set start time in the past'
    startTime = arg1
    emit 0x5f1be006: arg1
}

function sub_eaa948c6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if block.timestamp < startTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'max redemption hasn't started yet, good things come to those that wait ;)'
    require ext_code.size(sub_bfcaaf7aAddress)
    staticcall sub_bfcaaf7aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'Not Enough tokens in contract for swap'
    require ext_code.size(sub_a341c80fAddress)
    call sub_a341c80fAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, 57005, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_bfcaaf7aAddress)
    call sub_bfcaaf7aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit 0xb1eb5068: msg.sender, arg1
    stor1 = 1
}

function sub_a53a3fbd(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_a341c80fAddress)
    staticcall sub_a341c80fAddress.0x33360978 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if block.timestamp <= ext_call.return_data[0]:
        revert with 0, 'can only send excess max to dead address after presale has ended'
    if stor5:
        revert with 0, 'can only burn unsold presale once!'
    require ext_code.size(sub_bfcaaf7aAddress)
    staticcall sub_bfcaaf7aAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_a341c80fAddress)
    staticcall sub_a341c80fAddress.0x2bc8d20e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'burning too much Max, founders may need to top up'
    require ext_code.size(sub_a341c80fAddress)
    staticcall sub_a341c80fAddress.0x2bc8d20e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(sub_a341c80fAddress)
        staticcall sub_a341c80fAddress.0x2bc8d20e with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        require ext_code.size(sub_bfcaaf7aAddress)
        call sub_bfcaaf7aAddress.0xa9059cbb with:
             gas gas_remaining wei
            args 57005, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor5 = 1
    require ext_code.size(sub_a341c80fAddress)
    staticcall sub_a341c80fAddress.0x2bc8d20e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    emit 0xa797e3c8: ext_call.return_data[0]
}



}
