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
    require msg.sender == owner
    if eth.balance(owner) >= 5 * 10^18:
        if eth.balance(slaveAddress) >= 5 * 10^18:
            return 0
        if 10 * 10^18 < eth.balance(slaveAddress):
            revert with 'NH{q', 17
        require ext_code.size(stor2)
        call stor2.0x23b872dd with:
             gas gas_remaining wei
            args owner, address(this.address), -eth.balance(slaveAddress) + 10 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor2)
        call stor2.0x2e1a7d4d with:
             gas gas_remaining wei
            args (-eth.balance(slaveAddress) + 10 * 10^18)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call slaveAddress with:
           value -eth.balance(slaveAddress) + 10 * 10^18 wei
             gas 2300 * is_zero(value) wei
        if 0 > eth.balance(slaveAddress) - 10000000000000000001:
            revert with 'NH{q', 17
        return (-eth.balance(slaveAddress) + 10 * 10^18)
    if 10 * 10^18 < eth.balance(owner):
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), -eth.balance(owner) + 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (-eth.balance(owner) + 10 * 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call owner with:
       value -eth.balance(owner) + 10 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if 0 > eth.balance(owner) - 10000000000000000001:
        revert with 'NH{q', 17
    if eth.balance(slaveAddress) >= 5 * 10^18:
        if -eth.balance(owner) + 10 * 10^18 > -1:
            revert with 'NH{q', 17
        return (-eth.balance(owner) + 10 * 10^18)
    if 10 * 10^18 < eth.balance(slaveAddress):
        revert with 'NH{q', 17
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args owner, address(this.address), -eth.balance(slaveAddress) + 10 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.0x2e1a7d4d with:
         gas gas_remaining wei
        args (-eth.balance(slaveAddress) + 10 * 10^18)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call slaveAddress with:
       value -eth.balance(slaveAddress) + 10 * 10^18 wei
         gas 2300 * is_zero(value) wei
    if -eth.balance(owner) + 10 * 10^18 > eth.balance(slaveAddress) - 10000000000000000001:
        revert with 'NH{q', 17
    return (-eth.balance(owner) + -eth.balance(slaveAddress) + 20 * 10^18)
}



}
