contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
array of address stor2;

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    stor0 = arg1
}

function reset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    idx = 0
    while idx <= uint256(stor2[address(arg1)]):
        if idx >= uint256(stor2[address(arg1)]):
            revert with 'NH{q', 50
        stor1[address(stor2[address(arg1)][idx])][address(arg1)] = 0
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = arg1
        mem[32] = 2
        idx = idx + 1
        continue 
    uint256(stor2[address(arg1)]) = 0
    idx = 0
    while uint256(stor2[address(arg1)]) > idx:
        uint256(stor2[address(arg1)][idx]) = 0
        idx = idx + 1
        continue 
}

function reclaim(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'Caller is not owner'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function drop(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[address(msg.sender)][address(arg1)]:
        revert with 0, 'Already requested'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= 100 * 10^18
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, 100 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
    stor1[address(msg.sender)][address(arg1)] = 1
    uint256(stor2[address(arg1)])++
    address(stor2[address(arg1)][uint256(stor2[address(arg1)])]) = msg.sender
}



}
