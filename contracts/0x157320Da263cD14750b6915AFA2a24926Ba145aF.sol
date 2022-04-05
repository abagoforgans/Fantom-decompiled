contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 962]




// =====================  Runtime code  =====================


function cosDegrees(uint256 arg1) payable {
    require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
    delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.cos(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args uint16(16384 * arg1 % 360 / 360)
    require delegate.return_code
    return delegate.return_data[0]
}

function sinDegrees(uint256 arg1) payable {
    require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
    delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.sin(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args uint16(16384 * arg1 % 360 / 360)
    require delegate.return_code
    return delegate.return_data[0]
}

function sinNanodegrees(uint256 arg1) payable {
    require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
    delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.sin(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args uint16(16384 * arg1 / 10^9 % 360 / 360)
    require delegate.return_code
    return delegate.return_data[0]
}

function cosNanodegrees(uint256 arg1) payable {
    require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
    delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.cos(uint16 rg1) with:
         gas gas_remaining - 710 wei
        args uint16(16384 * arg1 / 10^9 % 360 / 360)
    require delegate.return_code
    return delegate.return_data[0]
}

function sqrt(int256 arg1) payable {
    if arg1 >= 0:
        s = arg1 + 1 / 2
        t = arg1
        while s < t:
            require s
            s = (arg1 / s) + s / 2
            t = s
            continue 
    else:
        s = -arg1 + 1 / 2
        t = -arg1
        while s < t:
            require s
            s = (-arg1 / s) + s / 2
            t = s
            continue 
    return t
}

function _fallback() payable {
    if unknown_0x3148cf6b(?????) == uint32(call.func_hash):
        require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
        delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.sin(uint16 rg1) with:
             gas gas_remaining - 710 wei
            args uint16(16384 * arg1 / 10^9 % 360 / 360)
        require delegate.return_code
        return delegate.return_data[0]
    if unknown_0x4468e9f0(?????) == uint32(call.func_hash):
        require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
        delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.cos(uint16 rg1) with:
             gas gas_remaining - 710 wei
            args uint16(16384 * arg1 / 10^9 % 360 / 360)
        require delegate.return_code
        return delegate.return_data[0]
    if unknown_0x53f09688(?????) == uint32(call.func_hash):
        require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
        delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.cos(uint16 rg1) with:
             gas gas_remaining - 710 wei
            args uint16(16384 * arg1 % 360 / 360)
        require delegate.return_code
        return delegate.return_data[0]
    if unknown_0x5a31f870(?????) == uint32(call.func_hash):
        require ext_code.size(0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2)
        delegate 0x23e25843e09a1c2347fb2a27121b6ddbb3b3dae2.sin(uint16 rg1) with:
             gas gas_remaining - 710 wei
            args uint16(16384 * arg1 % 360 / 360)
        require delegate.return_code
        return delegate.return_data[0]
    require unknown_0x665df460(?????) == uint32(call.func_hash)
    if arg1 >= 0:
        s = arg1 + 1 / 2
        t = arg1
        while s < t:
            require s
            s = (arg1 / s) + s / 2
            t = s
            continue 
    else:
        s = -arg1 + 1 / 2
        t = -arg1
        while s < t:
            require s
            s = (-arg1 / s) + s / 2
            t = s
            continue 
    return t
}



}
