contract main {




// =====================  Runtime code  =====================


array of address stor0;
address sub_868403e7Address;

function sub_868403e7(?) {
    return sub_868403e7Address
}

function _fallback() {
  stop
}

function sub_b4af33f2(?) payable {
    call 0x57de25acdacf47561a42fde79d56f392be732770 with:
       value 50 * 10^18 wei
         gas 0 wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isClaimer(address arg1) {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if arg1 != stor0[idx]:
            idx = idx + 1
            continue 
        return 1
    return 0
}

function claim() payable {
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            idx = idx + 1
            continue 
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx] != msg.sender:
            idx = idx + 1
            continue 
        require ext_code.size(sub_868403e7Address)
        call sub_868403e7Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 100 * 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    stor0.length++
    stor0[stor0.length] = msg.sender
    require ext_code.size(sub_868403e7Address)
    call sub_868403e7Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
