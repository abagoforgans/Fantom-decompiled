contract main {




// =====================  Runtime code  =====================


address farmAddress;

function farm() payable {
    return farmAddress
}

function _fallback() payable {
    revert
}

function earn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(farmAddress)
    staticcall farmAddress.poolInfo(uint256 rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).earn() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ef75a608(?) payable {
    require calldata.size - 4 >= 32
    idx = 1
    while idx <= arg1:
        require ext_code.size(farmAddress)
        staticcall farmAddress.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[96] = 0xd389800f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).earn() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_a8474e6c(?) payable {
    require calldata.size - 4 >= 64
    idx = arg1
    while idx <= arg2:
        require ext_code.size(farmAddress)
        staticcall farmAddress.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[96] = 0xd389800f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).earn() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function earnAll() payable {
    require ext_code.size(farmAddress)
    staticcall farmAddress.poolLength() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 1
    while idx < ext_call.return_data[0]:
        require ext_code.size(farmAddress)
        staticcall farmAddress.poolInfo(uint256 rg1) with:
                gas gas_remaining wei
               args idx
        mem[96 len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        mem[96] = 0xd389800f00000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).earn() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
