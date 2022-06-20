contract main {




// =====================  Runtime code  =====================


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
    return arrayLimit['arrayLimit']
}

function txCount(address arg1) {
    return arrayLimit['txCount'][arg1]
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

function discountRate(address arg1) {
    if not arrayLimit['txCount'][arg1]:
        return 0
    require arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']
    return (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1])
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

function currentFee(address arg1) {
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            return 0
        if not arrayLimit['txCount'][arg1]:
            if 0 <= arrayLimit['fee']:
                return arrayLimit['fee']
        else:
            if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] <= arrayLimit['fee']:
                    return (arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1]))
    else:
        if arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']:
            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                return 0
            if not arrayLimit['txCount'][arg1]:
                if 0 <= arrayLimit['fee']:
                    return arrayLimit['fee']
            else:
                if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] / arrayLimit['txCount'][arg1] == arrayLimit['discountStep']:
                    if arrayLimit['discountStep'] * arrayLimit['txCount'][arg1] <= arrayLimit['fee']:
                        return (arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][arg1]))
    revert
}

function multisendEther(address[] arg1, uint256[] arg2) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            require msg.value >= 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
            require arg1.length <= arrayLimit['arrayLimit']
            require 0 <= msg.value
            idx = 0
            s = msg.value
            while idx < arg1.length:
                require idx < arg2.length
                require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                require idx < arg2.length
                require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee']
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee']
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
    else:
        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
            require msg.value >= 0
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
            require arg1.length <= arrayLimit['arrayLimit']
            require 0 <= msg.value
            idx = 0
            s = msg.value
            while idx < arg1.length:
                require idx < arg2.length
                require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                require idx < arg2.length
                require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                require idx < arg1.length
                require idx < arg2.length
                call mem[(32 * idx) + 140 len 20] with:
                   value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                idx = idx + 1
                s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                continue 
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee']
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee']
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 'arrayLimit'
                require arg1.length <= arrayLimit['arrayLimit']
                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                idx = 0
                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                while idx < arg1.length:
                    require idx < arg2.length
                    require s >= mem[(32 * arg1.length) + (32 * idx) + 160]
                    require idx < arg2.length
                    require mem[(32 * arg1.length) + (32 * idx) + 160] <= s
                    require idx < arg1.length
                    require idx < arg2.length
                    call mem[(32 * idx) + 140 len 20] with:
                       value mem[(32 * arg1.length) + (32 * idx) + 160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    idx = idx + 1
                    s = s - mem[(32 * arg1.length) + (32 * idx) + 160]
                    continue 
    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
    arrayLimit['txCount'][msg.sender]++
    emit Multisended(msg.value, 48879);
}

