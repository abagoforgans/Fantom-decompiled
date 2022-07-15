contract main {




// =====================  Runtime code  =====================


address owner;
address slaveAddress;
address stor2;

function owner() {
    return owner
}

function slave() {
    return slaveAddress
}

function _fallback() payable {
  stop
}

function run() {
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 5 * 10^18:
        require ext_code.size(stor2)
        staticcall stor2.0x70a08231 with:
                gas gas_remaining wei
               args slaveAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] >= 5 * 10^18:
            return 0
        if 10 * 10^18 < ext_call.return_data[0]:
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), -ext_call.return_data[0] + 10 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x2e1a7d4d with:
             gas gas_remaining wei
            args (-ext_call.return_data[0] + 10 * 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call slaveAddress with:
           value -ext_call.return_data[0] + 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        if 0 > ext_call.return_data[0] - 10000000000000000001:
            revert with 'NH{q', 17
        return (-ext_call.return_data[0] + 10 * 10^18)
    if 10 * 10^18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), -ext_call.return_data[0] + 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (-ext_call.return_data[0] + 10 * 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value -ext_call.return_data[0] + 10 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if 0 > ext_call.return_data[0] - 10000000000000000001:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args slaveAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] >= 5 * 10^18:
        if -ext_call.return_data[0] + 10 * 10^18 > -1:
            revert with 'NH{q', 17
        return (-ext_call.return_data[0] + 10 * 10^18)
    if 10 * 10^18 < ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), -ext_call.return_data[0] + 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (-ext_call.return_data[0] + 10 * 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call slaveAddress with:
       value -ext_call.return_data[0] + 10 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if -ext_call.return_data[0] + 10 * 10^18 > ext_call.return_data[0] - 10000000000000000001:
        revert with 'NH{q', 17
    return ((-2 * ext_call.return_data[0]) + 20 * 10^18)
}



}
