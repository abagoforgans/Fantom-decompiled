contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function getTotalWeight() payable {
    require ext_code.size(stor0)
    staticcall stor0.0x30fa9929 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x3d0317fe with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (2 * ext_call.return_data[0])
}

function sub_68339357(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    staticcall stor0.0x63321e27 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        staticcall stor0.stakers(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 320
        if not ext_call.return_data[96]:
            if not ext_call.return_data[0]:
                if ext_call.return_data[300 len 20] == arg1:
                    return (ext_call.return_data[224] + ext_call.return_data[160])
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_a4817321(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor0)
    staticcall stor0.0x63321e27 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor0)
        staticcall stor0.stakers(uint256 rg1) with:
                gas gas_remaining wei
               args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 320
        if not ext_call.return_data[96]:
            if not ext_call.return_data[0]:
                if ext_call.return_data[300 len 20] == arg2:
                    if arg1 == arg2:
                        return ext_call.return_data[160]
                    require ext_code.size(stor0)
                    staticcall stor0.0x223fae09 with:
                            gas gas_remaining wei
                           args address(arg1), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 224
                    if not ext_call.return_data[64]:
                        return ext_call.return_data[128]
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
