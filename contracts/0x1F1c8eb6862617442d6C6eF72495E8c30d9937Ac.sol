contract main {




// =====================  Runtime code  =====================


#
#  - multisendToken(address arg1, address[] arg2, uint256[] arg3)
#
address upgradeabilityOwner;
array of uint256 version;
address implementationAddress;
mapping of uint256 arrayLimit;
mapping of address owner;
mapping of uint8 stor7;

function initialized() {
    return bool(stor7['rs_multisender_initialized'])
}

function version() {
    return version[0 len version.length]
}

function implementation() {
    return implementationAddress
}

function upgradeabilityOwner() {
    return upgradeabilityOwner
}

function owner() {
    return owner['owner']
}

function arrayLimit() {
    return arrayLimit[Mask(80, 96, 'arrayLimit') >> 96]
}

function txCount(address arg1) {
    return arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]
}

function fee() {
    return arrayLimit['fee']
}

function pendingOwner() {
    return owner['pendingOwner']
}

function discountStep() {
    return arrayLimit['discountStep']
}

function _fallback() payable {
  stop
}

function setFee(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['fee'] = arg1
}

function setArrayLimit(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['arrayLimit'] = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner['owner']
    require arg1
    owner['pendingOwner'] = arg1
}

function setDiscountStep(uint256 arg1) {
    require msg.sender == owner['owner']
    require arg1
    arrayLimit['discountStep'] = arg1
}

function claimOwnership() {
    require msg.sender == owner['pendingOwner']
    emit OwnershipTransferred(owner['owner'], owner['pendingOwner']);
    owner['owner'] = owner['pendingOwner']
    owner['pendingOwner'] = 0
}

function initialize(address arg1) {
    require not stor7['rs_multisender_initialized']
    emit OwnershipTransferred(owner['owner'], arg1);
    owner['owner'] = arg1
    require msg.sender == owner['owner']
    arrayLimit['arrayLimit'] = 200
    require msg.sender == owner['owner']
    arrayLimit['discountStep'] = 5 * 10^13
    require msg.sender == owner['owner']
    arrayLimit['fee'] = 5 * 10^16
    stor7['rs_multisender_initialized'] = 1
}

function discountRate(address arg1) {
    if not arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]:
        return 0
    require arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]
    require arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'] / arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] == arrayLimit['discountStep']
    return (arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'])
}

function claimTokens(address arg1) {
    require msg.sender == owner['owner']
    if not arg1:
        call owner['owner'] with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        call arg1.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner['owner'], ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(address(arg1), owner['owner'], ext_call.return_data[0]);
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    s = msg.value
    while idx < arg1.length:
        require idx < arg2.length
        require s >= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= s
        require idx < arg1.length
        require idx < arg2.length
        call mem[(32 * idx) + 140 len 20] with:
           value mem[(32 * idx) + (32 * arg1.length) + 160] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = s - mem[(32 * idx) + (32 * arg1.length) + 160]
        continue 
    emit Multisended(msg.value, 48879);
}

function currentFee(address arg1) {
    if not arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, msg.sender, 0, 0) >> 80]:
        if arrayLimit['fee'] <= 0:
            return 0
        if not arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]:
            if 0 <= arrayLimit['fee']:
                return arrayLimit['fee']
        else:
            if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]:
                if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'] / arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] == arrayLimit['discountStep']:
                    if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'] <= arrayLimit['fee']:
                        return (arrayLimit['fee'] - (arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep']))
    else:
        if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, msg.sender, 0, 0) >> 80]:
            if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, msg.sender, 0, 0) >> 80] * arrayLimit['discountStep'] / arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, msg.sender, 0, 0) >> 80] == arrayLimit['discountStep']:
                if arrayLimit['fee'] <= arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, msg.sender, 0, 0) >> 80] * arrayLimit['discountStep']:
                    return 0
                if not arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]:
                    if 0 <= arrayLimit['fee']:
                        return arrayLimit['fee']
                else:
                    if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80]:
                        if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'] / arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] == arrayLimit['discountStep']:
                            if arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep'] <= arrayLimit['fee']:
                                return (arrayLimit['fee'] - (arrayLimit[0][Mask(176, 80, Mask(16, 200, 'txCount') >> 200, arg1, 0, 0) >> 80] * arrayLimit['discountStep']))
    revert
}



}