function multisendToken(address arg1, address[] arg2, uint256[] arg3) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
    if not arrayLimit['txCount'][msg.sender]:
        if arrayLimit['fee'] <= 0:
            if arg1 != 48879:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= arrayLimit['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _7897 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _8568 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7897)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8568
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_7897), _8568
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                    continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(_9048 * None, arg1);
            else:
                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                if not arrayLimit['txCount'][msg.sender]:
                    if arrayLimit['fee'] <= 0:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                else:
                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(msg.value, 48879);
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _8185 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _8640 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8185)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8640
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_8185), _8640
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_9104 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _8329 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8676 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8329)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8676
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_8329), _8676
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9132 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8401 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8694 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8401)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8694
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8401), _8694
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9146 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8365 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8685 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8365)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8685
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8365), _8685
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9139 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                    else:
                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _8221 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8649 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8221)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8649
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_8221), _8649
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9111 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8293 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8667 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8293)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8667
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8293), _8667
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9125 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8257 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8658 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8257)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8658
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8257), _8658
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9118 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _7933 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _8577 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7933)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8577
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_7933), _8577
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_9055 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _8077 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8613 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8077)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8613
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_8077), _8613
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9083 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8149 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8631 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8149)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8631
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8149), _8631
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9097 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8113 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8622 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8113)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8622
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8113), _8622
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9090 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                    else:
                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _7969 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8586 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7969)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8586
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_7969), _8586
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9062 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8041 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8604 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8041)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8604
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8041), _8604
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9076 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _8005 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8595 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_8005)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8595
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_8005), _8595
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9069 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
    else:
        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
            if arg1 != 48879:
                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                require arg2.length <= arrayLimit['arrayLimit']
                idx = 0
                s = 0
                while uint8(idx) < arg2.length:
                    require uint8(idx) < arg2.length
                    _7357 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx) < arg3.length
                    _8433 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7357)
                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8433
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(_7357), _8433
                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require uint8(idx) < arg3.length
                    idx = idx + 1
                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                    continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(_8943 * None, arg1);
            else:
                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                if not arrayLimit['txCount'][msg.sender]:
                    if arrayLimit['fee'] <= 0:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                else:
                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                        require msg.value >= 0
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        require 0 <= msg.value
                        idx = 0
                        s = msg.value
                        while idx < arg2.length:
                            require idx < arg3.length
                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                            require idx < arg3.length
                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                            require idx < arg2.length
                            require idx < arg3.length
                            call mem[(32 * idx) + 140 len 20] with:
                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                            continue 
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            require 0 <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee']
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee']
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                            require arg2.length <= arrayLimit['arrayLimit']
                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                            idx = 0
                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                            while idx < arg2.length:
                                require idx < arg3.length
                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                require idx < arg3.length
                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                require idx < arg2.length
                                require idx < arg3.length
                                call mem[(32 * idx) + 140 len 20] with:
                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                continue 
                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                arrayLimit['txCount'][msg.sender]++
                emit Multisended(msg.value, 48879);
        else:
            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
            if not arrayLimit['txCount'][msg.sender]:
                require 0 <= arrayLimit['fee']
                if arrayLimit['fee'] <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _7645 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _8505 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7645)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8505
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_7645), _8505
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_8999 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _7789 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8541 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7789)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8541
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_7789), _8541
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9027 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7861 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8559 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7861)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8559
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7861), _8559
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9041 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7825 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8550 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7825)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8550
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7825), _8550
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9034 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                    else:
                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _7681 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8514 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7681)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8514
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_7681), _8514
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_9006 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7753 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8532 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7753)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8532
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7753), _8532
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9020 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7717 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8523 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7717)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8523
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7717), _8523
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_9013 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
            else:
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                if arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= 0:
                    if arg1 != 48879:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                        require arg2.length <= arrayLimit['arrayLimit']
                        idx = 0
                        s = 0
                        while uint8(idx) < arg2.length:
                            require uint8(idx) < arg2.length
                            _7393 = mem[(32 * uint8(idx)) + 128]
                            require uint8(idx) < arg3.length
                            _8442 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                            mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                            mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7393)
                            mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8442
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(_7393), _8442
                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require uint8(idx) < arg3.length
                            idx = idx + 1
                            s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                            continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(_8950 * None, arg1);
                    else:
                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                        if not arrayLimit['txCount'][msg.sender]:
                            if arrayLimit['fee'] <= 0:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        else:
                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                            if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                require msg.value >= 0
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                require 0 <= msg.value
                                idx = 0
                                s = msg.value
                                while idx < arg2.length:
                                    require idx < arg3.length
                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                    require idx < arg3.length
                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                    require idx < arg2.length
                                    require idx < arg3.length
                                    call mem[(32 * idx) + 140 len 20] with:
                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                    continue 
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    require 0 <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee']
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee']
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                    require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                    idx = 0
                                    s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                    while idx < arg2.length:
                                        require idx < arg3.length
                                        require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                        require idx < arg3.length
                                        require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                        require idx < arg2.length
                                        require idx < arg3.length
                                        call mem[(32 * idx) + 140 len 20] with:
                                           value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        idx = idx + 1
                                        s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                        continue 
                        require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                        arrayLimit['txCount'][msg.sender]++
                        emit Multisended(msg.value, 48879);
                else:
                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                    if not arrayLimit['txCount'][msg.sender]:
                        if arrayLimit['fee'] <= 0:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _7537 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8478 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7537)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8478
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_7537), _8478
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_8978 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7609 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8496 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7609)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8496
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7609), _8496
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_8992 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7573 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8487 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7573)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8487
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7573), _8487
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_8985 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                    else:
                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                            require msg.value >= 0
                            if arg1 != 48879:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                require arg2.length <= arrayLimit['arrayLimit']
                                idx = 0
                                s = 0
                                while uint8(idx) < arg2.length:
                                    require uint8(idx) < arg2.length
                                    _7429 = mem[(32 * uint8(idx)) + 128]
                                    require uint8(idx) < arg3.length
                                    _8451 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7429)
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8451
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(_7429), _8451
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require uint8(idx) < arg3.length
                                    idx = idx + 1
                                    s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                    continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(_8957 * None, arg1);
                            else:
                                mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                if not arrayLimit['txCount'][msg.sender]:
                                    if arrayLimit['fee'] <= 0:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                else:
                                    require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                    if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                        require msg.value >= 0
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                        require arg2.length <= arrayLimit['arrayLimit']
                                        require 0 <= msg.value
                                        idx = 0
                                        s = msg.value
                                        while idx < arg2.length:
                                            require idx < arg3.length
                                            require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                            require idx < arg3.length
                                            require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                            require idx < arg2.length
                                            require idx < arg3.length
                                            call mem[(32 * idx) + 140 len 20] with:
                                               value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            idx = idx + 1
                                            s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                            continue 
                                    else:
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                        if not arrayLimit['txCount'][msg.sender]:
                                            require 0 <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee']
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee']
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                            require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                            require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                            idx = 0
                                            s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                arrayLimit['txCount'][msg.sender]++
                                emit Multisended(msg.value, 48879);
                        else:
                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                            if not arrayLimit['txCount'][msg.sender]:
                                require 0 <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee']
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7501 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8469 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7501)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8469
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7501), _8469
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_8971 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
                            else:
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                if arg1 != 48879:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                    require arg2.length <= arrayLimit['arrayLimit']
                                    idx = 0
                                    s = 0
                                    while uint8(idx) < arg2.length:
                                        require uint8(idx) < arg2.length
                                        _7465 = mem[(32 * uint8(idx)) + 128]
                                        require uint8(idx) < arg3.length
                                        _8460 = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160]
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 164] = msg.sender
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 196] = address(_7465)
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 228] = _8460
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, address(_7465), _8460
                                        mem[(32 * arg3.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require uint8(idx) < arg3.length
                                        idx = idx + 1
                                        s = mem[(32 * arg2.length) + (32 * uint8(idx)) + 160] + s
                                        continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(_8964 * None, arg1);
                                else:
                                    mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                    if not arrayLimit['txCount'][msg.sender]:
                                        if arrayLimit['fee'] <= 0:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    else:
                                        require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                        if arrayLimit['fee'] <= arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]:
                                            require msg.value >= 0
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                            require arg2.length <= arrayLimit['arrayLimit']
                                            require 0 <= msg.value
                                            idx = 0
                                            s = msg.value
                                            while idx < arg2.length:
                                                require idx < arg3.length
                                                require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                require idx < arg3.length
                                                require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                require idx < arg2.length
                                                require idx < arg3.length
                                                call mem[(32 * idx) + 140 len 20] with:
                                                   value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                idx = idx + 1
                                                s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                continue 
                                        else:
                                            mem[(32 * arg3.length) + (32 * arg2.length) + 167] = address(msg.sender)
                                            if not arrayLimit['txCount'][msg.sender]:
                                                require 0 <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee']
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee']
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                            else:
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] / arrayLimit['txCount'][msg.sender] == arrayLimit['discountStep']
                                                require arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender] <= arrayLimit['fee']
                                                require msg.value >= arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender])
                                                mem[(32 * arg3.length) + (32 * arg2.length) + 160] = 'arrayLimit'
                                                require arg2.length <= arrayLimit['arrayLimit']
                                                require arrayLimit['fee'] - (arrayLimit['discountStep'] * arrayLimit['txCount'][msg.sender]) <= msg.value
                                                idx = 0
                                                s = msg.value - arrayLimit['fee'] + (arrayLimit['discountStep'] * arrayLimit['txCount'][address(msg.sender)])
                                                while idx < arg2.length:
                                                    require idx < arg3.length
                                                    require s >= mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    require idx < arg3.length
                                                    require mem[(32 * arg2.length) + (32 * idx) + 160] <= s
                                                    require idx < arg2.length
                                                    require idx < arg3.length
                                                    call mem[(32 * idx) + 140 len 20] with:
                                                       value mem[(32 * arg2.length) + (32 * idx) + 160] wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    idx = idx + 1
                                                    s = s - mem[(32 * arg2.length) + (32 * idx) + 160]
                                                    continue 
                                    require arrayLimit['txCount'][msg.sender] + 1 >= arrayLimit['txCount'][msg.sender]
                                    arrayLimit['txCount'][msg.sender]++
                                    emit Multisended(msg.value, 48879);
}



}
